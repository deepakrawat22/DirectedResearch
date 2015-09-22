using UnityEngine;
using System.Collections;

public class AnaglyphCamera : MonoBehaviour {
	
	
	private		RenderTexture 		leftEyeRT;   
	private 	RenderTexture		rightEyeRT;
	private		GameObject	 		leftEye;
	private		GameObject	 		rightEye;
	public 		Material	 		anaglyphMat;

	void Start () {

		if ( anaglyphMat == null ) {
			Debug.LogError("No Material Found Please Drag The material in the appropriate Field");
			this.enabled = false;
			return;
		}

		leftEye = new GameObject ("leftEye", typeof ( Camera ) );
		rightEye = new GameObject ("rightEye", typeof ( Camera ) );

		leftEye.GetComponent<Camera>().CopyFrom (GetComponent<Camera>());
		rightEye.GetComponent<Camera>().CopyFrom (GetComponent<Camera>());
		
		leftEyeRT = new RenderTexture (Screen.width, Screen.height, 24);
		rightEyeRT = new RenderTexture (Screen.width, Screen.height, 24);
		
		leftEye.GetComponent<Camera>().targetTexture = leftEyeRT;
		rightEye.GetComponent<Camera>().targetTexture = rightEyeRT;
		
		anaglyphMat.SetTexture ("_LeftTex", leftEyeRT);
		anaglyphMat.SetTexture ("_RightTex", rightEyeRT);
		
		leftEye.GetComponent<Camera>().depth = GetComponent<Camera>().depth -2;
		rightEye.GetComponent<Camera>().depth = GetComponent<Camera>().depth -1;
		
		leftEye.transform.position = transform.position + transform.TransformDirection(-0.8f, 0f, 0f);
		rightEye.transform.position = transform.position + transform.TransformDirection(0.8f, 0f, 0f);
		
		leftEye.transform.parent = transform;
		rightEye.transform.parent = transform;
		
		GetComponent<Camera>().cullingMask = 0;
		GetComponent<Camera>().backgroundColor = new Color (0f,0f,0f,0f);
		GetComponent<Camera>().clearFlags = CameraClearFlags.Nothing;
	}
	
	void Stop () {
	}
	
	
	void OnRenderImage ( RenderTexture source, RenderTexture destination ) {
		Graphics.Blit (source, destination, anaglyphMat);
	}
	
}



