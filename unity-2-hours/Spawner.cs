using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Spawner : MonoBehaviour {

	// declare variable named "ThingToSpawn" of type GameObject
	// and make it public so that it shows up in the editor
	public GameObject ThingToSpawn;

	public float DelayBeforeFirstSpawn = 1;
	public float HowOften = 2;

	// things in Start () happen when the scene loads
	void Start () {
		InvokeRepeating("DoSpawn", DelayBeforeFirstSpawn, HowOften);
	}

	void DoSpawn() {
		Instantiate (ThingToSpawn, transform);
	}
}
