static var playerOneFinalScore : int = 0;
static var playerTwoFinalScore : int = 0;

static var playerOneMonsterAmount : int = 4;
static var playerTwoMonsterAmount : int = 4;

static var gameOver : boolean = false;

function Update () {
	if( playerOneMonsterAmount == 2 ) {
		//player two wins 2 points
		playerTwoFinalScore = 2;
		print("playerTwoFinalScore = 2;");
		gameOver = true;
	}
	if( playerTwoMonsterAmount == 2 ) {
		playerOneFinalScore = 2;
		gameOver = true;
	}
	if( playerOneMonsterAmount == 3 ) {
		//calculation
	}
	if( playerTwoMonsterAmount == 3 ) {
		//calculation
	}
	if( playerOneMonsterAmount == 4 && playerTwoMonsterAmount == 4 ) {
		//calculation
	}
	if(gameOver == true) {
		Application.LoadLevel("GameOverScene");
	}
}



function killOneMonster( victim : CharacterControlScript ) {
	print("kill " + victim.gameObject.name);
	if( victim.playerSide == Side.Player1 ) {
		playerOneMonsterAmount --;
	}else{
		playerTwoMonsterAmount --;
	}
	var renderers = victim.gameObject.GetComponentsInChildren(Renderer);
	for( i=0; i<renderers.length;i++){
		print(renderers[i].gameObject.name);
		renderers[i].enabled = false;
	}
	//victim.gameObject.GetComponentsInChildren(Renderer).enabled = false;
	victim.gameObject.active = false;
}		