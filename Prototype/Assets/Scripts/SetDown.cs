using UnityEngine;
using System.Collections;

public class SetDown : MonoBehaviour {

	public Vector3 setDownPosition;

	void OnTriggerEnter(Collider other)
	{
		if (gameObject.tag == "Trap") {
			Debug.Log("Stay with me");

		}
	}


}
