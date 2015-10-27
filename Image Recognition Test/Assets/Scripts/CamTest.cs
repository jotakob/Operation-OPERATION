using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using System.Linq;

public class CamTest: MonoBehaviour {
	public WebCamTexture webcamTexture;
	public WebCamDevice[] devices;
	public Color pixel;

	public Color[] redLevels;
	public Color[] greenLevels;

	public int[] redPixelsIndex;
	public int[] greenPixelsIndex;

	private const int redHeight = 193;
	private const int redBottom = 98;

	private const int greenHeight = 88;
	private const int greenBottom = 16;

	private const int redLeft = 100;
	private const int redGreenOffset = 85;

	private float lastPressure = 0.0f;
	private bool goingUp = false;
	private float compStartTime;
	private List<float> singleCompression = new List<float>();

	private Texture2D tooSoft;

	private string _SavePath = "D:/WebcamSnaps/";

	public float pressure;

	int _CaptureCounter = 0;

	void Start() {

		devices = WebCamTexture.devices;
		webcamTexture = new WebCamTexture();
		webcamTexture.deviceName = devices [0].name;
		webcamTexture.requestedFPS = 60;
		webcamTexture.Play();
	}
	void Update() {

		if (Input.GetButtonDown("Jump"))
		{
			Debug.Log("oi");
			TakeSnapshot();
		}

		redLevels = webcamTexture.GetPixels (redLeft, redBottom, 1, redHeight);
		greenLevels = webcamTexture.GetPixels(redLeft + redGreenOffset, greenBottom, 1, greenHeight);
		redPixelsIndex = new int[10];
		greenPixelsIndex = new int[10];
		int b = 0;

		for (int i = 0; i < redLevels.Length; i++) {
			if (redLevels[i].r > 0.75f * (redLevels[i].g + redLevels[i].b)) {
				redPixelsIndex[b] = i;
				b++;
				if (b >=10) {break;}
			}
		}


		b = 0;

		for (int i = 0; i < greenLevels.Length; i++) {
			if (greenLevels[i].g > 0.75f * (greenLevels[i].r + greenLevels[i].b)) {
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
			pressure = 51;
		}

		if (pressure >= 51) {
			//nothing
		}
		else {
			if (lastPressure > pressure && !goingUp){
				//start new compression and analyze previous one
				float[] compression = singleCompression.ToArray();
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
					goingUp = true;
					Debug.Log("Last Compression: " + compression.Length);
				}
			}
			else if (lastPressure < pressure && goingUp){
				goingUp = false;
			}
			singleCompression.Add(pressure);
			//Debug.Log("pressure: " + pressure);
		}
		//Debug.Log ("color value: " + redLevels[188]);

		lastPressure = pressure;
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