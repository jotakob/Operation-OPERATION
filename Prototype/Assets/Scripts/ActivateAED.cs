using UnityEngine;
using System.Collections;
using UnityEngine.Audio;

public class ActivateAED : MonoBehaviour {
	public AudioClip beep;

	public bool placedOne;
	public bool placedTwo;

	public GameObject AEDLight;

	void Update()
	{
		if (placedOne && placedTwo) {
			AEDLight.GetComponent<AnimateLight>().enabled = true;
		}
	}

	void OnTriggerEnter()
	{
		if (placedOne && placedTwo) {
			if (gameObject.GetComponent<AudioSource>().isPlaying) {
				//nothing
			}
			else {
				gameObject.GetComponent<AudioSource> ().Play ();
			}
		}
	}
}
