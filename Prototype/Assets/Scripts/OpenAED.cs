using UnityEngine;
using System.Collections;

public class OpenAED : MonoBehaviour {
    public Animator AEDAnimator;

	bool open;

	void Start()
	{
		open = false;
	}

    IEnumerator PlayAnimation()
    {
        AEDAnimator.Play("Open");
        open = true;
		yield return null;
    }

	void OnTriggerEnter()
	{
		if (!open) {
			StartCoroutine(PlayAnimation());
		}
	}
}
