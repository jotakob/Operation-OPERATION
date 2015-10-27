using UnityEngine;
using System.Collections;

public class CamTest: MonoBehaviour {
	public WebCamTexture webcamTexture;
	public WebCamDevice[] devices;
	public Color pixel;

	public Color[] redLevels;
	public Color[] greenLevels;

	public int[] redPixelsIndex;
	public int[] greenPixelsIndex;

	private const int redHeight = 188;
	private const int redBottom = 110;

	private const int greenHeight = 77;
	private const int greenBottom = 30;

	private const int redLeft = 25;
	private const int redGreenOffset = 85;

	private Texture2D tooSoft;

	private string _SavePath = "D:/WebcamSnaps/";

	int _CaptureCounter = 0;

	void Start() {

		devices = WebCamTexture.devices;
		webcamTexture = new WebCamTexture();
		webcamTexture.deviceName = devices [1].name;
		webcamTexture.Play();
	}
	void Update() {

		redLevels = webcamTexture.GetPixels (redLeft, redBottom, 1, redHeight);
		greenLevels = webcamTexture.GetPixels(redLeft + redGreenOffset, greenBottom, 1, greenHeight);
		redPixelsIndex = new int[10];
		greenPixelsIndex = new int[10];
		int b = 0;

		for (int i = 0; i < redLevels.Length; i++) {
			if (redLevels[i].r > 0.7) {
				redPixelsIndex[b] = i;
				b++;
				if (b >=10) {break;}
			}
		}


		b = 0;

		for (int i = 0; i < greenLevels.Length; i++) {
			if (greenLevels[i].g > 0.7) {
				greenPixelsIndex[b] = i;
				b++;
				if (b >=10) {break;}
			}
		}
		
		float redLevel = redPixelsIndex [4];
		float greenLevel = greenPixelsIndex [4];


		float pressure = 0.0f;

		if (greenLevel > 0) {
			pressure = (1 - greenLevel / greenLevels.Length) * 14 + 37;
		} 
		else if (redLevel > 0) {
			pressure = (1 - redLevel / redLevels.Length) * 37.0f;
		} 
		else {
			pressure = 51;
		}

		Debug.Log ("pressure: " + pressure);
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