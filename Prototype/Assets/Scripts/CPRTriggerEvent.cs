using UnityEngine;
using System.Collections;
using Leap;

public class CPRTriggerEvent : MonoBehaviour {

	public GameObject CPRHands;
	public HandController handController;

	public bool touchingTrigger;
	bool handIsValid;
	float timePassed;

	Frame frame;
	Hand hand;

	void Start()
	{
//		touchingTrigger = false;
//		handIsValid = false;
//		timePassed = 0;
	}

	void Update () {

//		frame = handController.GetFrame();
//		hand = frame.Hands.Frontmost;


//		if (touchingTrigger) {
//			CPRHands.SetActive(true);
//		}
//		else {
//			CPRHands.SetActive(false);
//		}

//		if (hand.IsValid) {
//			CPRHands.SetActive(false);
//		}
//		if (!touchingTrigger) {
//			CPRHands.SetActive(false);
//		}
//		if (!hand.IsValid && touchingTrigger){
//			CPRHands.SetActive(true);
//		}

//		if (hand.IsValid) {
//			handIsValid = true;
//		}
//		else if (!hand.IsValid) {
//			handIsValid = false;
//		}

//		if (touchingTrigger && !handIsValid) {
//			CPRHands.SetActive(true);
//			Debug.Log ("touching and no valid hands");
//		}
//		else if (!touchingTrigger && handIsValid) {
//			CPRHands.SetActive(false);
//			Debug.Log ("no longer touching and valid hands");
//		}

//		if (!touchingTrigger) {
//			CPRHands.SetActive(false);
//		}
	}

//	void OnTriggerEnter(Collider other)
//	{
//		touchingTrigger = true;		
//	}

//	void OnTriggerStay(Collider other)
//	{
//		timePassed = timePassed + Time.deltaTime;
//
//		Debug.Log ("Hands are staying in trigger: " + timePassed);
//	}

//	void OnTriggerExit()
//	{
//		CPRHands.SetActive (false);
//		timePassed = 0;
//	}

//	private bool IsHand(Collider other)
//	{
//		if (other.transform.parent && other.transform.parent.parent && other.transform.parent.parent.GetComponent<HandModel>())
//			return true;
//		else
//			return false;
//	}
}
