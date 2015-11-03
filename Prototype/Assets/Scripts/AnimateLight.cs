using UnityEngine;
using System.Collections;

public class AnimateLight : MonoBehaviour {

	Light aedLight;
	GameObject aedLightStrip;
	
	void Start () {
		aedLight = this.GetComponent<Light> ();
		aedLightStrip = this.gameObject;
		StartCoroutine (blink ());
	}

	IEnumerator blink()
	{
		while (true) {
			if (aedLight.enabled) {
				aedLight.enabled = false;
				aedLightStrip.GetComponent<MeshRenderer>().enabled = false;
			}
			else {
				aedLight.enabled = true;
				aedLightStrip.GetComponent<MeshRenderer>().enabled = true;
			}

			yield return new WaitForSeconds(0.8f);
		}
	}
}
