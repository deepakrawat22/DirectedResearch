static var currentSelectedPosition;

var initialCharacter : Transform;

var currentOccupyingCharacter : CharacterControlScript;

private var currentSelectedCharacter;

//components
private var positionLight : Light;

//attributes
var isActive : boolean;
var isOccupied : boolean;
var shouldBeActive : boolean;

var isSelected : boolean;

function Start() {
	positionLight = transform.Find("PositionLight").GetComponent.<Light>();
	turnOffPositionLight();
	currentSelectedCharacter = CharacterControlScript.currentSelectedCharacter;
	currentSelectedPostion = null;
	
	initializeMonsterPositions();
	
	if(initialCharacter != null){
		currentOccupyingCharacter = initialCharacter.GetComponent(CharacterControlScript);
		currentOccupyingCharacter.currentPosition = this;
		//print(initialCharacter.GetComponent(CharacterControlScript));
		isOccupied = true;
	}else{
		currentOccupyingCharacter = null;
		isOccupied = false;
	}
	
	//attributes
	isActive = false;
	
	//TODO : shouldBeActive will be determined later by algorithm
	shouldBeActive = false;
	
	isSelected = false;
}

function Update () {
	currentSelectedCharacter = CharacterControlScript.currentSelectedCharacter;
	if((currentSelectedCharacter != null) && (isOccupied != true) && (shouldBeActive == true)){
		//print(currentSelectedCharacter.name);
		setPositionActive();
	}else{
		setPositionInactive();
	}
	if( isSelected == true ) {
		positionLight.color = Color.yellow;
	}else{
		positionLight.color = Color(4/100,129/100,236/100);
	}
}

function initializeMonsterPositions() {	
	placeMonsterAtPosition("savrip",21,Side.Player1);
	placeMonsterAtPosition("monnok",15,Side.Player2);
	placeMonsterAtPosition("ghhhk",20,Side.Player1);
	placeMonsterAtPosition("houjix",14,Side.Player2);
	placeMonsterAtPosition("strider",19,Side.Player1);
	placeMonsterAtPosition("ngok",13,Side.Player2);
	placeMonsterAtPosition("slug",18,Side.Player1);
	placeMonsterAtPosition("grimtaash",24,Side.Player2);
}

function placeMonsterAtPosition( monsterName, desiredPositionNumber, side ){
	var monster : GameObject = GameObject.Find(monsterName);
	var desiredPosition : GameObject = GameObject.Find("Positions/"+desiredPositionNumber);
	
	monster.transform.position = desiredPosition.transform.position;
	monster.transform.LookAt(GameObject.Find("Positions/0").transform);
	desiredPosition.GetComponent("PositionControlScript").initialCharacter = monster.transform;
	monster.GetComponent("CharacterControlScript").playerSide = side;
}

function turnOffPositionLight() {
	positionLight.enabled = false;
}

function turnOnPositionLight() {
	positionLight.enabled = true;
}

//for web player control only
//--- start ---
/*
function OnMouseDown() {
	onSelection();
}
*/
//--- end ---

function onSelection() {
	if(isActive == true){
		if(currentSelectedPosition != null){
			currentSelectedPosition.isSelected = false;
		}
		currentSelectedPosition = this;
		isSelected = true;
		currentSelectedCharacter.destinationPosition = this;
		CameraControlScript.isDestinationPositionSelected = true;
		
		//setPositionInactive();
	}
}

function setPositionActive() {
	isActive = true;
	turnOnPositionLight();
	//print("setPositionActive");
}

function setPositionInactive() {
	isActive = false;
	shouldBeActive = false;
	turnOffPositionLight();
	isSelected = false;
	//debug
	//print("setPositionInactive");
}