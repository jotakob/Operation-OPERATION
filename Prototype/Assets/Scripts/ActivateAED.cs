﻿using UnityEngine;
using System.Collections;
using UnityEngine.Audio;

public class ActivateAED : MonoBehaviour {
	public AudioClip beep;

	public bool placedOne;
	public bool placedTwo;

    public int state = 0;
    public float endTime;
    public bool waited = false;
    public bool giveShock = true;
    public bool buttonPressed = false;

	public GameObject AEDLight;

    void Awake()
    {
        giveShock = (Random.value > 0.5);
    }

	void Update()
	{
        if (endTime > Time.time)
        {
            switch (state)
            {
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
                            endTime += 10f;
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
                            endTime += 10f;
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
                    playSound(20); //AED charge
                    state++;
                    break;

                case 9:
                    playSound(state);
                    buttonPressed = false;
                    state++;
                    break;

                case 10:
                    playSound(21); //AED shock alert
                    if (buttonPressed)
                    {
                        //Play Shock animation
                        playSound(state);
                        state++;
                    }
                    break;

                case 11:
                    playSound(state);
                    state++;
                    break;

                case 12:
                    playSound(state);
                    state = 13;
                    break;

                case 13:
                    playSound(state);
                    state = 6;
                    break;

                default:
                    Debug.LogError("Error: Invalid AED state");
                    break;
            }
        }

		if (placedOne && placedTwo) {
			AEDLight.GetComponent<AnimateLight>().enabled = true;
		}
	}

	void OnTriggerEnter()
	{
        buttonPressed = true;
		if (placedOne && placedTwo) {
			if (gameObject.GetComponent<AudioSource>().isPlaying) {
				//nothing
			}
			else {
				gameObject.GetComponent<AudioSource> ().Play ();
			}
		}
	}

    void playSound(int ID)
    {
        //stop playing previous sound, play new sound and set endTime
        Debug.Log("Hi, I am Sound #" + ID);
        endTime = Time.time + 5f;
    }
}
