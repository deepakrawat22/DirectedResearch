/*~ StereoJ.js
.---------------------------------------------------------------------------.
|  Software: Esimple Studios Unity3D Anaglyph-izer Pack                     |
|   Version: 1.2                                                            |
|   Compatibility: requires Unity3D Pro (using rendertexture), compatible   |
|                  with both Unity 2.6.1 and Unity 3.0 (separate shaders)   |
|   Contact: info ( a t ) esimplestudios . com                              |
|      Info: http://bit.ly/u3dack                                           |
|   Support: http://bit.ly/u3dack                                           |
| ------------------------------------------------------------------------- |
|     Admin: Francesco Gallorini (project administrator)                    |
|	  Developers: Francesco Tozzi, Francesco Marcantoni                 |
|     Packaging: Gabriele Maidecchi                                         |
| Copyright (c) 2010, Esimple Studios All Rights Reserved.                  |
| Based on the original concept by: aNTeNNa trEE (Unity Demo Team)          |
|                                   Monark                                  |
| ------------------------------------------------------------------------- |
|   License: Distributed under the GNU GENERAL PUBLIC LICENSE (GPL)         |
|            http://www.gnu.org/licenses/gpl.html                           |
| This program is distributed in the hope that it will be useful - WITHOUT  |
| ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or     |
| FITNESS FOR A PARTICULAR PURPOSE.                                         |
| ------------------------------------------------------------------------- |
| We offer innovative marketing and advertising solutions:                  |
| - Web3D and Unity3D development finalized to advergames                   |
|   and 3D configurators                                                    |
| - Marketing and Social Media Marketing consulting                         |
| - Web development finalized to dynamic ecommerce solution with 3D support |
'---------------------------------------------------------------------------'
*/

@script RequireComponent (Camera)
@script AddComponentMenu ("Anaglyphizer/Anaglyph-izer Js Version")

private		var 		leftEyeRT;   
private 	var			rightEyeRT;
private		var 		leftEye;
private		var 		rightEye;
public 		var 		anaglyphMat 		: Material;

internal	var 		zvalue              : float      = 0.0; // original: 1.0


public		var 		enableKeys			: boolean    = true;
public		var 		downEyeDistance		: KeyCode    = KeyCode.O;
public		var 		upEyeDistance		: KeyCode    = KeyCode.P;
public		var 		downFocalDistance	: KeyCode    = KeyCode.K;
public		var 		upFocalDistance		: KeyCode    = KeyCode.L;


class S3DV extends System.Object {
   static var eyeDistance = 0.02;
   static var focalDistance = 10;
};

function Start () {
	
	// Code Added by esimple adding Various render mode
	
	if ( !anaglyphMat ) {
		Debug.LogError("No Material Found Please Drag The material in the appropriate Field");
		this.enabled = false;
		return;
	}
	
	// end of code added by esimple
	
	
	leftEye = new GameObject ("leftEye", Camera);
	rightEye = new GameObject ("rightEye", Camera);
	
	leftEye.camera.CopyFrom (GetComponent.<Camera>());
	rightEye.camera.CopyFrom (GetComponent.<Camera>());
	
	// Code Added by esimple adding GUI LAYER to dynamic camera
	leftEye.AddComponent(GUILayer);
	rightEye.AddComponent(GUILayer);
	// end of code added by esimple
	
	leftEyeRT = new RenderTexture (Screen.width, Screen.height, 24);
	rightEyeRT = new RenderTexture (Screen.width, Screen.height, 24);
	
	leftEye.camera.targetTexture = leftEyeRT;
	rightEye.camera.targetTexture = rightEyeRT;
	  
	anaglyphMat.SetTexture ("_LeftTex", leftEyeRT);
	anaglyphMat.SetTexture ("_RightTex", rightEyeRT);
	  
	leftEye.camera.depth = GetComponent.<Camera>().depth -2;
	rightEye.camera.depth = GetComponent.<Camera>().depth -1;
	
	leftEye.transform.position = transform.position + transform.TransformDirection(-S3DV.eyeDistance, 0, 0);
	rightEye.transform.position = transform.position + transform.TransformDirection(S3DV.eyeDistance, 0, 0);
	
	leftEye.camera.projectionMatrix = projectionMatrix(true);
	rightEye.camera.projectionMatrix = projectionMatrix(false);

	leftEye.transform.LookAt (transform.position + (transform.TransformDirection (Vector3.forward) * S3DV.focalDistance));
	rightEye.transform.LookAt (transform.position + (transform.TransformDirection (Vector3.forward) * S3DV.focalDistance));
   
	leftEye.transform.parent = transform;
	rightEye.transform.parent = transform;
	
	GetComponent.<Camera>().cullingMask = 0;
	GetComponent.<Camera>().backgroundColor = Color (0,0,0,0);
	GetComponent.<Camera>().clearFlags = CameraClearFlags.Nothing;
}

function Stop () {
}

function UpdateView() {
	leftEye.camera.depth = GetComponent.<Camera>().depth -2;
	rightEye.camera.depth = GetComponent.<Camera>().depth -1;
	
	leftEye.transform.position = transform.position + transform.TransformDirection(-S3DV.eyeDistance, 0, 0);
	rightEye.transform.position = transform.position + transform.TransformDirection(S3DV.eyeDistance, 0, 0);
	
	leftEye.camera.projectionMatrix = projectionMatrix(true);
	rightEye.camera.projectionMatrix = projectionMatrix(false);
	
	leftEye.transform.LookAt (transform.position + (transform.TransformDirection (Vector3.forward) * S3DV.focalDistance));
	rightEye.transform.LookAt (transform.position + (transform.TransformDirection (Vector3.forward) * S3DV.focalDistance));
	
	leftEye.transform.parent = transform;
	rightEye.transform.parent = transform;
}

function LateUpdate() {
   UpdateView();
   
   if (enableKeys) {
      // o and p
      var eyeDistanceAdjust : float = 0.01;
      if (Input.GetKeyDown(upEyeDistance)) {
         S3DV.eyeDistance += eyeDistanceAdjust;
      } else if (Input.GetKeyDown(downEyeDistance)) {
         S3DV.eyeDistance -= eyeDistanceAdjust;
      }
      
      // k and l
      var focalDistanceAdjust : float = 0.5;
      if (Input.GetKeyDown(upFocalDistance)) {
         //Debug.Log("focal up");
         S3DV.focalDistance += focalDistanceAdjust;
      } else if (Input.GetKeyDown(downFocalDistance)) {
         S3DV.focalDistance -= focalDistanceAdjust;
      }
   }
}

function OnRenderImage (source:RenderTexture, destination:RenderTexture) {
   RenderTexture.active = destination;
   GL.PushMatrix();
   GL.LoadOrtho();
   for(var i:int = 0; i < anaglyphMat.passCount; i++) {
      anaglyphMat.SetPass(i);
      DrawQuad();
   }
   GL.PopMatrix();
}
 
private function DrawQuad() {
   GL.Begin (GL.QUADS);      
      GL.TexCoord2( 0.0, 0.0 ); GL.Vertex3( 0.0, 0.0, zvalue );
      GL.TexCoord2( 1.0, 0.0 ); GL.Vertex3( 1.0, 0.0, zvalue );
      GL.TexCoord2( 1.0, 1.0 ); GL.Vertex3( 1.0, 1.0, zvalue );
      GL.TexCoord2( 0.0, 1.0 ); GL.Vertex3( 0.0, 1.0, zvalue );
   GL.End();
} 

function PerspectiveOffCenter(
    left : float, right : float,
    bottom : float, top : float,
    near : float, far : float ) : Matrix4x4
{       
    var x =  (2.0 * near) / (right - left);
    var y =  (2.0 * near) / (top - bottom);
    var a =  (right + left) / (right - left);
    var b =  (top + bottom) / (top - bottom);
    var c = -(far + near) / (far - near);
    var d = -(2.0 * far * near) / (far - near);
    var e = -1.0;

    var m : Matrix4x4;
    m[0,0] = x;  m[0,1] = 0;  m[0,2] = a;  m[0,3] = 0;
    m[1,0] = 0;  m[1,1] = y;  m[1,2] = b;  m[1,3] = 0;
    m[2,0] = 0;  m[2,1] = 0;  m[2,2] = c;  m[2,3] = d;
    m[3,0] = 0;  m[3,1] = 0;  m[3,2] = e;  m[3,3] = 0;
    return m;
}

function projectionMatrix(isLeftEye : boolean) : Matrix4x4 {
   var left : float;
   var right : float;
   var a : float;
   var b : float;
   var fov : float;
   
   fov = GetComponent.<Camera>().fieldOfView / 180.0 * Mathf.PI;  // convert FOV to radians
 
   var aspect : float = GetComponent.<Camera>().aspect;
 
   a = GetComponent.<Camera>().nearClipPlane * Mathf.Tan(fov * 0.5);
   b = GetComponent.<Camera>().nearClipPlane / S3DV.focalDistance;
   
   if (isLeftEye)      	// left camera
   {
      left  = - aspect * a + (S3DV.eyeDistance) * b;
      right =   aspect * a + (S3DV.eyeDistance) * b;
   }
   else         		// right camera
   {
      left  = - aspect * a - (S3DV.eyeDistance) * b;
      right =   aspect * a - (S3DV.eyeDistance) * b;
   }

    return PerspectiveOffCenter(left, right, -a, a, GetComponent.<Camera>().nearClipPlane, GetComponent.<Camera>().farClipPlane);
    
} 