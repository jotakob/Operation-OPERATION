using UnityEngine;
using System.Collections;
using Leap;

public class GrabObject : MonoBehaviour {

	public bool isTouching;
	public GameObject touchingThis;
	public HandController handCtrl;
	public GameObject setDown1;
	public GameObject setDown2;

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

		Vector3 setDownPosition1 = setDown1.transform.position;
		if (other.tag == "SetDown1") {
			isTouching = false;
			Debug.Log("Set Down 1");
			gameObject.transform.position = setDownPosition1;
			Quaternion setDownRotation1 = setDown1.transform.rotation;
			gameObject.transform.rotation = setDownRotation1;
			gameObject.isStatic = true;
		}

		Vector3 setDownPosition2 = setDown2.transform.position;
		if (other.tag == "SetDown2") {
			isTouching = false;
			Debug.Log ("Set Down 2");
			gameObject.transform.position = setDownPosition2;
			Quaternion setDownRotation2 = setDown2.transform.rotation;
			gameObject.transform.rotation = setDownRotation2;
			gameObject.isStatic = true;
		}
		
	}

	void Update()
	{
		Frame frame = handCtrl.GetFrame();
		Hand hand = frame.Hands.Frontmost;

		if (hand.IsValid && isTouching && gameObject.isStatic != true) 
		{
			Vector3 position = handCtrl.transform.TransformPoint(hand.PalmPosition.ToUnityScaled());
			gameObject.transform.position = position;
			Quaternion rotation = handCtrl.transform.rotation * hand.Basis.Rotation(false);
			gameObject.transform.rotation = rotation;
		}

	}

}
