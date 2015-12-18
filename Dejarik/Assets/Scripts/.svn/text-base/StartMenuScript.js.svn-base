@script ExecuteInEditMode()

var backgroundImage : Texture2D;
var buttonImage : Texture2D;

private var isLoading : boolean = false;

function Update () {
	
}

function OnGUI() {
	GUI.Label ( Rect( 0, 0, 480,320), backgroundImage);
	if( GUI.Button( Rect(211,200,211,67), buttonImage ) ) {
		isLoading = true;
		Application.LoadLevel("MainGameScene");
	}
}

