using UnityEngine;
using System.Collections;
using Leap;

public class GrabObject : MonoBehaviour {

	public bool isTouching;
	public GameObject imageHand;
	public GameObject touchingThis;
	public HandController handCtrl;
	public Vector3 setDownPosition;

	void Start()
	{
		isTouching = false;
	}

	private bool IsHand(Collider other)
	{
		if (other.transform.parent && other.transform.parent.parent && other.transform.parent.parent.GetComponent<HandModel>())
			return true;
		else
			return false;
	}

	void OnTriggerEnter(Collider other) 
	{
		if (IsHand(other)) {
			isTouching = true;
			Debug.Log ("Hand Touch");
		}

		if (other.tag == "SetDown") {
			isTouching = false;
			Debug.Log("Set Down");
			gameObject.transform.position = setDownPosition;
		}
		
	}

	void Update()
	{
		Frame frame = handCtrl.GetFrame();
		Hand hand = frame.Hands.Frontmost;

		if (hand.IsValid && isTouching) 
		{
			Vector3 position = handCtrl.transform.TransformPoint(hand.PalmPosition.ToUnityScaled());
			gameObject.transform.position = position;
			Quaternion rotation = handCtrl.transform.rotation * hand.Basis.Rotation(false);
			gameObject.transform.rotation = rotation;
		}

	}

}
