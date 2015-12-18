@script ExecuteInEditMode()

var cameraArm : GameObject;

var arrowLeft : Texture2D;
var arrowRight : Texture2D;
var reset : Texture2D;

var isLocked : boolean = false;
var lock : Texture2D;
var unlock : Texture2D;
var lockButtonImage : Texture2D = lock;
var isRotatable : boolean = true;

var moveButtonImage : Texture2D;
static var isDestinationPositionSelected : boolean = false;

private var currentSelectedCharacter;

function OnGUI() {
	if( GUI.RepeatButton(Rect(10,110,30,70), arrowLeft) && isRotatable ){
		cameraArm.transform.Rotate(0,-Time.deltaTime*100,0);
	}
	if( GUI.RepeatButton(Rect(440,110,30,70), arrowRight) && isRotatable ){
		cameraArm.transform.Rotate(0,Time.deltaTime*100,0);
	}
	if ( GUI.Button(Rect(170,270,30,30), reset) ) {
		cameraArm.transform.rotation = Quaternion.identity;
	}
	if ( GUI.Button(Rect(240,280,22,27), lockButtonImage) ) {
		if( isLocked == false ) {
			lockButtonImage = lock;
			isLocked = true;
			isRotatable = false;		
		}else if( isLocked == true ) {
			lockButtonImage = unlock;
			isLocked = false;
			isRotatable = true;
		}
	}
	if( GUI.Button( Rect(380,270,88,41), moveButtonImage ) && isDestinationPositionSelected == true ) {
		currentSelectedCharacter.isMovable = true;
	}
	
}	

function Start() {
	cameraArm = GameObject.Find("CameraArm");
	lockButtonImage = unlock;
	currentSelectedCharacter = CharacterControlScript.currentSelectedCharacter;
}

function Update () {
		currentSelectedCharacter = CharacterControlScript.currentSelectedCharacter;
		if(Input.GetMouseButtonDown(0)) {
		//print("left button is down");
		var mousePoint : Vector3 = Input.mousePosition;
//		print(mousePoint);
		var cameraTransform : Transform = GameObject.Find("Main Camera").transform;
//		print(cameraTransform.gameObject.name);
		var rayFromCamera = Camera.main.ScreenPointToRay (Input.mousePosition);
		//Debug.DrawLine();
		var hit : RaycastHit;
		if(Physics.Raycast(rayFromCamera, hit ,10000) == true ) {
//			print("hit something");
//			print(hit.transform.gameObject.name);
//			print("end of hit");

			var selectedObject : GameObject = hit.transform.gameObject;
			
			print(selectedObject.name);
			
//			print(selectedObject.GetComponent("CharacterControlScript"));
//			
//			print(selectedObject.GetComponent("PositionControlScript"));
			
			if( selectedObject.GetComponent("CharacterControlScript") != null) {
				selectedObject.GetComponent("CharacterControlScript").onSelection();
			}else if( selectedObject.GetComponent("PositionControlScript") != null ) {
				selectedObject.GetComponent("PositionControlScript").onSelection();
			}else{
				print("nothing to do");
			}
		}
	}
}