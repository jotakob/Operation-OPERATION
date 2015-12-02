using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class CamTest: MonoBehaviour
{
    public GameObject Henry;

	public Text showPressure;

	public bool doAnalysis;
    public bool useBalanceBoard = false;

	public WebCamTexture webcamTexture;
	public WebCamDevice[] devices;
	public Color pixel;

	public Color[] redLevels;
	public Color[] greenLevels;

	private int[] redPixelsIndex;
    private int[] greenPixelsIndex;

	private const int redHeight = 236;
	private const int redBottom = 165;

	private const int greenHeight = 117;
	private const int greenBottom = 46;

	private const int redLeft = 94;
	private const int greenLeft = 186;

	private List<float[]> pressureValues = new List<float[]>();
    private List<float> maximums = new List<float>();
    private List<float> minimums = new List<float>();
    private List<float> bpms = new List<float>();

    private Texture2D tooSoft;

	private string _SavePath = "D:/WebcamSnaps/";

	public float pressure;

	public Text playerFeedback;
	public GameObject CPRHands;
	bool handsDown;
	bool handsUp;

	public HandController handController;

	int _CaptureCounter = 0;

    void Start()
    {
		doAnalysis = false;
        if (!useBalanceBoard)
        {
            devices = WebCamTexture.devices;
            webcamTexture = new WebCamTexture();
            webcamTexture.deviceName = devices[0].name;
            webcamTexture.requestedWidth = 480;
            webcamTexture.requestedHeight = 640;
            webcamTexture.requestedFPS = 90;
            webcamTexture.Play();
        }
        else
        {
            gameObject.GetComponent<WiiBoardUDPClient>().Start();
        }

		handsDown = false;
		handsUp = true;

        StartCoroutine(analyzeCompression());
    }

	void Update()
    {
		if (Input.GetButtonDown("Jump"))
		{
			Debug.Log("oi");
			TakeSnapshot();
		}

        //if (webcamTexture.didUpdateThisFrame)
        if (!useBalanceBoard)
        {
            redLevels = webcamTexture.GetPixels(redLeft, redBottom, 1, redHeight);
            greenLevels = webcamTexture.GetPixels(greenLeft, greenBottom, 1, greenHeight);
            redPixelsIndex = new int[10];
            greenPixelsIndex = new int[10];
            int b = 0;

            for (int i = 0; i < redLevels.Length; i++)
            {
                if (redLevels[i].r > 0.75f * (redLevels[i].g + redLevels[i].b))
                {
                    redPixelsIndex[b] = i;
                    b++;
                    if (b >= 10) { break; }
                }
            }


            b = 0;

            for (int i = 0; i < greenLevels.Length; i++)
            {
                if (greenLevels[i].g > 0.75f * (greenLevels[i].r + greenLevels[i].b))
                {
                    greenPixelsIndex[b] = i;
                    b++;
                    if (b >= 10) { break; }
                }
            }

            float redLevel = redPixelsIndex[4];
            float greenLevel = greenPixelsIndex[4];


            pressure = 0.0f;

            if (greenLevel > 0)
            {
                pressure = (1 - greenLevel / greenLevels.Length) * 14 + 37;
            }
            else if (redLevel > 0)
            {
                pressure = (1 - redLevel / redLevels.Length) * 37.0f;
            }
            else
            {
                pressure = 0;
            }

            if (pressure <= 51)
            {
                pressureValues.Add(new float[] { pressure, Time.time });
                showPressure.text = "" + Mathf.Round(pressure);
            }
        }
        else
        {
            float weight = gameObject.GetComponent<WiiBoardUDPClient>().getWeight();
            pressure = weight;
            pressureValues.Add(new float[] { pressure, Time.time });
            showPressure.text = "" + Mathf.Round(pressure);
        }

        if (pressure > 5)
        {
            CPRHands.SetActive(true);
            handController.enabled = false;
            if (!handsDown)
            {
                StartCoroutine(animeCPRdownwards());
            }
        }
        else
        {
            if (handsDown)
            {
                StartCoroutine(animeCPRupwards());
            }
        }
    }

	IEnumerator animeCPRdownwards()
	{
		handsDown = true;
		handsUp = false;
		for (int i = 0; i < 11; i++) {
			CPRHands.transform.Translate(new Vector3(0.0f, -0.007f, 0.0f));
			yield return new WaitForEndOfFrame();
		}
	}

	IEnumerator animeCPRupwards()
	{
		handsDown = false;
		handsUp = true;
		for (int i = 0; i < 11; i++) {
			CPRHands.transform.Translate(new Vector3(0.0f, 0.007f, 0.0f));
			yield return new WaitForEndOfFrame();
		}

		yield return new WaitForSeconds (0.5f);
		if (pressure < 3) {
			CPRHands.SetActive (false);
			handController.enabled = true;
		}
	}

    IEnumerator analyzeCompression()
    {
        bool firstAnalysis = true;

        while (true)
        {
            
            if (doAnalysis)
            {
                if (firstAnalysis)
                {
                    pressureValues = new List<float[]>();
					firstAnalysis = false;
                }
                else
                {
                    Debug.Log("analyzing compression...");
                    yield return null;

                    List<float[]> singleAnalysis = pressureValues;
                    pressureValues = new List<float[]>();
                    float sum = 0f;
                    int count = 0;
                    for (count = 0; count < singleAnalysis.Count; count++)
                    {
                        sum += singleAnalysis[count][0];
                    }
                    float avg = sum / (count + 1f);
                    yield return null;

                    bool discardedFirst = false;
                    for (int i = 1; i < singleAnalysis.Count; i++)
                    {
                        if ((singleAnalysis[i][0] > avg) && (singleAnalysis[i-1][0] <= avg))
                        {
                            List<float[]> singleCompression = singleAnalysis.GetRange(0, i + 1);
                            if (discardedFirst)
                            {
                                string output = "";
                                foreach (float[] item in singleCompression)
                                {
                                    output += "[" + item[0] + ": " + item[1] + "],";
                                }
                                output += " -> " + singleCompression.Count;
                                Debug.Log(output);
                                yield return null;
                                analyzeSingleCompression(singleCompression);
                                yield return null;
                            }
							else
							{
								discardedFirst = true;
							}
                            singleAnalysis.RemoveRange(0, i + 1);
                        }

                    }
                }

                List<float>[] averages = new List<float>[] { minimums, maximums, bpms };

                foreach (List<float>  list in averages)
                {
                    if (list.Count > 12)
                    {
                        list.RemoveRange(0, list.Count - 12);
                    }
                }

	            float avgMin = 0;
	            foreach (float value in minimums)
	            {
	                avgMin += value;
	            }
	            avgMin = avgMin / minimums.Count;

	            float avgMax = 0;
	            foreach (float value in maximums)
	            {
	                avgMax += value;
	            }
	            avgMax = avgMax / maximums.Count;

	            float avgBPM = 0;
	            foreach (float value in bpms)
	            {
	                avgBPM += value;
	            }
	            avgBPM = avgBPM / bpms.Count;
	            yield return null;

	            string audioFile = "";
                if (avgBPM < 95)
                {
                    audioFile = "Faster2";
                }
                else if(avgBPM >120)
	            {
	                audioFile = "Slower2";
	            }
	            else if (avgMax < 40)
	            {
	                audioFile = "Pressure1";
	            }
	            else if (avgMin > 10)
	            {
	                audioFile = "FullyRelease";
                }

                if (audioFile != "")
	            {
	                AudioClip temp = Resources.Load("SoldierLines/" + audioFile) as AudioClip;
	                Henry.GetComponent<AudioSource>().clip = temp;
	                Henry.GetComponent<AudioSource>().Play();
	            }
			}
			yield return new WaitForSeconds(6f);
        }
    }

    void analyzeSingleCompression(List<float[]> compression)
    {
        float bpm = 60 / (compression[compression.Count-1][1] - compression[0][1]);
        float max = 0;
        float min = 52;
        foreach (float[] item in compression)
        {
            if (item[0] > max)
            {
                item[0] = max;
            }
            if (item[0] < min)
            {
                item[0] = min;
            }
        }
        minimums.Add(min);
        maximums.Add(max);
        bpms.Add(bpm);
    }

	void TakeSnapshot()
	{
		Texture2D snap = new Texture2D(webcamTexture.width, webcamTexture.height);
		snap.SetPixels(webcamTexture.GetPixels());
		snap.Apply();
		
		System.IO.File.WriteAllBytes(_SavePath + _CaptureCounter.ToString() + ".png", snap.EncodeToPNG());
		++_CaptureCounter;
	}
}