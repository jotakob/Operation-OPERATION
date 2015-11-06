using UnityEngine;
using System.Collections;
using UnityEngine.Audio;
using System.Collections.Generic;

public class ActivateAED : MonoBehaviour {
	public GameObject webcam;

	public bool placedOne;
	public bool placedTwo;

    public int state = 0;
    private float endTime = 0f;
	private bool waited = false;
	private bool giveShock = true;
	private bool buttonPressed = false;

	public Dictionary<int, AudioClip> AEDLines;

	public GameObject AEDLight;

	void Start()
	{
		AEDLines = new Dictionary<int, AudioClip> ();
		for (int i = 1; i < 25; i++) {
			AudioClip tmp = Resources.Load("AEDLines/Line" + i) as AudioClip;
			AEDLines.Add(i, tmp);
		}
	}

    void Awake()
    {
        giveShock = (Random.value > 0.5);

    }

	void Update()
	{
		if ((endTime <= Time.time) || ((state == 5) && (placedOne || placedTwo)) || ((state == 6) && (placedOne && placedTwo)))
        {
            switch (state)
            {
				case 0:
					break;

                case 1:
                case 2:
                case 3:
                case 4:
                    playSound(state);
                    state++;
                    break;

                case 5:
                    if (placedOne || placedTwo)
                    {
                        playSound(state);
                        state++;
                        waited = false;
                    }
                    else
                    {
                        if (waited)
                        {
                            playSound(4);
                            waited = false;
                        }
                        else
                        {
                            endTime += 5f;
                            waited = true;
                        }
                    }
                    break;

                case 6:
                    if (placedOne && placedTwo)
                    {
                        playSound(state);
                        waited = false;
                        if (giveShock)
                        {
                            state = 8;
                        }
                        else
                        {
                            state = 7;
                        }
                    }
                    else
                    {
                        if (waited)
                        {
                            playSound(5);
                            waited = false;
                        }
                        else
                        {
                            endTime += 5f;
                            waited = true;
                        }
                    }
                    break;

                case 7:
                    playSound(state);
                    state = 11;
                    break;

                case 8:
                    playSound(state);
                    //playSound(20); //AED charge
                    state = 20;
                    break;

				case 20:
					playSound(state);
					state = 9;
					break;

                case 9:
                    playSound(state);
					state = 21;
					buttonPressed = false;
					AEDLight.GetComponent<AnimateLight>().enabled = true;
                    break;

				case 21: 
                    //playSound(21); //AED shock alert
                    if (buttonPressed)
                    {
						AEDLight.GetComponent<AnimateLight>().enabled = false;
						AEDLight.GetComponent<MeshRenderer>().enabled = false;
						AEDLight.GetComponent<Light>().enabled = false;
                        //Play Shock animation
                        playSound(state);
						state = 10;
					}
                    break;

				case 10:
				case 11:
					playSound(state);
					state++;
					break;

				case 12:
                    playSound(state);
					webcam.GetComponent<CamTest>().doAnalysis = true;
                    state++;
                    break;

                case 13:
                    playSound(state);
                    webcam.GetComponent<CamTest>().doAnalysis = false;
                    state = 6;
                    break;

                default:
                    Debug.LogError("Error: Invalid AED state");
                    break;
            }
        }
	}

	void OnTriggerEnter()
	{
        buttonPressed = true;
		/*if (placedOne && placedTwo) {
			if (gameObject.GetComponent<AudioSource>().isPlaying) {
				//nothing
			}
			else {
				gameObject.GetComponent<AudioSource> ().Play ();
			}
		}*/
	}

    void playSound(int ID)
    {
		gameObject.GetComponent<AudioSource> ().clip = AEDLines [ID];
		gameObject.GetComponent<AudioSource> ().Play ();
        //stop playing previous sound, play new sound and set endTime
        //Debug.Log("Hi, I am Sound #" + ID);
		float pause = 0.5f;
		if (ID == 12) {
			pause = 30f; //120
		} else if (ID == 6) {
			pause = 3f;
		}
        endTime = Time.time + AEDLines[ID].length + pause;
    }
}