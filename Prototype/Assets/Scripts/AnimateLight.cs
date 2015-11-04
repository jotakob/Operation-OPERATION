using UnityEngine;
using System.Collections;

public class AnimateLight : MonoBehaviour
{

	Light aedLight;
	GameObject aedLightStrip;
	AnimateLight animateLightComponent;
	
	void Start () {
		aedLight = this.GetComponent<Light> ();
		aedLightStrip = this.gameObject;
		animateLightComponent = this.GetComponent<AnimateLight> ();
		StartCoroutine (blink ());
	}

	IEnumerator blink()
	{
		while (animateLightComponent.enabled) {
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
