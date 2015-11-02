using UnityEngine;
using System.Collections;

public class OpenAED : MonoBehaviour {
    public Animator AEDAnimator;

	public GameObject aed;

	bool open;

	void Start()
	{
		open = false;
	}

    IEnumerator PlayAnimation()
    {
        AEDAnimator.Play("Open");
        open = true;
		aed.GetComponent<ActivateAED> ().state = 1;
		yield return null;
    }

	void OnTriggerEnter()
	{
		if (!open) {
			StartCoroutine(PlayAnimation());
		}
	}
}
