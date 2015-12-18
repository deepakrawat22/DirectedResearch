using UnityEngine;
using System.Collections;

public class ReversePerspective : MonoBehaviour {
	public float perspective = -3.0f;
	// Use this for initialization
	void Start () {
		
		Camera camera = Camera.main;
		Matrix4x4 matrix = camera.projectionMatrix;
		matrix[3,1] = perspective;
		matrix[2,1] = perspective;
		camera.projectionMatrix = matrix;
	}
	
	// Update is called once per frame
	void Update () {
	
	}
}
