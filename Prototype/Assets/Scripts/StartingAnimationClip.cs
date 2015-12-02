using UnityEngine;
using System.Collections;
using System.Collections.Generic;
using UnityEngine.UI;

public class StartingAnimationClip : MonoBehaviour
{
	Image imageComponent;
    ScreenFadeInOut headRigComponent;
	public GameObject headRig;
    public Sprite[] scene0;
	public Sprite[] scene1;
	public Sprite[] scene2;
	public Sprite[] scene3;
    public Sprite[] scene4;

	public GameObject blackBox;
	public GameObject activateScene;
	public Canvas layer;

	bool started;

	void Start () {
		started = false;
		imageComponent = gameObject.GetComponent<Image> ();
        headRigComponent = headRig.GetComponent<ScreenFadeInOut>();
        imageComponent.sprite = scene0[0];
		StartCoroutine (swappingScreens ());
	}

	IEnumerator swappingScreens()
	{
		while (!started) {
            for (int i = 0; i < scene0.Length; i++)
            {
                imageComponent.sprite = scene0[i];
                if (started)
                {
                    break;
                }
                yield return new WaitForSeconds(0.2f);
            }
        }

		for (int i = 0; i < scene1.Length; i++) {
			imageComponent.sprite = scene1[i];
			yield return new WaitForSeconds(0.2f);
		}

		for (int i = 0; i < scene2.Length; i++) {
			imageComponent.sprite = scene2[i];
			yield return new WaitForSeconds(0.2f);
		}

		for (int i = 0; i < scene3.Length; i++) {
			imageComponent.sprite = scene3[i];
			yield return new WaitForSeconds(0.2f);
		}

        for (int i = 0; i < scene4.Length; i++)
        {
            imageComponent.sprite = scene4[i];
            yield return new WaitForSeconds(0.2f);
        }

        headRigComponent.FadeToBlack();

        yield return new WaitForSeconds(2);

		Destroy(blackBox.gameObject);
		activateScene.SetActive (true);
		layer.gameObject.SetActive (false);

		yield return new WaitForSeconds (2);

        headRigComponent.FadeToClear();

	}

	void OnTriggerEnter()
	{
		started = true;
		gameObject.GetComponent<BoxCollider> ().enabled = false;
	}
}
