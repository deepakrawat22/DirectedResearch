# DirectedResearch
Making anaglyph renderer in unity

Instructions:-
- Open scene "MainGameScene2.unity"
- For Anaglyph:-
	Enable AnaglyphizerC script with variable AnaglyphMat as "HalfColorAnaglyphs" and preset shader with "ColorBalancedAnaglyph"
- For ForcedPerspective:-
	Enable ForcedPerspective script.
	Set variable lookTarget to the Table object
	Set variable corners to 4.
	Add Element 0 -> C4 object
	 	Element 1 -> C3 object
	 	Element 2 -> C2 object
	 	Element 3 -> C1 object
- For forced perspective with anaglyph:-
	Enable CombinedPerspective script.
	Set variable AnaglyphMat as "HalfColorAnaglyphs" and preset shader with "ColorBalancedAnaglyph"
	Set variable lookTarget to the Table object
	Set variable corners to 4.
	Add Element 0 -> C4 object
	 	Element 1 -> C3 object
	 	Element 2 -> C2 object
	 	Element 3 -> C1 object
	Refer to http://forum.unity3d.com/threads/using-projection-matrix-to-create-holographic-effect.291123/ for explanation

