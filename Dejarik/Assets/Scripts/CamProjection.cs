using UnityEngine;
using System.Collections;

public class CamProjection : MonoBehaviour {
	//public float left = -2.2F;
	//public float right = 2.2F;
	//public float top = 2.2F;
	//public float bottom = -2.2F;
	void LateUpdate() {
		Camera cam = Camera.main;
		float a, b, fov,left,right,focalDistance;
		float aspect = cam.aspect;
		fov = cam.fieldOfView / 180.0f * Mathf.PI;  // convert FOV to radians
		//focalDistance = 10f;
		a = cam.nearClipPlane * Mathf.Tan(fov * 0.5f);
		//b = cam.nearClipPlane / focalDistance;
		left = - aspect * a*2.0f;
		right = aspect * a*2.0f;
		Matrix4x4 m = PerspectiveOffCenter(left, right, -a, a, cam.nearClipPlane, cam.farClipPlane);
		cam.projectionMatrix = m;
	}
	static Matrix4x4 PerspectiveOffCenter(float left, float right, float bottom, float top, float near, float far )
	{       
		float x =  (2.0f * near) / (right - left);
		float y =  (2.0f * near) / (top - bottom);
		float a =  (right + left) / (right - left);
		float b =  (top + bottom) / (top - bottom);
		float c = -(far + near) / (far - near);
		float d = -(2.0f * far * near) / (far - near);
		float e = -1.0f;
		
		Matrix4x4 m = new Matrix4x4();
		m[0,0] = x;  m[0,1] = 0f;  m[0,2] = a;  m[0,3] = 0f;
		m[1,0] = 0f;  m[1,1] = y;  m[1,2] = b;  m[1,3] = 0f;
		m[2,0] = 0f;  m[2,1] = 0f;  m[2,2] = c;  m[2,3] = d;
		m[3,0] = 0f;  m[3,1] = 0f;  m[3,2] = e;  m[3,3] = 0f;
		return m;
	}
}
