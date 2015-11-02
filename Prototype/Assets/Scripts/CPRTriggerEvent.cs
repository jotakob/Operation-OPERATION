using UnityEngine;
using System.Collections;
using Leap;

public class CPRTriggerEvent : MonoBehaviour {

	public GameObject CPRHands;
	public HandController handController;

	public bool touchingTrigger;
	bool handIsValid;

	Frame frame;
	Hand hand;

	void Start()
	{
		touchingTrigger = false;
		handIsValid = false;
	}

	void Update () {

		frame = handController.GetFrame();
		hand = frame.Hands.Frontmost;


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

	void OnTriggerEnter(Collider other)
	{
		if (IsHand(other) && !CPRHands.activeInHierarchy) {
			touchingTrigger = true;
			CPRHands.SetActive(true);
			Debug.Log ("Setting touch to true");
		}
//		else {
//			touchingTrigger = false;
//		}
	}

	void OnTriggerExit()
	{
		if (CPRHands.activeInHierarchy) {
			Debug.Log ("hands are not touching");
			touchingTrigger = false;
			CPRHands.SetActive(false);
		}

	}

	private bool IsHand(Collider other)
	{
		if (other.transform.parent && other.transform.parent.parent && other.transform.parent.parent.GetComponent<HandModel>())
			return true;
		else
			return false;
	}
}
