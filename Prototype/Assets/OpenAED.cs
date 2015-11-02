using UnityEngine;
using System.Collections;

public class OpenAED : MonoBehaviour {

	public Animation AEDAnimation;
    public Animator AEDAnimator;

	bool open;

	void Start()
	{
		//AEDAnimation.playAutomatically = false;
		open = false;

        StartCoroutine(PlayAnimation());
	}

    IEnumerator PlayAnimation()
    {
        yield return new WaitForSeconds(5.0f);
        Debug.Log("Open sesame");
        //AEDAnimation.Play();
        AEDAnimator.Play("Open");
        open = true;
        yield return new WaitForSeconds(5.0f);
        AEDAnimator.Play("Close");
    }

	void OnTriggerEnter(Collider other)
	{
		Debug.Log ("OI");
		Debug.Log (other.name);
		if (!open) {
			AEDAnimation.Play();
			open = true;
		}
	}
}
