/****************************************************
 * 	Xianzhe Ma @ University of Southern California 	*
 *			maxianzhe@gmail.com   					*  
 ****************************************************/


//global
static var currentSelectedCharacter : CharacterControlScript = null;
static var isAnyCharacterCurrentlyMoving : boolean = false;
static var centerPosition : GameObject = null;

static var monsterInfo : String = "Monster Info\n" + "Attack: " + "\nDefense: " + "\nMovement: ";

static var playerTurn : Side = Side.Player1;
static var movesLeft : int = 2;

static var counter : int = 0;

static var outcome : OutcomeScript;

//attributes
var isMovable : boolean;

var destinationPosition : PositionControlScript;
var characterMovingSpeed : float;
var currentPosition : PositionControlScript;

enum Side {Player1, Player2};

var playerSide : Side;

var currentMonster;

//components
private var characterLight : Light;

function Start() {
	
	//global
	centerPosition = GameObject.Find("Positions/0");
	outcome = GameObject.Find("Main Camera").GetComponent("OutcomeScript");
	
	//components
	characterLight = transform.Find("CharacterLight").GetComponent.<Light>();
	turnOffCharacterLight();
	
	//attributes
	isMovable = false;
	
	destinationPosition = null;
	characterMovingSpeed = 0.02;
	
	initializeCurrentMonster();
}

function Update () {
	if( isMovable == true ) {
		moveCharacter();
	}	
}

function OnGUI() {
	GUI.Label (Rect (3, 3, 130, 100), monsterInfo);
	GUI.Label (Rect (380, 3, 130, 50), playerTurn + " 's Turn\n" + movesLeft + " Moves left" );
}

function initializeCurrentMonster() {
	if( gameObject.name == "ghhhk" ) {
		currentMonster = new Ghhhk();
	}else if( gameObject.name == "grimtaash" ) {
		currentMonster = new Grimtaash();
	}else if( gameObject.name == "houjix" ) {
		currentMonster = new Houjix();
	}else if( gameObject.name == "monnok" ) {
		currentMonster = new Monnok();
	}else if( gameObject.name == "ngok" ) {
		currentMonster = new Ngok();
	}else if( gameObject.name == "savrip" ) {
		currentMonster = new Savrip();
	}else if( gameObject.name == "slug" ) {
		currentMonster = new Slug();
	}else if( gameObject.name == "strider" ) {
		currentMonster = new Strider();
	}else{
		print("no monster matched.");
	}
}


// for web player controll only
//--- start ---
/*
function OnMouseDown() {
    onSelection();
}
*/

function updateMonsterInfo() {
	monsterInfo = 	playerSide + "\n" +
					currentMonster.name +
					"\nAttack: " + currentMonster.attackRating +
					"\nDefense: " + currentMonster.defenseRating +
					"\nMovement: " + currentMonster.movementRating;
}
//--- end of web player ---

function onSelection() {
	if( isAnyCharacterCurrentlyMoving == false ) {
		if( currentSelectedCharacter == null ) {
			if( this.playerSide == playerTurn) {
				onSelectionFirstCharacter();
			}else{
				return;
			}
		}else if( this.playerSide == currentSelectedCharacter.playerSide ) {
			print("onSelection() :: currentSelectedCharacter : " + currentSelectedCharacter.gameObject.name);
			onSelectionCharacterSameSide();
		}else{
			onSelectionCharacterDifferentSide();
		}
	}
}

function onSelectionFirstCharacter() {
	print("onSelectionFirstCharacter()");
	makeAllPositionsInactive();
	currentSelectedCharacter = this;
	setActive();
	//calculatePossiblePositionToMove(currentPosition.gameObject,currentMonster.movementRating,currentPosition.gameObject);
	currentSelectedCharacter.calculatePossiblePositionToMove();
	updateMonsterInfo();
}

function onSelectionCharacterSameSide() {
	print("onSelectionCharacterSameSide()");
	if( currentSelectedCharacter != this ) {
		makeAllPositionsInactive();
		switchToNewSelectedCharacter();
		currentSelectedCharacter = this;
		setActive();
		//calculatePossiblePositionToMove(currentPosition.gameObject,currentMonster.movementRating,currentPosition.gameObject);
		currentSelectedCharacter.calculatePossiblePositionToMove();
	}
	updateMonsterInfo();
}

function onSelectionCharacterDifferentSide() {
	print("onSelectionCharacterDifferentSide()");
	if ( isWithinAttackingRange() == true ) {
		currentSelectedCharacter.transform.LookAt(transform);
		currentSelectedCharacter.playAttackAnimation();
		//yield WaitForSeconds (1);
		//yield WaitForSeconds (currentSelectedCharacter.animation["Attack"].length/3);
		yield WaitForSeconds ((GetComponent.<Animation>() as Animation)["Attack"].length/3);
		//this.playDamageAnimation();
		this.playDeathAnimation();
		//yield WaitForSeconds (animation["Death"].length + 0.5);
		yield WaitForSeconds ((GetComponent.<Animation>() as Animation)["Death"].length + 0.5);
		print(gameObject.name);
		print( outcome );
		outcome.killOneMonster(this);
		makeAllPositionsInactive();
		movesLeft--;
		currentSelectedCharacter.determinePlayerTurn();
		print(gameObject.name + " determinePlayerTurn() is over.");
		currentSelectedCharacter.transform.LookAt(centerPosition.transform);
		currentSelectedCharacter = null;
		return;
		//offSelection();
		//print("4 " + currentSelectedCharacter.gameObject.name);
	}else{
		print("cannot attack 2");
	}
	//TODO : turn attacker to face the center
	//currentSelectedCharacter.transform.LookAt(centerPosition.transform);
}

function calculatePossiblePositionToMove() {
	var currentPositionNumber : int = int.Parse(currentPosition.gameObject.name);
	if( currentPositionNumber == 0 ) {
		//at dejarik position, only has the reverse dejarik move to perform
		for( var i : int = 13; i <= 24; i++) {
			var tempPosition : GameObject = GameObject.Find("Positions/" + i);
			var middlePosition : GameObject = GameObject.Find("Positions/" + (i-12));
			if( tempPosition.GetComponent("PositionControlScript").isOccupied == false && 
				middlePosition.GetComponent("PositionControlScript").isOccupied == false ) {
					
				tempPosition.GetComponent("PositionControlScript").shouldBeActive = true;
				
			}
		}
	}else if( currentPositionNumber >= 1 && currentPositionNumber <= 12 ) {
		//at inner ring (combat zone), only has the home move to perform
		tempPosition = GameObject.Find("Positions/" + (currentPositionNumber + 12));
		if( tempPosition.GetComponent("PositionControlScript").isOccupied == false ) {
			tempPosition.GetComponent("PositionControlScript").shouldBeActive = true;
		}
	}else if( currentPositionNumber >= 13 && currentPositionNumber <= 24 ) {
		//at outer ring, several moves
		//	1, dejarik move
		tempPosition = GameObject.Find("Positions/0");
		if(tempPosition.GetComponent("PositionControlScript").isOccupied == false ) {
			tempPosition.GetComponent("PositionControlScript").shouldBeActive = true;
		}
		//	2, exit move(into inner ring)
		// 		2.1, straight move
		tempPosition = GameObject.Find("Positions/" + (currentPositionNumber - 12 ));
		if(tempPosition.GetComponent("PositionControlScript").isOccupied == false) {
			tempPosition.GetComponent("PositionControlScript").shouldBeActive = true;
		}
		//		2.2, diagonal move
		var frontPosition : GameObject = GameObject.Find("Positions/" + (currentPositionNumber - 12) );
		if( frontPosition.GetComponent("PositionControlScript").isOccupied == false ) {
			//left diagonal
			var frontPositionNumber = int.Parse(frontPosition.name);
			if( frontPositionNumber == 12 ) {
				tempPosition = GameObject.Find("Positions/1");
			}else{
				tempPosition = GameObject.Find("Positions/" + (frontPositionNumber+1));
			}
			var outerPosition : GameObject = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name)+12) );
			
			while ( outerPosition.GetComponent("PositionControlScript").isOccupied == true && 
				tempPosition.GetComponent("PositionControlScript").isOccupied == false ) {
				var outerPositionOccupyingCharacter : CharacterControlScript = outerPosition.GetComponent("PositionControlScript").currentOccupyingCharacter;
				if( outerPositionOccupyingCharacter.playerTurn == this.playerTurn ) {
					if( int.Parse(tempPosition.name) == 11 ) {
						tempPosition = GameObject.Find( "Positions/1" );
					}else if( int.Parse(tempPosition.name) == 12 ) {
						tempPosition = GameObject.Find( "Positions/2" );
					}else{
						tempPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name) + 2) );
					}
					outerPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name)+12) );
				}
			}
			tempPosition.GetComponent("PositionControlScript").shouldBeActive = true;
			//right diagonal
			frontPositionNumber = int.Parse(frontPosition.name);
			if( frontPositionNumber == 1 ) {
				tempPosition = GameObject.Find("Positions/12");
			}else{
				tempPosition = GameObject.Find("Positions/" + (frontPositionNumber-1));
			}
			outerPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name)+12) );
			
			while ( outerPosition.GetComponent("PositionControlScript").isOccupied == true && 
				tempPosition.GetComponent("PositionControlScript").isOccupied == false ) {
				outerPositionOccupyingCharacter = outerPosition.GetComponent("PositionControlScript").currentOccupyingCharacter;
				if( outerPositionOccupyingCharacter.playerTurn == this.playerTurn ) {
					if( int.Parse(tempPosition.name) == 2 ) {
						tempPosition = GameObject.Find( "Positions/12" );
					}else if( int.Parse(tempPosition.name) == 1 ) {
						tempPosition = GameObject.Find( "Positions/11" );
					}else{
						tempPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name) - 2) );
					}
					outerPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name)+12) );
				}
			}
			tempPosition.GetComponent("PositionControlScript").shouldBeActive = true;
		}
		//		2.3, double diagonal
		frontPosition = GameObject.Find("Positions/" + (currentPositionNumber - 12) );
		if( frontPosition.GetComponent("PositionControlScript").isOccupied == false ) {
			//left double diagonal
			frontPositionNumber = int.Parse(frontPosition.name);
			var leftPosition : GameObject;
			var leftFrontPosition : GameObject;
			if( frontPositionNumber == 12 ) {
				leftFrontPosition = GameObject.Find("Positions/1");
				leftPosition = GameObject.Find("Positions/13");
			}else{
				leftFrontPosition = GameObject.Find("Positions/" + (frontPositionNumber+1));
				leftPosition = GameObject.Find("Positions/" + (frontPositionNumber+1+12));
			}
			if( leftFrontPosition.GetComponent("PositionControlScript").isOccupied == false && 
				leftPosition.GetComponent("PositionControlScript").isOccupied == false ) {
				if( frontPositionNumber + 2 > 12 ) {
					tempPosition = GameObject.Find("Positions/" + (frontPositionNumber + 2 - 12));
				}else{
					tempPosition = GameObject.Find("Positions/" + (frontPositionNumber + 2));
				}
				while ( outerPosition.GetComponent("PositionControlScript").isOccupied == true && 
					tempPosition.GetComponent("PositionControlScript").isOccupied == false ) {
					outerPositionOccupyingCharacter = outerPosition.GetComponent("PositionControlScript").currentOccupyingCharacter;
					if( outerPositionOccupyingCharacter.playerTurn == this.playerTurn ) {
						if( int.Parse(tempPosition.name) == 11 ) {
							tempPosition = GameObject.Find( "Positions/1" );
						}else if( int.Parse(tempPosition.name) == 12 ) {
							tempPosition = GameObject.Find( "Positions/2" );
						}else{
							tempPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name) + 2) );
						}
						outerPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name)+12) );
					}
				}
				tempPosition.GetComponent("PositionControlScript").shouldBeActive = true;
			}
			//right double diagonal
			frontPositionNumber = int.Parse(frontPosition.name);
			var rightPosition : GameObject;
			var rightFrontPosition : GameObject;
			if( frontPositionNumber == 1 ) {
				rightFrontPosition = GameObject.Find("Positions/12");
				rightPosition = GameObject.Find("Positions/24");
			}else{
				rightFrontPosition = GameObject.Find("Positions/" + (frontPositionNumber-1));
				rightPosition = GameObject.Find("Positions/" + (frontPositionNumber-1+12));
			}
			if( rightFrontPosition.GetComponent("PositionControlScript").isOccupied == false && 
				rightPosition.GetComponent("PositionControlScript").isOccupied == false ) {
				if( frontPositionNumber - 2 < 1 ) {
					tempPosition = GameObject.Find("Positions/" + (frontPositionNumber - 2 + 12));
				}else{
					tempPosition = GameObject.Find("Positions/" + (frontPositionNumber - 2));
				}
				while ( outerPosition.GetComponent("PositionControlScript").isOccupied == true && 
					tempPosition.GetComponent("PositionControlScript").isOccupied == false ) {
					outerPositionOccupyingCharacter = outerPosition.GetComponent("PositionControlScript").currentOccupyingCharacter;
					if( outerPositionOccupyingCharacter.playerTurn == this.playerTurn ) {
						if( int.Parse(tempPosition.name) == 1 ) {
							tempPosition = GameObject.Find( "Positions/11" );
						}else if( int.Parse(tempPosition.name) == 2 ) {
							tempPosition = GameObject.Find( "Positions/12" );
						}else{
							tempPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name) - 2) );
						}
						outerPosition = GameObject.Find( "Positions/" + (int.Parse(tempPosition.name)+12) );
					}
				}
				tempPosition.GetComponent("PositionControlScript").shouldBeActive = true;
			}
		}
	}
}
/*
function calculatePossiblePositionToMoveOldEdition( from : GameObject, steps : int, prior : GameObject ) {
//	print("calculatePossiblePositionToMove() called");
//	print("From : " + from.name);
//	print("Steps : " + steps);
//	print("Prior : " + prior.name);
	
//	makeAllPositionPossibleToMove();

	if( steps == 0 ){
		if(from.GetComponent("PositionControlScript").isOccupied == false){
//			print("make it possible to move");
			from.GetComponent("PositionControlScript").shouldBeActive = true;
		}else{
			return;
		}
	}else{
		var tempPosition : GameObject;
		var fromPositionNumber : int = int.Parse(from.name);
		if( fromPositionNumber == 0 ){
//			print("from 0");
			for( var i : int = 1; i <= 12; i++) {
				tempPosition = GameObject.Find( "Positions/" + i );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}else{
					return;
				}
			}
		}else if( fromPositionNumber >=1 && fromPositionNumber <= 12 ){
//			print("from 1--12");
			//move forward
			tempPosition = GameObject.Find( "Positions/0" );
			if(tempPosition != prior){
				calculatePossiblePositionToMove( tempPosition,steps-1,from);
			}
			//move back
			tempPosition = GameObject.Find( "Positions/" + (fromPositionNumber+12) );
			if(tempPosition != prior){
				calculatePossiblePositionToMove( tempPosition,steps-1,from);
			}
			//move left
			if(fromPositionNumber == 12) {
				tempPosition = GameObject.Find( "Positions/" + 1 );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}
			}else{
				tempPosition = GameObject.Find( "Positions/" + (fromPositionNumber+1) );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}
			}
			//move right
			if(fromPositionNumber == 1) {
				tempPosition = GameObject.Find( "Positions/" + 12 );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}
			}else{
				tempPosition = GameObject.Find( "Positions/" + (fromPositionNumber - 1) );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}
			}
		}else if( fromPositionNumber >= 13 && fromPositionNumber <= 24 ) {
//			print("from 13--24");
			//move forward
			tempPosition = GameObject.Find( "Positions/" + (fromPositionNumber - 12) );
			if(tempPosition != prior){
				calculatePossiblePositionToMove( tempPosition,steps-1,from);
			}
			//move left
			if(fromPositionNumber == 24) {
				tempPosition = GameObject.Find( "Positions/" + 13 );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}
			}else{
				tempPosition = GameObject.Find( "Positions/" + (fromPositionNumber+1) );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}
			}
			//move right
			if(fromPositionNumber == 13) {
				tempPosition = GameObject.Find( "Positions/" + 24 );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}
			}else{
				tempPosition = GameObject.Find( "Positions/" + (fromPositionNumber-1) );
				if(tempPosition != prior){
					calculatePossiblePositionToMove( tempPosition,steps-1,from);
				}
			}
		}
	}	
}
*/

function makeAllPositionPossibleToMove() {
	GameObject.Find("Positions/0").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/1").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/2").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/3").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/4").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/5").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/6").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/7").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/8").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/9").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/10").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/11").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/12").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/13").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/14").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/15").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/16").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/17").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/18").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/19").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/20").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/21").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/22").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/23").GetComponent("PositionControlScript").shouldBeActive = true;
	GameObject.Find("Positions/24").GetComponent("PositionControlScript").shouldBeActive = true;
}

function switchToNewSelectedCharacter() {
	if( currentSelectedCharacter != null ) {
		currentSelectedCharacter.turnOffCharacterLight();
	}
}

function setActive() {
	currentSelectedCharacter = this;
	turnOnCharacterLight();
}

function turnOnCharacterLight() {
	characterLight.enabled = true;
}

function isWithinAttackingRange() {
	var attackerPositionNumber : int = int.Parse(currentSelectedCharacter.currentPosition.gameObject.name);
	var victimPositionNumber : int = int.Parse(this.currentPosition.gameObject.name);
	if( attackerPositionNumber >= 1 && attackerPositionNumber <= 12 && victimPositionNumber >= 1 && victimPositionNumber <= 12 ){
		//both in inner ring
		if( attackerPositionNumber == 1 ) {
			if( victimPositionNumber == 2 || victimPositionNumber == 12 ) {
				return true;
			}else{
				return false;
			}
		}else if(attackerPositionNumber == 12 ) {
			if( victimPositionNumber == 1 || victimPositionNumber == 11 ) {
				return true;
			}else{
				return false;
			}
		}else{
			if( victimPositionNumber == (attackerPositionNumber + 1) || victimPositionNumber == (attackerPositionNumber - 1) ) {
				return true;
			}else{
				return false;
			}
		}		
	}else{
		return false;
	}
}

/*
function isWithinAttackingRange() {
	
	var attackerPosition : int = int.Parse(currentSelectedCharacter.currentPosition.gameObject.name);
//	print("attacker's position: " + attackerPosition);
	var victimPosition : int = int.Parse(this.currentPosition.gameObject.name);
//	print("victim's position: " + victimPosition);
	
	
	if( attackerPosition == 0 ) {
		if( victimPosition >=1 && victimPosition<=12 ) {
			return true;
		}else{
			return false;
		}
	}else if( attackerPosition >=1 && attackerPosition <= 12 ){
		if( victimPosition == 0 || ((victimPosition == attackerPosition+1 || victimPosition == attackerPosition-1 || victimPosition == attackerPosition+11) && victimPosition >= 1 && victimPosition <= 12) || victimPosition == attackerPosition+12 ) {
			return true;
		}else{
			return false;
		}
	}else if( attackerPosition >= 13 && attackerPosition <= 24 ) {
		if( (victimPosition >= 13 && victimPosition <= 24) && (victimPosition == attackerPosition + 1 || victimPosition == attackerPosition - 1 ) || victimPosition == attackerPosition - 12 ) {
			return true;
		}else{
			return false;
		}
	}
	
}
*/
/*
function offSelection() {
	print(gameObject.name + "offSelection()");
	currentSelectedCharacter.turnOffCharacterLight();
	//this.turnOffCharacterLight();
	currentSelectedCharacter = null;
}
*/
function turnOffCharacterLight() {
	//print("light off");
	characterLight.enabled = false;
}

function moveCharacter() {
	isAnyCharacterCurrentlyMoving = true;
	makeAllPositionsInactive();
	playWalkAnimation();
	if(destinationPosition == null)
		return;
	transform.LookAt(destinationPosition.transform);
	if(Vector3.Distance(transform.position,destinationPosition.transform.position) < characterMovingSpeed ){
		transform.position = destinationPosition.transform.position;
	}else{
		transform.position += characterMovingSpeed * ( (destinationPosition.transform.position - transform.position).normalized);
	}
		
	
	if( destinationPosition.transform.position == transform.position ){
		//reach destination
		playIdleAnimation();
		isMovable = false;
		
		destinationPosition.setPositionInactive();
		destinationPosition.isOccupied = true;
		
		currentPosition.isOccupied = false;
		currentPosition = destinationPosition;
		
		destinationPosition = null;
		
		transform.LookAt(centerPosition.transform);
		
		isAnyCharacterCurrentlyMoving = false;
		
		movesLeft--;
		determinePlayerTurn();
		currentSelectedCharacter = null;
	}
}

function determinePlayerTurn() {
	print(gameObject.name + "determinePlayerTurn()");
	if( movesLeft == 0 ) {
		print("time to change turn");
		if(playerTurn == Side.Player1) {
			playerTurn = Side.Player2;
		}else if(playerTurn == Side.Player2){
			playerTurn = Side.Player1;
		}
		movesLeft = 2;
	}
	resetMonsterInfo();
	print(gameObject.name + " ...");
	print(gameObject.name +" movesLeft: " + movesLeft);
	print(gameObject.name +" playerTurn: " + playerTurn);
	print(gameObject.name + " ---");
}

function makeAllPositionsInactive() {
	GameObject.Find("Positions/0").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/1").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/2").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/3").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/4").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/5").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/6").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/7").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/8").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/9").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/10").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/11").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/12").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/13").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/14").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/15").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/16").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/17").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/18").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/19").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/20").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/21").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/22").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/23").GetComponent("PositionControlScript").setPositionInactive();
	GameObject.Find("Positions/24").GetComponent("PositionControlScript").setPositionInactive();
}

function playWalkAnimation() {
	GetComponent.<Animation>().CrossFade("Walk");
}

function playIdleAnimation() {
	turnOffCharacterLight();
	GetComponent.<Animation>().CrossFade("Idle_1");
}

function playAttackAnimation() {
	print(gameObject.name + " playAttackAnimation()");
	//print(animation["Attack"].length);
	turnOffCharacterLight();
	GetComponent.<Animation>().CrossFade("Attack");
	//yield WaitForSeconds (animation["Attack"].length/2);
}

function playDamageAnimation() {
	print(gameObject.name + " playDamageAnimation()");
	GetComponent.<Animation>().CrossFade("Damage");	
}

function playDeathAnimation() {
	print(gameObject.name + "playDeathAnimation()");
	GetComponent.<Animation>().CrossFade("Death");
}

function resetMonsterInfo() {
	monsterInfo = "Monster Info\n" + "Attack: " + "\nDefense: " + "\nMovement: ";
}

// base character class/object
class Ghhhk {
	var name = "Ghhhk";
	var attackRating = 4;
	var defenseRating = 3;
	var movementRating = 2;
}

class Grimtaash{
	var name = "Grimtaash";
	var attackRating = 8;
	var defenseRating = 2;
	var movementRating = 2;
}

class Houjix {
	var name = "Houjix";
	var attackRating = 4;
	var defenseRating = 4;
	var movementRating = 1;
}

class Monnok {
	var name = "Monnok";
	var attackRating = 6;
	var defenseRating = 5;
	var movementRating = 3;
}

class Ngok{
	var name = "Ngok";
	var attackRating = 3;
	var defenseRating = 8;
	var movementRating = 1;
}

class Savrip {
	var name = "Savrip";
	var attackRating = 6;
	var defenseRating = 6;
	var movementRating = 2;
}

class Slug {
	var name = "Slug";
	var attackRating = 7;
	var defenseRating = 3;
	var movementRating = 2;
}

class Strider{
	var name = "Strider";
	var attackRating = 2;
	var defenseRating = 7;
	var movementRating = 3;
}
