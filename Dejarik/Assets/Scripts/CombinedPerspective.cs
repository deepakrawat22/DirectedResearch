using UnityEngine;
using System.Collections;

public class CombinedPerspective : MonoBehaviour {

	
	public Transform[] Corners;
	public Transform lookTarget;
	//public Transform lookTarget2;
	public GameObject positions;
	public bool drawNearCone, drawFrustum;
	
	private		RenderTexture 		leftEyeRT;   
	private 	RenderTexture		rightEyeRT;
	private		GameObject	 		leftEye;
	private		GameObject	 		rightEye;
	public 		Material	 		anaglyphMat;
	public 		Material	 		cyanMat;

	internal	float		 		zvalue		= 0.0f; // original: 1.0
	
	
	public		bool 		enableKeys			= true;
	public		KeyCode 	downEyeDistance		= KeyCode.O;
	public		KeyCode 	upEyeDistance		= KeyCode.P;
	public		KeyCode 	downFocalDistance	= KeyCode.K;
	public		KeyCode 	upFocalDistance		= KeyCode.L;
	
	public		bool		useProjectionMatrix = false;
	
	
	public class S3DV {
		internal static	float	 eyeDistance = 0.03f;
		internal static	float	focalDistance = 10f;
	};

	
	Camera theCam;
	
	void Start () {
		//theCam = GetComponent<Camera>();
		if ( anaglyphMat == null ) {
			Debug.LogError("No Material Found Please Drag The material in the appropriate Field");
			this.enabled = false;
			return;
		}
		//MeshRenderer gameObjectRenderer = positions.GetComponent<MeshRenderer>();


		//gameObjectRenderer.material = cyanMat ;


		

		//Debug.Log ("test1");
		//Debug.Log (positions.transform.position.ToString());

		// end of code added by esimple
		
		leftEye = new GameObject ("leftEye", typeof ( Camera ) );
		rightEye = new GameObject ("rightEye", typeof ( Camera ) );
		
		leftEye.GetComponent<Camera>().CopyFrom (GetComponent<Camera>());
		rightEye.GetComponent<Camera>().CopyFrom (GetComponent<Camera>());
		
		// Code Added by esimple adding GUI LAYER to dynamic camera
		leftEye.AddComponent<GUILayer>();
		rightEye.AddComponent<GUILayer>();
		
		leftEyeRT = new RenderTexture (Screen.width, Screen.height, 24);
		rightEyeRT = new RenderTexture (Screen.width, Screen.height, 24);
		
		leftEye.GetComponent<Camera>().targetTexture = leftEyeRT;
		rightEye.GetComponent<Camera>().targetTexture = rightEyeRT;
		
		anaglyphMat.SetTexture ("_LeftTex", leftEyeRT);
		anaglyphMat.SetTexture ("_RightTex", rightEyeRT);

		leftEye.GetComponent<Camera>().depth = GetComponent<Camera>().depth -2;
		rightEye.GetComponent<Camera>().depth = GetComponent<Camera>().depth -1;

		leftEye.transform.position = transform.position + transform.TransformDirection(-S3DV.eyeDistance, 0f, 0f);
		rightEye.transform.position = transform.position + transform.TransformDirection(S3DV.eyeDistance, 0f, 0f);

		leftEye.transform.LookAt (transform.position + (transform.TransformDirection (Vector3.forward) * S3DV.focalDistance));
		rightEye.transform.LookAt (transform.position + (transform.TransformDirection (Vector3.forward) * S3DV.focalDistance));

		leftEye.transform.parent = transform;
		rightEye.transform.parent = transform;

		//GetComponent<Camera>().cullingMask = 0;
		//GetComponent<Camera>().backgroundColor = new Color (0f,0f,0f,0f);
		//GetComponent<Camera>().clearFlags = CameraClearFlags.Nothing;
		/*
		theCam.cullingMask = 0;
		theCam.backgroundColor = new Color (0f,0f,0f,0f);
		theCam.clearFlags = CameraClearFlags.Nothing;
		*/

	}

	void Update () {
		UpdateF (leftEye.GetComponent<Camera>());
		UpdateF (rightEye.GetComponent<Camera>());
		
		//Debug.Log ("test2");
		//Debug.Log (positions.transform.position.ToString());
	}

	void UpdateF (Camera cam) {
		//UpdateView2 ();
		Vector3 pa, pb, pc, pd;
		pa = Corners[0].position; //Bottom-Left
		pb = Corners[1].position; //Bottom-Right
		pc = Corners[2].position; //Top-Left
		pd = Corners[3].position; //Top-Right
		
		//Vector3 pe = theCam.transform.position;// eye position
		//Vector3 pe = theCam.transform.position;// eye position
		Vector3 pe = cam.transform.position;// eye position
		
		Vector3 vr = ( pb - pa ).normalized; // right axis of screen
		Vector3 vu = ( pc - pa ).normalized; // up axis of screen
		Vector3 vn = Vector3.Cross( vr, vu ).normalized; // normal vector of screen
		
		Vector3 va = pa - pe; // from pe to pa
		Vector3 vb = pb - pe; // from pe to pb
		Vector3 vc = pc - pe; // from pe to pc
		Vector3 vd = pd - pe; // from pe to pd
		
		float n = -lookTarget.InverseTransformPoint( cam.transform.position ).z; // distance to the near clip plane (screen)
		float f = cam.farClipPlane; // distance of far clipping plane
		float d = Vector3.Dot( va, vn ); // distance from eye to screen
		float l = Vector3.Dot( vr, va ) * n / d; // distance to left screen edge from the 'center'
		float r = Vector3.Dot( vr, vb ) * n / d; // distance to right screen edge from 'center'
		float b = Vector3.Dot( vu, va ) * n / d; // distance to bottom screen edge from 'center'
		float t = Vector3.Dot( vu, vc ) * n / d; // distance to top screen edge from 'center'
		
		Matrix4x4 p = new Matrix4x4(); // Projection matrix
		p[0, 0] = 2.0f * n / ( r - l );
		p[0, 2] = ( r + l ) / ( r - l );
		p[1, 1] = 2.0f * n / ( t - b );
		p[1, 2] = ( t + b ) / ( t - b );
		p[2, 2] = ( f + n ) / ( n - f );
		p[2, 3] = 2.0f * f * n / ( n - f );
		p[3, 2] = -1.0f;
		
		cam.projectionMatrix = p; // Assign matrix to camera

		
		if ( drawNearCone ) { //Draw lines from the camera to the corners f the screen
			Debug.DrawRay( cam.transform.position, va, Color.blue );
			Debug.DrawRay( cam.transform.position, vb, Color.blue );
			Debug.DrawRay( cam.transform.position, vc, Color.blue );
			Debug.DrawRay( cam.transform.position, vd, Color.blue );
		}
		
		if ( drawFrustum ) DrawFrustum( cam ); //Draw actual camera frustum
		
		
	}
	Vector3 ThreePlaneIntersection ( Plane p1, Plane p2, Plane p3 ) { //get the intersection point of 3 planes
		return ( ( -p1.distance * Vector3.Cross( p2.normal, p3.normal ) ) +
		        ( -p2.distance * Vector3.Cross( p3.normal, p1.normal ) ) +
		        ( -p3.distance * Vector3.Cross( p1.normal, p2.normal ) ) ) /
			( Vector3.Dot( p1.normal, Vector3.Cross( p2.normal, p3.normal ) ) );
	}
	
	void DrawFrustum ( Camera cam ) {
		Vector3[] nearCorners = new Vector3[4]; //Approx'd nearplane corners
		Vector3[] farCorners = new Vector3[4]; //Approx'd farplane corners
		Plane[] camPlanes = GeometryUtility.CalculateFrustumPlanes( cam ); //get planes from matrix
		Plane temp = camPlanes[1]; camPlanes[1] = camPlanes[2]; camPlanes[2] = temp; //swap [1] and [2] so the order is better for the loop
		
		for ( int i = 0; i < 4; i++ ) {
			nearCorners[i] = ThreePlaneIntersection( camPlanes[4], camPlanes[i], camPlanes[( i + 1 ) % 4] ); //near corners on the created projection matrix
			farCorners[i] = ThreePlaneIntersection( camPlanes[5], camPlanes[i], camPlanes[( i + 1 ) % 4] ); //far corners on the created projection matrix
		}
		
		for ( int i = 0; i < 4; i++ ) {
			Debug.DrawLine( nearCorners[i], nearCorners[( i + 1 ) % 4], Color.red, Time.deltaTime, false ); //near corners on the created projection matrix
			Debug.DrawLine( farCorners[i], farCorners[( i + 1 ) % 4], Color.red, Time.deltaTime, false ); //far corners on the created projection matrix
			Debug.DrawLine( nearCorners[i], farCorners[i], Color.red, Time.deltaTime, false ); //sides of the created projection matrix
		}
	}
	void UpdateView() {
		leftEye.GetComponent<Camera>().depth = GetComponent<Camera>().depth -2;
		rightEye.GetComponent<Camera>().depth = GetComponent<Camera>().depth -1;
		
		leftEye.transform.position = transform.position + transform.TransformDirection(-S3DV.eyeDistance, 0f, 0f);
		rightEye.transform.position = transform.position + transform.TransformDirection(S3DV.eyeDistance, 0f, 0f);
		leftEye.transform.LookAt (transform.position + (transform.TransformDirection (Vector3.forward) * S3DV.focalDistance));
		rightEye.transform.LookAt (transform.position + (transform.TransformDirection (Vector3.forward) * S3DV.focalDistance));

		leftEye.transform.parent = transform;
		rightEye.transform.parent = transform;

	}
	
	void OnRenderImage ( RenderTexture source, RenderTexture destination ) {
		RenderTexture.active = destination;
		GL.PushMatrix();
		GL.LoadOrtho();
		for(int i = 0; i < anaglyphMat.passCount; i++) {
			anaglyphMat.SetPass(i);
			DrawQuad();
		}
		GL.PopMatrix();
		//Graphics.Blit (source, destination, anaglyphMat);
	}


	private void DrawQuad() {
		GL.Begin (GL.QUADS);      
		GL.TexCoord2( 0.0f, 0.0f ); GL.Vertex3( 0.0f, 0.0f, zvalue );
		GL.TexCoord2( 1.0f, 0.0f ); GL.Vertex3( 1.0f, 0.0f, zvalue );
		GL.TexCoord2( 1.0f, 1.0f ); GL.Vertex3( 1.0f, 1.0f, zvalue );
		GL.TexCoord2( 0.0f, 1.0f ); GL.Vertex3( 0.0f, 1.0f, zvalue );
		GL.End();
	}
	Matrix4x4 PerspectiveOffCenter(float left, float right, float bottom, float top, float near, float far )
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
