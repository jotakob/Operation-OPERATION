using UnityEngine;
using System.Collections;

public class OpenAED : MonoBehaviour {

	public Animation AEDAnimation;

	bool open;

	void Start()
	{
		//AEDAnimation.playAutomatically = false;
		open = false;
	}

	void OnTriggerEnter(Collider other)
	{
		Debug.Log ("OI");
		Debug.Log (other.name);
		if (!open) {
			AEDAnimation.Play();
			open = true;
		}
	}
}
