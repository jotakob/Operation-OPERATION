using UnityEngine;
using System.Collections;

public class AnimateLight : MonoBehaviour {

	Light aedLight;
	public GameObject aedLightStrip;
	
	void Start () {
		aedLight = this.GetComponent<Light> ();
		StartCoroutine (blink ());
	}

	IEnumerator blink()
	{
		while (true) {
			if (aedLight.enabled) {
				aedLight.enabled = false;
				aedLightStrip.SetActive(false);
			}
			else {
				aedLight.enabled = true;
				aedLightStrip.SetActive(true);
			}

			yield return new WaitForSeconds(0.8f);
		}
	}
}
