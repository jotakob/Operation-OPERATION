using UnityEngine;
using System.Collections;
using UnityEngine.Events;

public class LevelLoadingScript: MonoBehaviour 
{
	private bool loading;
	public Texture loadingTexture;
	bool startup;

	void Awake () 
	{
		startup = true;
		DontDestroyOnLoad(gameObject);
		gameObject.AddComponent<GUITexture> ();
	}


	void Update () 
	{
		if (startup) {
			StartCoroutine(loadLevel());
			startup = false;
		}
	}

	IEnumerator loadLevel()
	{
		AsyncOperation loadingScene = Application.LoadLevelAsync (1);

		gameObject.GetComponent<GUITexture> ().texture = loadingTexture;

		if (loadingScene.isDone) {
			loading = false;
			Destroy(this.gameObject);
		}
		else {
			loading = true;
		}
		yield return null;
	}
	
	void OnGUI ()
	{
		if(loading)
			GUI.DrawTexture (new Rect(0,0,Screen.width,Screen.height), loadingTexture, ScaleMode.StretchToFill);
		else {
			//nothing
		}
	}
}
