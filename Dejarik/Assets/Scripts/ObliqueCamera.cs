using UnityEngine;
using System.Collections;

public class ObliqueCamera : MonoBehaviour {

	public float hob,vob;
	// Use this for initialization
	void Start () {
	
	}
	
	
	void setObliqueness(float horizObl, float vertObl) {
		Matrix4x4 mat  = Camera.main.projectionMatrix;
		mat[0, 2] = horizObl;
		mat[1, 2] = vertObl;
		Camera.main.projectionMatrix = mat;
	}
	
	// Update is called once per frame
	void Update () {
		setObliqueness(hob, vob);
		DrawFrustum (GetComponent<Camera>());

	
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
	
	Vector3 ThreePlaneIntersection ( Plane p1, Plane p2, Plane p3 ) { //get the intersection point of 3 planes
		return ( ( -p1.distance * Vector3.Cross( p2.normal, p3.normal ) ) +
		        ( -p2.distance * Vector3.Cross( p3.normal, p1.normal ) ) +
		        ( -p3.distance * Vector3.Cross( p1.normal, p2.normal ) ) ) /
			( Vector3.Dot( p1.normal, Vector3.Cross( p2.normal, p3.normal ) ) );
	}
}
