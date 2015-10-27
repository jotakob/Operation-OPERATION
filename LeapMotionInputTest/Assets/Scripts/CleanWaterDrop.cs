using UnityEngine;
using System.Collections;

public class CleanWaterDrop : MonoBehaviour {

	// the function to destroy the game object when it already pass the player. 
	// this code will help to clean the objects in teh game.
	void OnTriggerEnter(Collider other)
	{
		Destroy (other.gameObject);
		
	}
}
