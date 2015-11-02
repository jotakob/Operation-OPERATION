using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine.UI;

public class CamTest: MonoBehaviour {

	public Text showPressure;

	public WebCamTexture webcamTexture;
	public WebCamDevice[] devices;
	public Color pixel;

	public Color[] redLevels;
	public Color[] greenLevels;

	public int[] redPixelsIndex;
	public int[] greenPixelsIndex;

	private const int redHeight = 236;
	private const int redBottom = 165;

	private const int greenHeight = 117;
	private const int greenBottom = 46;

	private const int redLeft = 94;
	private const int greenLeft = 186;

	private float lastPressure = 0.0f;
	private bool goingUp = false;
	private float compStartTime;
	private List<float> singleCompression = new List<float>();

    private float lastCamFrameTime = 0.0f;

	private Texture2D tooSoft;

	private string _SavePath = "D:/WebcamSnaps/";

	public float pressure;

	public GameObject CPRHands;
	bool handsDown;
	bool handsUp;

	public HandController handController;

	int _CaptureCounter = 0;

    void Start()
    {

        devices = WebCamTexture.devices;
        webcamTexture = new WebCamTexture();
        webcamTexture.Stop();
		webcamTexture.deviceName = devices [1].name;
        webcamTexture.requestedWidth = 480;
        webcamTexture.requestedHeight = 640;
        webcamTexture.requestedFPS = 90;
        webcamTexture.Play();

		handsDown = false;
		handsUp = true;

    }

	void Update() {

		if (pressure > 3) {
			CPRHands.SetActive(true);
			if (!handsDown) {
				handController.enabled = false;
				StartCoroutine(animeCPRdownwards());
			}
		}
		else {
			if (handsDown) {
				StartCoroutine(animeCPRupwards());
			}
		}

		if (Input.GetButtonDown("Jump"))
		{
			Debug.Log("oi");
			TakeSnapshot();
		}

        /*if (webcamTexture.didUpdateThisFrame)
        {
            Debug.Log(Time.time - lastCamFrameTime);
            lastCamFrameTime = Time.time;
        }
        else
        {
            Debug.Log("no :/");
        }*/

		redLevels = webcamTexture.GetPixels (redLeft, redBottom, 1, redHeight);
		greenLevels = webcamTexture.GetPixels(greenLeft, greenBottom, 1, greenHeight);
		redPixelsIndex = new int[10];
		greenPixelsIndex = new int[10];
		int b = 0;

		for (int i = 0; i < redLevels.Length; i++) {
			if (redLevels[i].r > 0.7f * (redLevels[i].g + redLevels[i].b)) {
				redPixelsIndex[b] = i;
				b++;
				if (b >=10) {break;}
			}
		}


		b = 0;

		for (int i = 0; i < greenLevels.Length; i++) {
			if (greenLevels[i].g > 0.7f * (greenLevels[i].r + greenLevels[i].b)) {
				greenPixelsIndex[b] = i;
				b++;
				if (b >=10) {break;}
			}
		}
		
		float redLevel = redPixelsIndex [4];
		float greenLevel = greenPixelsIndex [4];


		pressure = 0.0f;

		if (greenLevel > 0) {
			pressure = (1 - greenLevel / greenLevels.Length) * 14 + 37;
		} 
		else if (redLevel > 0) {
			pressure = (1 - redLevel / redLevels.Length) * 37.0f;
		} 
		else {
			pressure = 0;
		}

		if (pressure < 51)
        {
			if (lastPressure > pressure && goingUp){
				//start new compression and analyze previous one
				float[] compression = singleCompression.ToArray();
                string output = "";
                foreach (float value in compression)
                {
                    output += Mathf.Round(value) + ", ";
                }
                //Debug.Log(output);

				float min = 50;
				float max = 0;
				foreach (float i in compression)
				{
					if (i < min)
						min = i;
					if (i > max)
						max = i;
				}
				float range = max - min;
				if (range > 10)
				{
					singleCompression = new List<float>();
					compStartTime = Time.realtimeSinceStartup;
					goingUp = false;
					//Debug.Log("Last Compression: " + compression.Length);
				}
			}
			else if (lastPressure < pressure && !goingUp){
				goingUp = true;
			}
			singleCompression.Add(pressure);
			//Debug.Log("pressure: " + pressure);
			showPressure.text = "" + Mathf.Round(pressure);
		}
		//Debug.Log ("color value: " + redLevels[188]);

		lastPressure = pressure;
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

		CPRHands.SetActive (false);
		handController.enabled = true;
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