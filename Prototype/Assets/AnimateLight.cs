using UnityEngine;
using System.Collections;

public class AnimateLight : MonoBehaviour {

	public Light aedLight;

	// Use this for initialization
	void Start () {
		StartCoroutine (blink ());
	}

	IEnumerator blink()
	{
		while (true) {
			if (aedLight.gameObject.activeInHierarchy) {
				aedLight.gameObject.SetActive(false);
			}
			else {
				aedLight.gameObject.SetActive(true);
			}

			yield return new WaitForSeconds(0.8f);
		}
	}
}
