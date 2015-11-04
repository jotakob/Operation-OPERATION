using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class StartingAnimationClip : MonoBehaviour {
	
	Image imageComponent;
	public Sprite startScreen;
	public Sprite[] scene1;
	public Sprite[] scene2;
	public Sprite[] scene3;

	public GameObject blackBox;
	public GameObject activateScene;
	public Canvas layer;

	bool started;

	void Start () {
		started = false;
		imageComponent = gameObject.GetComponent<Image> ();
		StartCoroutine (swappingScreens ());
	}

	IEnumerator swappingScreens()
	{
		while (!started) {
			imageComponent.sprite = startScreen;
			yield return null;
		}

		for (int i = 1; i < scene1.Length; i++) {
			imageComponent.sprite = scene1[i];
			Debug.Log("Scene1, Frame: " + i);
			yield return new WaitForSeconds(0.2f);
		}

		for (int i = 0; i < scene2.Length; i++) {
			imageComponent.sprite = scene2[i];
			Debug.Log("Scene2, Frame: " + i);
			yield return new WaitForSeconds(0.2f);
		}

		for (int i = 0; i < scene3.Length; i++) {
			imageComponent.sprite = scene3[i];
			Debug.Log("Scene3, Frame: " + i);
			yield return new WaitForSeconds(0.2f);
		}

		Debug.Log ("Done");

		Destroy(blackBox.gameObject);
		activateScene.SetActive (true);
		layer.gameObject.SetActive (false);

		yield return null;
	}

	void OnTriggerEnter()
	{
		started = true;
		gameObject.GetComponent<BoxCollider> ().enabled = false;
	}
}
