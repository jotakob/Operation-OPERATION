using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class ScreenFadeInOut : MonoBehaviour
{
    public GameObject leftCam;
    public GameObject rightCam;

    GUITexture screenOverlay1;
    GUITexture screenOverlay2;

    public float fadeSpeed = 1.5f;          // Speed that the screen fades to and from black.
    private bool sceneStarting = true;      // Whether or not the scene is still fading in.

    void Start()
    {
        // Set the texture so that it is the the size of the screen and covers it.
        screenOverlay1 = leftCam.GetComponent<GUITexture>();
        screenOverlay1.pixelInset = new Rect(0, 0, Screen.width, Screen.height);
        screenOverlay1.color = Color.clear;
    }

    public void FadeToClear()
    {
        // Lerp the colour of the texture between itself and transparent.
        screenOverlay1.color = Color.Lerp(screenOverlay1.color, Color.clear, fadeSpeed * Time.deltaTime);
    }


    public void FadeToBlack()
    {
        Debug.Log("Fading to black...");
        // Lerp the colour of the texture between itself and black.
        screenOverlay1.color = Color.Lerp(screenOverlay1.color, Color.black, fadeSpeed * Time.deltaTime);
    }
}