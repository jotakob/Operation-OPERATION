using UnityEngine;
using System.Collections;

public class WaterBehaviour : MonoBehaviour {

	// variable for the gameobject
	public GameObject waterDrop;
	public Vector3 spawnPointValues;
	public float waterDropCount;
	public float startWait;

	private bool IsHand(Collider other)
	{
		if (other.transform.parent && other.transform.parent.parent && other.transform.parent.parent.GetComponent<HandModel>())
			return true;
		else
			return false;
	}
	
	void OnTriggerEnter(Collider other) 
	{
		if (IsHand(other))
		{
			StartCoroutine (SpawnWaterDrop ());
		}  
	}
	
	// SpawnPoint is to spawn the cube(Point) at the time and the position we need.
	IEnumerator SpawnWaterDrop()
	{
		yield return new WaitForSeconds (startWait);

		// for loop to spawn the object.
		for (int i = 0; i < waterDropCount; i++) {
			Vector3 spawnPosition = new Vector3 (Random.Range (2.1f, 1.75f), spawnPointValues.y, Random.Range (-1.6f, -2f));
			Quaternion spawnRotation = Quaternion.identity;
			Instantiate (waterDrop, spawnPosition, spawnRotation);
		}
	
		
	}
}
