using UnityEngine;
using System.Collections;
using Leap;

public class StartScene : MonoBehaviour 
{
	public GameObject activateAED;
	public HandController handController;
	private GameObject nurseSoldier;
	private AudioSource audioSourceSoldier;
	 
	private bool handValid;

	void Start()
	{
		nurseSoldier = this.gameObject;
		handValid = false;
		audioSourceSoldier = nurseSoldier.GetComponent<AudioSource> ();
		StartCoroutine (InitilizeScene());
	}

	IEnumerator InitilizeScene()
	{
		yield return new WaitForSeconds (7);

		AudioClip temp = Resources.Load ("SoldierLines/Line1") as AudioClip;
		audioSourceSoldier.clip = temp;
		audioSourceSoldier.Play ();

		Debug.Log ("Playing Line 1");

		yield return new WaitForSeconds (temp.length + 5.0f);

		while (!handValid) {
			temp = Resources.Load("SoldierLines/Line1-1") as AudioClip;
			audioSourceSoldier.clip = temp;
			audioSourceSoldier.Play();
			Debug.Log ("Playing Line 1-1");
			yield return new WaitForSeconds(temp.length + 4.5f);
		}

		temp = Resources.Load("SoldierLines/Line2") as AudioClip;
		audioSourceSoldier.clip = temp;
		audioSourceSoldier.Play();
		Debug.Log ("Playing Line 2");

		yield return new WaitForSeconds (temp.length + 5.0f);

		temp = Resources.Load ("SoldierLines/Line3") as AudioClip;
		audioSourceSoldier.clip = temp;
		audioSourceSoldier.Play ();
		Debug.Log ("Playing Line 3");

		yield return new WaitForSeconds (temp.length + 3.0f);

		temp = Resources.Load ("SoldierLines/Line4") as AudioClip;
		audioSourceSoldier.clip = temp;
		audioSourceSoldier.Play ();
		Debug.Log ("Playing Line 4");

		yield return new WaitForSeconds (temp.length);

		activateAED.SetActive (true);
	}

	void Update()
	{
		Frame frame = handController.GetFrame();
		Hand hand = frame.Hands.Frontmost;

		if (hand.IsValid) {
			handValid = true;
		}
		else {
			handValid = false;
		}
	}
}
