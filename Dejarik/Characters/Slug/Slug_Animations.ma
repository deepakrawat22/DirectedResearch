//Maya ASCII 7.0 scene
//Name: slug_animations.ma
//Last modified: Sat, Oct 09, 2010 06:52:46 PM
requires maya "7.0";
currentUnit -l foot -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 7.0";
fileInfo "version" "7.0.1";
fileInfo "cutIdentifier" "200511200915-660870";
fileInfo "osv" "Professional  (Build 7600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 6.9946881448862817 3.3808378364489209 7.8181889231655335 ;
	setAttr ".r" -type "double3" -7.5744376679190371 -4640.5999999996493 360.00000000000085 ;
	setAttr ".rp" -type "double3" -2.9139711932418806e-017 -2.3311769545935046e-015 
		3.7298831273496072e-015 ;
	setAttr ".rpt" -type "double3" -6.259504886715094e-015 1.5350414789414016e-015 -5.4315012028512657e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".coi" 10.205119511881561;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 4.2224452477422574 106.71437310787584 5.6379893794985492 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.17579535546037051 100.34385990043151 -1.1709692030177989 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".coi" 100.1;
	setAttr ".ow" 2.6249308433961938;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.38777312049063722 0.8090836184978939 100.37682279262501 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".coi" 100.1;
	setAttr ".ow" 7.7448126890574507;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.20936611474792 2.8520080601343407 1.8384184778342538 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".coi" 100.1;
	setAttr ".ow" 3.3833396593214253;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "slug_skeleton_FK";
	setAttr ".rp" -type "double3" -1.3304679609412417e-010 1.8643261980581327 -0.99472546729093159 ;
	setAttr ".sp" -type "double3" -1.3304679609412417e-010 1.8643261980581327 -0.99472546729093159 ;
createNode joint -n "slug_Joint_Root_FK" -p "slug_skeleton_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Waist_FK" -p "slug_Joint_Root_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Chest_FK" -p "slug_Joint_Waist_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Chest2_FK" -p "slug_Joint_Chest_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Chest3_FK" -p "slug_Joint_Chest2_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Mid_Chest_FK" -p "slug_Joint_Chest3_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Neck1_FK" -p "slug_Joint_Mid_Chest_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Head_FK" -p "slug_Joint_Neck1_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Head_End_FK" -p "slug_Joint_Head_FK";
	setAttr ".t" -type "double3" 0 0.82110553313954315 -0.023139245383292355 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_Head_FK_orientConstraint1" -p "slug_Joint_Head_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_HeadW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -10.026042570665414 11.185514292201001 1.7956514930449838 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Head_FK_parentConstraint1" -p "slug_Joint_Head_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_HeadW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1655884772967523e-016 4.662353909187009e-016 
		-2.3311769545935045e-016 ;
	setAttr ".rst" -type "double3" 0 0.38618869036175674 0.18205821325581711 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Neck1_FK_orientConstraint1" -p "slug_Joint_Neck1_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Neck1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 39.762045149939162 4.4980196060685129 -6.8851065157161333 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Neck1_FK_parentConstraint1" -p "slug_Joint_Neck1_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Neck1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.6564008508577675e-030 0 -6.9935308637805131e-016 ;
	setAttr ".rst" -type "double3" 0 0.51430372931955548 0.10114345180878735 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_Neck1_IK" -p "slug_Joint_Mid_Chest_FK";
	setAttr ".t" -type "double3" 0 0.51430372931955548 0.10114345180878735 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Shoulder_FK" -p "slug_Joint_Mid_Chest_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Arm_FK" -p "slug_Joint_L_Shoulder_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_L_Arm_FK_orientConstraint1" -p "slug_Joint_L_Arm_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_ArmW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 35.024628837664871 -12.446445667745646 -35.249282157607638 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Arm_FK_parentConstraint1" -p "slug_Joint_L_Arm_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_ArmW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3311769545935045e-016 9.3247078183740181e-016 
		-6.9935308637805131e-016 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270335e-015 4.3216367578869309e-014 
		-2.4700632838639468e-014 ;
	setAttr ".rst" -type "double3" 0.18678507263273222 -0.0013139613630140587 0.00828652805502046 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_L_Elbow_FK" -p "slug_Joint_L_Arm_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_L_Elbow_FK_orientConstraint1" -p "slug_Joint_L_Elbow_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_ElbowW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 -25.109773642267267 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Elbow_FK_parentConstraint1" -p "slug_Joint_L_Elbow_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_ElbowW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -6.9935308637805131e-016 0 4.662353909187009e-016 ;
	setAttr ".rst" -type "double3" 1.1936694810959889 2.0370429861563411 1.4291248938406751 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_L_Forearm_FK" -p "slug_Joint_L_Elbow_FK";
	setAttr ".t" -type "double3" 0.21908229073371349 -0.0044826853527594329 0.022872500000000545 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ra" -type "double3" 89.878925890441138 -1.159538841372808 5.9613933231384673 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.87829304726371 -5.9589298695510911 -1.1721765231057812 ;
createNode joint -n "slug_Joint_L_Wrist_FK" -p "slug_Joint_L_Forearm_FK";
	setAttr ".t" -type "double3" 0.21908229073371396 -0.0044826853527591996 0.022872500000000545 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_L_Wrist_FK_orientConstraint1" -p "slug_Joint_L_Wrist_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_HandW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0.53881045256955584 -31.927136763985484 0.68824905391136948 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_L_Arm_IK" -p "slug_Joint_L_Shoulder_FK";
	setAttr ".t" -type "double3" 0.18678507263273222 -0.0013139613630145249 0.00828652805502046 ;
	setAttr ".r" -type "double3" -9.9803824526807361 -29.893231732534606 -28.760408480972806 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Elbow_IK" -p "slug_Joint_L_Arm_IK";
	setAttr ".t" -type "double3" 0.40923981431746864 9.3247078183740181e-016 -0.045744999999998523 ;
	setAttr ".r" -type "double3" 0.12884005556700992 12.33701365981851 1.1833574397232478 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Forearm_IK" -p "slug_Joint_L_Elbow_IK";
	setAttr ".t" -type "double3" 0.21908229073371349 -0.0044826853527594329 0.022872500000000545 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ra" -type "double3" 89.878925890441138 -1.159538841372808 5.9613933231384673 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.87829304726371 -5.9589298695510884 -1.172176523105781 ;
createNode joint -n "slug_Joint_L_Wrist_IK" -p "slug_Joint_L_Elbow_IK";
	setAttr ".t" -type "double3" 0.43816458146742743 -0.0089653707055186316 0.04574500000000109 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_L_Wrist_IK_orientConstraint1" -p "slug_Joint_L_Wrist_IK";
	addAttr -ci true -k true -sn "w0" -ln "Const_Joint_L_Wrist_IKW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 34.337378911623553 26.51872247248301 36.042643478560898 ;
	setAttr -k on ".w0";
createNode ikEffector -n "slug_effector6" -p "slug_Joint_L_Elbow_IK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "slug_Joint_L_Shoulder_FK_orientConstraint1" -p "slug_Joint_L_Shoulder_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_ShoulderW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Shoulder_FK_parentConstraint1" -p "slug_Joint_L_Shoulder_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_ShoulderW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.1655884772967523e-016 0 -4.662353909187009e-016 ;
	setAttr ".rst" -type "double3" 0.59764459414578797 0.019261334035897238 0.0020716320137542988 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Shoulder_FK" -p "slug_Joint_Mid_Chest_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Arm_FK" -p "slug_Joint_R_Shoulder_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_R_Arm_FK_orientConstraint1" -p "slug_Joint_R_Arm_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_ArmW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 33.69304572190228 24.225190198053596 46.081120274736442 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Arm_FK_parentConstraint1" -p "slug_Joint_R_Arm_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_ArmW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 6.9935308637805131e-016 -2.3311769545935045e-016 ;
	setAttr ".tg[0].tor" -type "double3" 6.3611093629270335e-015 -1.7771930127161171e-014 
		2.4700632838639468e-014 ;
	setAttr ".rst" -type "double3" -0.18678507263273222 -0.0013139613630142918 0.0082865280550209249 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Elbow_FK" -p "slug_Joint_R_Arm_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_R_Elbow_FK_orientConstraint1" -p "slug_Joint_R_Elbow_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_ElbowW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 14.557603042760812 0 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Elbow_FK_parentConstraint1" -p "slug_Joint_R_Elbow_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_ElbowW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -9.3247078183740181e-016 -2.3311769545935045e-016 
		0 ;
	setAttr ".rst" -type "double3" -1.1936694810959889 2.0370429861563411 1.4291248938406753 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Forearm_FK" -p "slug_Joint_R_Elbow_FK";
	setAttr ".t" -type "double3" -0.21908229073371371 -0.0044826853527589663 0.022872500000000778 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ra" -type "double3" 90.121074109558904 -1.1595388413727974 -5.9613933231384362 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.12232771161033912 8.2906083215451254 1.1771803778761103 ;
createNode joint -n "slug_Joint_R_Wrist_FK" -p "slug_Joint_R_Forearm_FK";
	setAttr ".t" -type "double3" -0.21908229073371371 -0.0044826853527594329 0.022872500000000545 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.380340740813395 4.7545076966989157 7.1505009850247383 ;
createNode orientConstraint -n "slug_Joint_R_Wrist_FK_orientConstraint1" -p "slug_Joint_R_Wrist_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_HandW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 2.2779418680006316e-014 39.831429919111727 4.5575608291367669 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 6.6208594470752379e-032 
		-5.9635400277440939e-016 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Arm_IK" -p "slug_Joint_R_Shoulder_FK";
	setAttr ".t" -type "double3" -0.18678507263273222 -0.0013139613630145249 0.0082865280550209249 ;
	setAttr ".r" -type "double3" 36.121769751894419 69.676085531385056 52.707013814447038 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Elbow_IK" -p "slug_Joint_R_Arm_IK";
	setAttr ".t" -type "double3" -0.40923981431746864 6.9935308637805131e-016 -0.045744999999998988 ;
	setAttr ".r" -type "double3" 0.12906576953415297 -12.337247706533224 -1.1813462602161244 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Forearm_IK" -p "slug_Joint_R_Elbow_IK";
	setAttr ".t" -type "double3" -0.21908229073371371 -0.0044826853527589663 0.022872500000000778 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ra" -type "double3" 90.121074109558904 -1.1595388413727974 -5.9613933231384362 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.12232771161033912 8.2906083215451236 1.1771803778761103 ;
createNode joint -n "slug_Joint_R_Wrist_IK" -p "slug_Joint_R_Elbow_IK";
	setAttr ".t" -type "double3" -0.43816458146742743 -0.0089653707055183992 0.04574500000000109 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_R_Wrist_IK_orientConstraint1" -p "slug_Joint_R_Wrist_IK";
	addAttr -ci true -k true -sn "w0" -ln "Const_Joint_R_Wrist_IKW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 32.83299063134087 -43.04655062818199 -30.879838576069947 ;
	setAttr -k on ".w0";
createNode ikEffector -n "slug_effector7" -p "slug_Joint_R_Elbow_IK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "slug_Joint_R_Shoulder_FK_orientConstraint1" -p "slug_Joint_R_Shoulder_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_ShoulderW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Shoulder_FK_parentConstraint1" -p "slug_Joint_R_Shoulder_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_ShoulderW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1655884772967523e-016 -2.3311769545935045e-016 
		0 ;
	setAttr ".rst" -type "double3" -0.59764459414578797 0.019261334035897474 0.0020716320137545321 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Mid_Chest_FK_orientConstraint1" -p "slug_Joint_Mid_Chest_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Mid_ChestW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 18.502393036792999 -2.3490063810951565 -0.43849323539279067 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Mid_Chest_FK_parentConstraint1" -p "slug_Joint_Mid_Chest_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Mid_ChestW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 -9.3247078183740181e-016 -6.9935308637805131e-016 ;
	setAttr ".rst" -type "double3" 0 0.66466465559608801 0.072101123764572408 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Chest3_FK_orientConstraint1" -p "slug_Joint_Chest3_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Chest3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 18.268194871662104 -7.7062845369324489 -3.0319636322404766 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Chest3_FK_parentConstraint1" -p "slug_Joint_Chest3_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Chest3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -4.662353909187009e-016 ;
	setAttr ".rst" -type "double3" 0 0.49471200672245075 0.59225923092327737 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Chest2_FK_orientConstraint1" -p "slug_Joint_Chest2_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Chest2W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -14.734083564389231 1.376253297826771 -8.4056575296841416 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Chest2_FK_parentConstraint1" -p "slug_Joint_Chest2_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Chest2W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.3311769545935045e-016 0 ;
	setAttr ".rst" -type "double3" 0 0.041504943059422032 0.39655618070515036 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Chest_FK_orientConstraint1" -p "slug_Joint_Chest_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_ChestW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -29.324428534581713 -7.8300495569270794 -3.8874480191814915 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Chest_FK_parentConstraint1" -p "slug_Joint_Chest_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_ChestW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 -1.7483827159451283e-016 ;
	setAttr ".rst" -type "double3" 0 -0.0040022651806592962 0.8296123522232951 ;
	setAttr -k on ".w0";
createNode ikHandle -n "slug_IK_Const_Joint_L_Front_Leg_IK" -p "slug_Joint_Chest_FK";
	setAttr ".rp" -type "double3" 1.1508910747440784 0.028310684779098119 0.39882293347373382 ;
	setAttr ".sp" -type "double3" 1.150891078366914 0.028310692441179182 0.39882293713934114 ;
	setAttr ".pv" -type "double3" 1.4256051756822461 1.4006735976565037 -0.14757830428615942 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "slug_ikHandle2_pointConstraint1" -p "slug_IK_Const_Joint_L_Front_Leg_IK";
	addAttr -ci true -k true -sn "w0" -ln "Const_Joint_L_Front_Ankle_IKW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.0014705345938395994 1.532416567510064e-008 0.0011401948217654853 ;
	setAttr -k on ".w0";
createNode ikHandle -n "slug_IK_Const_Joint_R_Front_Leg_IK" -p "slug_Joint_Chest_FK";
	setAttr ".rp" -type "double3" -1.1508910747440777 0.028310684779098354 0.39882293347373321 ;
	setAttr ".sp" -type "double3" -1.150891078366914 0.028310692441179237 0.39882293713934092 ;
	setAttr ".pv" -type "double3" -1.4256051954809525 1.400673591052803 -0.14757817570684234 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "slug_ikHandle3_pointConstraint1" -p "slug_IK_Const_Joint_R_Front_Leg_IK";
	addAttr -ci true -k true -sn "w0" -ln "Const_Joint_R_Front_Ankle_IKW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -7.2456756255432562e-009 1.5324165500262365e-008 
		7.3312185718480318e-009 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Waist_FK_orientConstraint1" -p "slug_Joint_Waist_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_WaistW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -8.7473516521218126 6.3560508686059043 8.1655179108273011 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Waist_FK_parentConstraint1" -p "slug_Joint_Waist_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_WaistW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.6564008508577675e-030 0 -2.9139711932418808e-016 ;
	setAttr ".tg[0].tor" -type "double3" -1.4740121739089736e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -0.00400226518065918 0.79037393015867963 ;
	setAttr -k on ".w0";
createNode ikHandle -n "slug_IK_Const_Joint_L_Middle_Leg_IK" -p "slug_Joint_Waist_FK";
	setAttr ".rp" -type "double3" 1.1508910723525871 0.028310679721227666 -0.38379763339111572 ;
	setAttr ".sp" -type "double3" 1.1508910771711693 0.028310689912241026 -0.38379763837333625 ;
	setAttr ".pv" -type "double3" 1.4256051931461629 1.4006735830226584 -0.14757827447548058 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "slug_ikHandle1_pointConstraint1" -p "slug_IK_Const_Joint_L_Middle_Leg_IK";
	addAttr -ci true -k true -sn "w0" -ln "Const_Joint_L_Middle_Ankle_IKW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 9.6371687533068271e-009 2.0382036128854392e-008 -9.9644454833745536e-009 ;
	setAttr -k on ".w0";
createNode ikHandle -n "slug_IK_Const_Joint_R_Middle_Leg_IK" -p "slug_Joint_Waist_FK";
	setAttr ".rp" -type "double3" -1.1508910720134178 0.028310679387467553 -0.383797633391116 ;
	setAttr ".sp" -type "double3" -1.1508910768320002 0.028310689578480708 -0.38379763837333625 ;
	setAttr ".pv" -type "double3" -1.4256051872058781 1.4006736068971808 -0.1475781052640617 ;
	setAttr ".roc" yes;
createNode pointConstraint -n "slug_ikHandle4_pointConstraint1" -p "slug_IK_Const_Joint_R_Middle_Leg_IK";
	addAttr -ci true -k true -sn "w0" -ln "Const_Joint_R_Middle_Ankle_IKW0" -bt "W000" 
		-dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -9.6371689864245217e-009 2.0382035866596984e-008 
		-9.9644450754185864e-009 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_Hip_FK" -p "slug_Joint_Root_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Tail1_FK" -p "slug_Joint_Hip_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Tail2_FK" -p "slug_Joint_Tail1_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Tail3_FK" -p "slug_Joint_Tail2_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_Tail3_FK_orientConstraint1" -p "slug_Joint_Tail3_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Tail3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -21.174459781959982 19.037265030704937 -14.03546844213778 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Tail3_FK_parentConstraint1" -p "slug_Joint_Tail3_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Tail3W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 1.1655884772967523e-016 9.3247078183740181e-016 ;
	setAttr ".rst" -type "double3" 0 -0.031391700075600208 -0.65640235091979826 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Tail2_FK_orientConstraint1" -p "slug_Joint_Tail2_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Tail2W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -7.2094956596903144 60.846718017538052 -3.3254652746835971 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Tail2_FK_parentConstraint1" -p "slug_Joint_Tail2_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Tail2W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 0 4.662353909187009e-016 ;
	setAttr ".rst" -type "double3" 0 0.0052319500126001128 -1.0121749517765997 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Tail1_FK_orientConstraint1" -p "slug_Joint_Tail1_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Tail1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 5.4385923780888739 23.261869743349674 11.656456818028019 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Tail1_FK_parentConstraint1" -p "slug_Joint_Tail1_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_Tail1W0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -1.6564008508577675e-030 1.1655884772967523e-016 
		-2.3311769545935045e-016 ;
	setAttr ".rst" -type "double3" 0 0.081026099974799856 -0.82905670133559906 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_Tail1_IK" -p "slug_Joint_Hip_FK";
	setAttr ".t" -type "double3" 0 0.081026099974799856 -0.82905670133559939 ;
	setAttr ".r" -type "double3" 27.634081806057218 37.568879808950506 21.420801457117758 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Tail2_IK" -p "slug_Joint_Tail1_IK";
	setAttr ".t" -type "double3" 0 0.0052319500125999957 -1.0121749517765994 ;
	setAttr ".r" -type "double3" 3.0329008885264166 0 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Tail3_IK" -p "slug_Joint_Tail2_IK";
	setAttr ".t" -type "double3" 0 -0.031391700075600208 -0.65640235091979926 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_Tail3_IK_orientConstraint1" -p "slug_Joint_Tail3_IK";
	addAttr -ci true -k true -sn "w0" -ln "Tail_IK_CNTRLW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -17.983853718742541 -11.588782180151657 3.9305243964140537 ;
	setAttr -k on ".w0";
createNode ikEffector -n "slug_effector5" -p "slug_Joint_Tail2_IK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "slug_Joint_L_Leg_FK" -p "slug_Joint_Hip_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Knee_FK" -p "slug_Joint_L_Leg_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Ankle_FK" -p "slug_Joint_L_Knee_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Toe_FK" -p "slug_Joint_L_Ankle_FK";
	setAttr ".t" -type "double3" 0.041146137715513051 -0.36697152739248246 0.00068929130377934768 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_L_Ankle_FK_orientConstraint1" -p "slug_Joint_L_Ankle_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_AnkleW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Ankle_FK_parentConstraint1" -p "slug_Joint_L_Ankle_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_AnkleW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -2.3311769545935045e-016 -5.8279423864837613e-017 
		6.9935308637805131e-016 ;
	setAttr ".rst" -type "double3" 0.23409498007995966 -0.30578196063944574 0.026885237046158347 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_L_Knee_FK_orientConstraint1" -p "slug_Joint_L_Knee_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_KneeW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0.1226259487282723 0.11320878840171922 0.12092894483204256 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Knee_FK_parentConstraint1" -p "slug_Joint_L_Knee_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_KneeW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 2.3311769545935045e-016 0 0 ;
	setAttr ".tg[0].tor" -type "double3" 1.444118901071901e-014 0 0 ;
	setAttr ".rst" -type "double3" 0.4930936814450198 -0.10801943036269625 -0.015824369762944098 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_L_Leg_FK_orientConstraint1" -p "slug_Joint_L_Leg_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 13.079771487951902 24.887409015830634 22.082316955565961 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Leg_FK_parentConstraint1" -p "slug_Joint_L_Leg_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_L_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 5.8279423864837613e-017 1.1655884772967523e-016 
		0 ;
	setAttr ".rst" -type "double3" 0.38255628274926062 0.074355080031076215 0.024668663661207749 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_L_Leg_IK" -p "slug_Joint_Hip_FK";
	setAttr ".t" -type "double3" 0.38255628274926057 0.074355080031076215 0.02466866366120728 ;
	setAttr ".r" -type "double3" 30.856547819256281 14.784531172681667 62.083918376761382 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Knee_IK" -p "slug_Joint_L_Leg_IK";
	setAttr ".t" -type "double3" 0.49309368144501975 -0.10801943036269625 -0.015824369762944098 ;
	setAttr ".r" -type "double3" -1.5330167534293078 -3.3581617688774128 -24.846117678956308 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Ankle_IK" -p "slug_Joint_L_Knee_IK";
	setAttr ".t" -type "double3" 0.23409498007995977 -0.30578196063944568 0.026885237046158347 ;
	setAttr ".r" -type "double3" -0.76848509076437199 -2.2769463453599514 -16.834225939254907 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Toe_IK" -p "slug_Joint_L_Ankle_IK";
	setAttr ".t" -type "double3" 0.041146137715513051 -0.36697152739248246 0.00068929130377911457 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "slug_effector2" -p "slug_Joint_L_Ankle_IK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "slug_effector1" -p "slug_Joint_L_Knee_IK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "slug_Joint_R_Leg_FK" -p "slug_Joint_Hip_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Knee_FK" -p "slug_Joint_R_Leg_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Ankle_FK" -p "slug_Joint_R_Knee_FK";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Toe_FK" -p "slug_Joint_R_Ankle_FK";
	setAttr ".t" -type "double3" -0.041146137715513051 -0.36697152739248234 0.00068929130377911457 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode orientConstraint -n "slug_Joint_R_Ankle_FK_orientConstraint1" -p "slug_Joint_R_Ankle_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_AnkleW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Ankle_FK_parentConstraint1" -p "slug_Joint_R_Ankle_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_AnkleW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" -4.662353909187009e-016 -5.8279423864837613e-017 
		4.662353909187009e-016 ;
	setAttr ".tg[0].tor" -type "double3" 0 0 -6.3611093629270335e-015 ;
	setAttr ".rst" -type "double3" -0.23409498007996035 -0.30578196063944585 0.026885237046158115 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_R_Knee_FK_orientConstraint1" -p "slug_Joint_R_Knee_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_KneeW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Knee_FK_parentConstraint1" -p "slug_Joint_R_Knee_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_KneeW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 1.1655884772967523e-016 -1.1655884772967523e-016 
		4.662353909187009e-016 ;
	setAttr ".rst" -type "double3" -0.49309368144501942 -0.10801943036269636 -0.01582436976294363 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_R_Leg_FK_orientConstraint1" -p "slug_Joint_R_Leg_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 13.079771487951902 24.887409015830634 22.082316955565961 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Leg_FK_parentConstraint1" -p "slug_Joint_R_Leg_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_R_LegW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tot" -type "double3" 0 2.3311769545935045e-016 4.662353909187009e-016 ;
	setAttr ".rst" -type "double3" -0.38255628274926057 0.07435508003107634 0.024668663661207513 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Leg_IK" -p "slug_Joint_Hip_FK";
	setAttr ".t" -type "double3" -0.38255628274926057 0.074355080031076215 0.02466866366120728 ;
	setAttr ".r" -type "double3" -13.911989899872205 29.485366767681789 -36.61210965564743 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Knee_IK" -p "slug_Joint_R_Leg_IK";
	setAttr ".t" -type "double3" -0.49309368144501953 -0.10801943036269625 -0.015824369762943862 ;
	setAttr ".r" -type "double3" -1.5441152772773041 3.382473726586912 25.025995184517559 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Ankle_IK" -p "slug_Joint_R_Knee_IK";
	setAttr ".t" -type "double3" -0.23409498007995999 -0.30578196063944579 0.026885237046158115 ;
	setAttr ".r" -type "double3" -3.1489426162701313 -7.1124216887659983 23.479548168369679 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Toe_IK" -p "slug_Joint_R_Ankle_IK";
	setAttr ".t" -type "double3" -0.041146137715513051 -0.36697152739248229 0.00068929130377911457 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikEffector -n "slug_effector4" -p "slug_Joint_R_Ankle_IK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode ikEffector -n "slug_effector3" -p "slug_Joint_R_Knee_IK";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "slug_Joint_Hip_FK_orientConstraint1" -p "slug_Joint_Hip_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_HipW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.6007168138931305 -27.70544689757336 -18.2958900406481 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_Hip_FK_parentConstraint1" -p "slug_Joint_Hip_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_HipW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".tg[0].tor" -type "double3" -1.4740121739089736e-014 0 0 ;
	setAttr ".rst" -type "double3" 0 -0.091489999999999849 0 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Root_FK_orientConstraint1" -p "slug_Joint_Root_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_RootW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.2428749421178287 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "slug_Joint_Root_FK_pointConstraint1" -p "slug_Joint_Root_FK";
	addAttr -ci true -k true -sn "w0" -ln "Cube_RootW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -1.6564008508577675e-030 1.1655884772967523e-016 -2.3311769545935045e-016 ;
	setAttr ".rst" -type "double3" 0 0.82621853846681526 -1.2163910840030761 ;
	setAttr -k on ".w0";
createNode transform -n "slug_control";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "slug_Const_Character" -p "slug_control";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".sp" -type "double3" 1.325120680686214e-029 -1.8649415636748036e-015 -1.1935626007518743e-013 ;
createNode nurbsCurve -n "curveShape39" -p "slug_Const_Character";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 24 0 no 3
		25 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24
		25
		-6.426379230154723e-011 -1.8649415636748036e-015 3.0637450258798711
		-1.1069750209000004 -1.8649415636748036e-015 2.1681172113998879
		-0.56543967256000027 -1.8649415636748036e-015 2.1681172113998879
		-0.56543967256000027 -1.8649415636748036e-015 1.7180295946799062
		-1.0755299079000005 -1.8649415636748036e-015 1.4581257175798965
		-1.4803400385200001 -1.8649415636748036e-015 1.0533155869599051
		-1.7402440986000003 -1.8649415636748036e-015 0.54322535161987606
		-1.8298000000000001 -1.8649415636748036e-015 -0.022214320940115124
		-1.7402440985999998 1.8297999662562571e-007 -0.58765381052012644
		-1.4803400385199998 1.8297999662562571e-007 -1.0977442288401054
		-1.0755299079 -1.8649415636748036e-015 -1.5025543594601269
		-0.56543967255999972 -1.8649415636748036e-015 -1.7624580535801266
		8.4015087034015489e-009 -1.829800022204504e-007 -1.8585157833201105
		0.56543967256000049 -1.8649415636748036e-015 -1.7624580535801266
		1.0755299079000007 -1.8649415636748036e-015 -1.5025543594601269
		1.4803400385200003 1.8297999662562571e-007 -1.0977442288401054
		1.7402440986000005 1.8297999662562571e-007 -0.58765381052012644
		1.8298000000000005 -1.8649415636748036e-015 -0.022214320940115124
		1.7402440986000003 1.8297999662562571e-007 0.54322535161987606
		1.4803400385200001 1.8297999662562571e-007 1.0533155869599051
		1.0755299079000005 -1.8649415636748036e-015 1.4581257175798965
		0.56543967256000005 -1.8649415636748036e-015 1.7180295946799062
		0.56543967256000005 -1.8649415636748036e-015 2.1681172113998879
		1.1069750209 -1.829800022204504e-007 2.1681173943798977
		-6.426379230154723e-011 -1.8649415636748036e-015 3.0637450258798711
		;
createNode transform -n "slug_Cube_Root" -p "slug_Const_Character";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.6564008508577675e-030 0.82621853846681514 -1.2163910840030758 ;
	setAttr ".sp" -type "double3" 1.6564008508577675e-030 0.82621853846681514 -1.2163910840030758 ;
createNode nurbsCurve -n "curveShape40" -p "slug_Cube_Root";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.47117072613929145 0.36899566358298364 -0.42648043145631526
		0.47117072613929306 0.36899566358297969 -0.42648043145631526
		0.46693481734841052 0.38444409780610156 -1.2168543616149952
		-0.46693481734840814 0.3844440978061055 -1.2168543616149952
		-0.47117072613929145 0.36899566358298364 -0.42648043145631526
		-0.47117072613927119 1.2628549079403106 -0.42555387623245228
		-0.46693481734838821 1.2336707789847579 -1.2159278063911323
		0.46693481734843068 1.2336707789847539 -1.2159278063911323
		0.47117072613931371 1.2628549079403066 -0.42555387623245228
		-0.47117072613927119 1.2628549079403106 -0.42555387623245228
		-0.47117072613929145 0.36899566358298364 -0.42648043145631526
		-0.46693481734840814 0.3844440978061055 -1.2168543616149952
		-0.46693481734838821 1.2336707789847579 -1.2159278063911323
		0.46693481734843068 1.2336707789847539 -1.2159278063911323
		0.46693481734841052 0.38444409780610156 -1.2168543616149952
		0.47117072613929306 0.36899566358297969 -0.42648043145631526
		0.47117072613931371 1.2628549079403066 -0.42555387623245228
		0.47117072613929306 0.36899566358297969 -0.42648043145631526
		;
createNode transform -n "slug_Cube_Waist" -p "slug_Cube_Root";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.6564008508577675e-030 0.82221627328615599 -0.42601715384439603 ;
	setAttr ".sp" -type "double3" -1.6564008508577675e-030 0.82221627328615599 -0.42601715384439603 ;
createNode nurbsCurve -n "curveShape41" -p "slug_Cube_Waist";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.4645593000918723 0.38571157751922724 0.40315383202331295
		0.46455930009189567 0.38571157751922724 0.40315383202331295
		0.47117072613930328 0.36899555525350164 -0.42645852019998243
		-0.47117072613928135 0.36899555525350164 -0.42645852019998243
		-0.4645593000918723 0.38571157751922724 0.40315383202331295
		-0.4645593000918723 1.2487104769552191 0.40403656473450966
		-0.47117072613928135 1.2628550162697887 -0.42557578748878572
		0.47117072613930333 1.2628550162697887 -0.42557578748878572
		0.46455930009189567 1.2487104769552191 0.40403656473450966
		-0.4645593000918723 1.2487104769552191 0.40403656473450966
		-0.4645593000918723 0.38571157751922724 0.40315383202331295
		-0.47117072613928135 0.36899555525350164 -0.42645852019998243
		-0.47117072613928135 1.2628550162697887 -0.42557578748878572
		0.47117072613930333 1.2628550162697887 -0.42557578748878572
		0.47117072613930328 0.36899555525350164 -0.42645852019998243
		0.46455930009189567 0.38571157751922724 0.40315383202331295
		0.46455930009189567 1.2487104769552191 0.40403656473450966
		0.46455930009189567 0.38571157751922724 0.40315383202331295
		;
createNode transform -n "slug_Cube_Chest" -p "slug_Cube_Waist";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.81821400810549672 0.40359519837889907 ;
	setAttr ".sp" -type "double3" 0 0.81821400810549672 0.40359519837889907 ;
createNode nurbsCurve -n "curveShape42" -p "slug_Cube_Chest";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.41337823516697991 0.4485864458422647 0.84318193075255654
		0.41337823516700373 0.44858644584226659 0.84318193075255654
		0.46455930009189583 0.38620754395507501 0.41311883759654028
		-0.46455930009187207 0.38620754395507478 0.41311883759654028
		-0.41337823516697991 0.4485864458422647 0.84318193075255654
		-0.49501101633015054 1.2708514564875708 0.75712082741556563
		-0.46455930009187324 1.2482145105193714 0.39407155916128206
		0.46455930009189483 1.2482145105193716 0.39407155916128206
		0.49501101633017291 1.2708514564875713 0.75712082741556563
		-0.49501101633015054 1.2708514564875708 0.75712082741556563
		-0.41337823516697991 0.4485864458422647 0.84318193075255654
		-0.46455930009187207 0.38620754395507478 0.41311883759654028
		-0.46455930009187324 1.2482145105193714 0.39407155916128206
		0.46455930009189483 1.2482145105193716 0.39407155916128206
		0.46455930009189583 0.38620754395507501 0.41311883759654028
		0.41337823516700373 0.44858644584226659 0.84318193075255654
		0.49501101633017291 1.2708514564875713 0.75712082741556563
		0.41337823516700373 0.44858644584226659 0.84318193075255654
		;
createNode transform -n "slug_Cube_Chest2" -p "slug_Cube_Chest";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.85971895116491859 0.80015137908404921 ;
	setAttr ".sp" -type "double3" 0 0.85971895116491859 0.80015137908404921 ;
createNode nurbsCurve -n "curveShape43" -p "slug_Cube_Chest2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.58679539145418158 1.0264612337112049 1.671373520155967
		0.58679539145420379 1.0264612337112049 1.671373520155967
		0.40940864314822351 0.45329078829318764 0.84946248847301709
		-0.40940864314820086 0.45329078829318764 0.84946248847301709
		-0.58679539145418158 1.0264612337112049 1.671373520155967
		-0.70371051329479239 1.672259275328966 1.0525992594512743
		-0.49171342530783296 1.2661471140366503 0.75084026969510642
		0.49171342530785556 1.2661471140366503 0.75084026969510642
		0.70371051329481493 1.672259275328966 1.0525992594512743
		-0.70371051329479239 1.672259275328966 1.0525992594512743
		-0.58679539145418158 1.0264612337112049 1.671373520155967
		-0.40940864314820086 0.45329078829318764 0.84946248847301709
		-0.49171342530783296 1.2661471140366503 0.75084026969510642
		0.49171342530785556 1.2661471140366503 0.75084026969510642
		0.40940864314822351 0.45329078829318764 0.84946248847301709
		0.58679539145420379 1.0264612337112049 1.671373520155967
		0.70371051329481493 1.672259275328966 1.0525992594512743
		0.58679539145420379 1.0264612337112049 1.671373520155967
		;
createNode transform -n "slug_Cube_Chest3" -p "slug_Cube_Chest2";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 1.3544309578873694 1.392410610007327 ;
	setAttr ".sp" -type "double3" 0 1.3544309578873694 1.392410610007327 ;
createNode nurbsCurve -n "curveShape44" -p "slug_Cube_Chest3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.82865759495410529 1.9269642431520932 2.0333871040520859
		0.82865759495412405 1.9269642431520932 2.0333871040520859
		0.62058221278807879 1.0424717351513446 1.7078821686090733
		-0.62058221278805481 1.0424717351513446 1.7078821686090733
		-0.82865759495410529 1.9269642431520932 2.0333871040520859
		-0.8286575949541054 2.0764227081037618 1.0623148465350591
		-0.62058221278805481 1.6747938309441699 1.0465148312018864
		0.62058221278807868 1.6747938309441699 1.0465148312018864
		0.82865759495412372 2.0764227081037618 1.0623148465350591
		-0.8286575949541054 2.0764227081037618 1.0623148465350591
		-0.82865759495410529 1.9269642431520932 2.0333871040520859
		-0.62058221278805481 1.0424717351513446 1.7078821686090733
		-0.62058221278805481 1.6747938309441699 1.0465148312018864
		0.62058221278807868 1.6747938309441699 1.0465148312018864
		0.62058221278807879 1.0424717351513446 1.7078821686090733
		0.82865759495412405 1.9269642431520932 2.0333871040520859
		0.82865759495412372 2.0764227081037618 1.0623148465350591
		0.82865759495412405 1.9269642431520932 2.0333871040520859
		;
createNode transform -n "slug_Cube_Mid_Chest" -p "slug_Cube_Chest3";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 2.0190956134834583 1.4645117337718996 ;
	setAttr ".sp" -type "double3" 0 2.0190956134834583 1.4645117337718996 ;
createNode nurbsCurve -n "curveShape45" -p "slug_Cube_Mid_Chest";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.6948538177721777 2.4592157403226422 2.0713194656532887
		0.69485381777220012 2.4592157403226422 2.0713194656532887
		0.82865759495412372 1.9287607965225189 2.0334349372267266
		-0.82865759495410551 1.9287607965225189 2.0334349372267266
		-0.6948538177721777 2.4592157403226422 2.0713194656532887
		-0.6948538177721777 2.5873939271826738 1.2013140322130806
		-0.82865759495410563 2.0784739360233071 1.0624844132829676
		0.82865759495412317 2.0784739360233071 1.0624844132829676
		0.69485381777220001 2.5873939271826738 1.2013140322130806
		-0.6948538177721777 2.5873939271826738 1.2013140322130806
		-0.6948538177721777 2.4592157403226422 2.0713194656532887
		-0.82865759495410551 1.9287607965225189 2.0334349372267266
		-0.82865759495410563 2.0784739360233071 1.0624844132829676
		0.82865759495412317 2.0784739360233071 1.0624844132829676
		0.82865759495412372 1.9287607965225189 2.0334349372267266
		0.69485381777220012 2.4592157403226422 2.0713194656532887
		0.69485381777220001 2.5873939271826738 1.2013140322130806
		0.69485381777220012 2.4592157403226422 2.0713194656532887
		;
createNode transform -n "slug_Cube_Neck1" -p "slug_Cube_Mid_Chest";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.6564008508577675e-030 2.5333993428030128 1.5656551855806871 ;
	setAttr ".sp" -type "double3" -1.6564008508577675e-030 2.5333993428030128 1.5656551855806871 ;
createNode nurbsCurve -n "curveShape46" -p "slug_Cube_Neck1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.75858600114573549 2.6342989487875821 2.3178376809616084
		0.75858600114592145 2.6342989487875821 2.3178376809616084
		0.69485381777219968 2.4647760677490118 2.0764175996932575
		-0.69485381777217781 2.4647760677490118 2.0764175996932575
		-0.75858600114573549 2.6342989487875821 2.3178376809616084
		-0.75858600114573549 2.9760978973583461 1.2557940682846207
		-0.69485381777217781 2.6006766833169674 1.1989077672532069
		0.69485381777219968 2.6006766833169674 1.1989077672532069
		0.75858600114592145 2.9760978973583461 1.2557940682846207
		-0.75858600114573549 2.9760978973583461 1.2557940682846207
		-0.75858600114573549 2.6342989487875821 2.3178376809616084
		-0.69485381777217781 2.4647760677490118 2.0764175996932575
		-0.69485381777217781 2.6006766833169674 1.1989077672532069
		0.69485381777219968 2.6006766833169674 1.1989077672532069
		0.69485381777219968 2.4647760677490118 2.0764175996932575
		0.75858600114592145 2.6342989487875821 2.3178376809616084
		0.75858600114592145 2.9760978973583461 1.2557940682846207
		0.75858600114592145 2.6342989487875821 2.3178376809616084
		;
createNode transform -n "slug_Cube_Head" -p "slug_Cube_Neck1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1655884772967523e-016 2.9195880331647692 1.7477133988365037 ;
	setAttr ".sp" -type "double3" -1.1655884772967523e-016 2.9195880331647692 1.7477133988365037 ;
createNode nurbsCurve -n "curveShape47" -p "slug_Cube_Head";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.69096648082006829 3.711522410299136 1.2194370082502268
		-0.69096648082009127 3.711522410299136 1.2194370082502268
		-0.75858600114592245 2.9967926219068159 1.2484860172305874
		0.75858600114573393 2.9967926219068159 1.2484860172305874
		0.69096648082006829 3.711522410299136 1.2194370082502268
		0.69096648082006795 3.8785628115556148 2.2326661804547538
		0.75858600114573382 2.6562258911150818 2.3178579436072604
		-0.75858600114592245 2.6562258911150818 2.3178579436072604
		-0.69096648082009171 3.8785628115556148 2.2326661804547538
		0.69096648082006795 3.8785628115556148 2.2326661804547538
		0.69096648082006829 3.711522410299136 1.2194370082502268
		0.75858600114573393 2.9967926219068159 1.2484860172305874
		0.75858600114573382 2.6562258911150818 2.3178579436072604
		-0.75858600114592245 2.6562258911150818 2.3178579436072604
		-0.75858600114592245 2.9967926219068159 1.2484860172305874
		-0.69096648082009127 3.711522410299136 1.2194370082502268
		-0.69096648082009171 3.8785628115556148 2.2326661804547538
		-0.69096648082009127 3.711522410299136 1.2194370082502268
		;
createNode transform -n "slug_Cube_R_Shoulder" -p "slug_Cube_Mid_Chest";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.59764459414578808 2.0383569475193553 1.4665833657856535 ;
	setAttr ".sp" -type "double3" -0.59764459414578808 2.0383569475193553 1.4665833657856535 ;
createNode transform -n "slug_Cube_R_Arm" -p "slug_Cube_R_Shoulder";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.78442966677852022 2.0370429861563397 1.4748698938406741 ;
	setAttr ".sp" -type "double3" -0.78442966677852022 2.0370429861563397 1.4748698938406741 ;
createNode nurbsCurve -n "curveShape54" -p "slug_Cube_R_Arm";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-1.2385971637327036 1.9085891099232362 1.308784120815907
		-1.1487417984592789 1.9085891099232362 1.54946566686549
		-0.80901499707041002 1.815730096634169 1.6948129696650815
		-0.75984433648663297 1.815730096634169 1.2549268180163109
		-1.2385971637327036 1.9085891099232362 1.308784120815907
		-1.2385971637327036 2.1654968623894413 1.308784120815907
		-0.75984433648663297 2.2583558756785114 1.2549268180163109
		-0.80901499707041002 2.2583558756785114 1.6948129696650815
		-1.1487417984592789 2.1654968623894413 1.54946566686549
		-1.2385971637327036 2.1654968623894413 1.308784120815907
		-1.2385971637327036 1.9085891099232362 1.308784120815907
		-0.75984433648663297 1.815730096634169 1.2549268180163109
		-0.75984433648663297 2.2583558756785114 1.2549268180163109
		-0.80901499707041002 2.2583558756785114 1.6948129696650815
		-0.80901499707041002 1.815730096634169 1.6948129696650815
		-1.1487417984592789 1.9085891099232362 1.54946566686549
		-1.1487417984592789 2.1654968623894413 1.54946566686549
		-1.1487417984592789 1.9085891099232362 1.54946566686549
		;
createNode transform -n "slug_Cube_R_Elbow" -p "slug_Cube_R_Arm";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.193669481095988 2.0370429861563415 1.4291248938406753 ;
	setAttr ".sp" -type "double3" -1.193669481095988 2.0370429861563415 1.4291248938406753 ;
createNode nurbsCurve -n "curveShape55" -p "slug_Cube_R_Elbow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-1.6645016272440116 1.9366065546965543 1.3893905661507377
		-1.5765033835629982 1.9366065546965543 1.6092773186927354
		-1.1775306013899716 1.9069946938045907 1.5582221573927055
		-1.2045438552951868 1.9069946938045907 1.2994780084922373
		-1.6645016272440116 1.9366065546965543 1.3893905661507377
		-1.6679515408851151 2.1195486762050915 1.3907900924364958
		-1.2098083608020038 2.1670912785080882 1.3000276302886933
		-1.1827951068967877 2.1670912785080882 1.5587717791891604
		-1.579953297204101 2.1195486762050915 1.6106768449784932
		-1.6679515408851151 2.1195486762050915 1.3907900924364958
		-1.6645016272440116 1.9366065546965543 1.3893905661507377
		-1.2045438552951868 1.9069946938045907 1.2994780084922373
		-1.2098083608020038 2.1670912785080882 1.3000276302886933
		-1.1827951068967877 2.1670912785080882 1.5587717791891604
		-1.1775306013899716 1.9069946938045907 1.5582221573927055
		-1.5765033835629982 1.9366065546965543 1.6092773186927354
		-1.579953297204101 2.1195486762050915 1.6106768449784932
		-1.5765033835629982 1.9366065546965543 1.6092773186927354
		;
createNode transform -n "slug_Cube_R_Hand" -p "slug_Cube_R_Elbow";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.6318340625634005 1.999600493255836 1.4748698938406637 ;
	setAttr ".rpt" -type "double3" -1.6085120986695181e-014 0 1.27049144025346e-014 ;
	setAttr ".sp" -type "double3" -1.6318340625634005 1.999600493255836 1.4748698938406637 ;
createNode nurbsCurve -n "curveShape56" -p "slug_Cube_R_Hand";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-2.0742288025743618 1.8847972930500478 1.4140323750328707
		-2.0778263554965157 1.8847972930500478 1.4818757351663028
		-1.7160859660952459 1.9365876154508228 1.6020732630905576
		-1.5901448387539949 1.9365876154508228 1.3934301693926896
		-2.0742288025743618 1.8847972930500478 1.4140323750328707
		-2.0742288025743618 1.9527359705557388 1.4140323750328707
		-1.5901448387539949 2.1195676154508232 1.3934301693926896
		-1.7160859660952459 2.1195676154508232 1.6020732630905576
		-2.0778263554965157 1.9527359705557388 1.4818757351663028
		-2.0742288025743618 1.9527359705557388 1.4140323750328707
		-2.0742288025743618 1.8847972930500478 1.4140323750328707
		-1.5901448387539949 1.9365876154508228 1.3934301693926896
		-1.5901448387539949 2.1195676154508232 1.3934301693926896
		-1.7160859660952459 2.1195676154508232 1.6020732630905576
		-1.7160859660952459 1.9365876154508228 1.6020732630905576
		-2.0778263554965157 1.8847972930500478 1.4818757351663028
		-2.0778263554965157 1.9527359705557388 1.4818757351663028
		-2.0778263554965157 1.8847972930500478 1.4818757351663028
		;
createNode transform -n "slug_Cube_L_Shoulder" -p "slug_Cube_Mid_Chest";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.59764459414578808 2.0383569475193548 1.4665833657856537 ;
	setAttr ".sp" -type "double3" 0.59764459414578808 2.0383569475193548 1.4665833657856537 ;
createNode transform -n "slug_Cube_L_Arm" -p "slug_Cube_L_Shoulder";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.78442966677852044 2.0370429861563397 1.4748698938406744 ;
	setAttr ".sp" -type "double3" 0.78442966677852044 2.0370429861563397 1.4748698938406744 ;
createNode nurbsCurve -n "curveShape48" -p "slug_Cube_L_Arm";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.1477064681470424 1.8903488858503659 1.5684323254630901
		1.2396324940449341 1.8903488858503659 1.2898174622182588
		0.76104986348876213 1.8265820421265102 1.265711595511255
		0.8078094700682753 1.8265820421265102 1.6840281921700928
		1.1477064681470424 1.8903488858503659 1.5684323254630901
		1.1477064681470424 2.1837370864623149 1.5684323254630901
		0.8078094700682753 2.2475039301861655 1.6840281921700928
		0.76104986348876213 2.2475039301861655 1.265711595511255
		1.2396324940449341 2.1837370864623149 1.2898174622182588
		1.1477064681470424 2.1837370864623149 1.5684323254630901
		1.1477064681470424 1.8903488858503659 1.5684323254630901
		0.8078094700682753 1.8265820421265102 1.6840281921700928
		0.8078094700682753 2.2475039301861655 1.6840281921700928
		0.76104986348876213 2.2475039301861655 1.265711595511255
		0.76104986348876213 1.8265820421265102 1.265711595511255
		1.2396324940449341 1.8903488858503659 1.2898174622182588
		1.2396324940449341 2.1837370864623149 1.2898174622182588
		1.2396324940449341 1.8903488858503659 1.2898174622182588
		;
createNode transform -n "slug_Cube_L_Elbow" -p "slug_Cube_L_Arm";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.1936694810959896 2.0370429861563411 1.4291248938406746 ;
	setAttr ".sp" -type "double3" 1.1936694810959896 2.0370429861563411 1.4291248938406746 ;
createNode nurbsCurve -n "curveShape49" -p "slug_Cube_L_Elbow";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.5964498091278605 1.9363536028265822 1.5926425835033782
		1.6710280083182458 1.9366065546965348 1.3803937390765073
		1.1899081873649866 1.8892472768625599 1.281315837185208
		1.1914153938633119 1.8892472768626221 1.5769646166849633
		1.5964498091278605 1.9363536028265822 1.5926425835033782
		1.5998712966226241 2.1192957243351205 1.5941102351237482
		1.1974307748269937 2.1848386954501193 1.5769339504961428
		1.1959235683286682 2.1848386954500616 1.2812851709963886
		1.6744494958130096 2.1195486762050719 1.3818613906968773
		1.5998712966226241 2.1192957243351205 1.5941102351237482
		1.5964498091278605 1.9363536028265822 1.5926425835033782
		1.1914153938633119 1.8892472768626221 1.5769646166849633
		1.1974307748269937 2.1848386954501193 1.5769339504961428
		1.1959235683286682 2.1848386954500616 1.2812851709963886
		1.1899081873649866 1.8892472768625599 1.281315837185208
		1.6710280083182458 1.9366065546965348 1.3803937390765073
		1.6744494958130096 2.1195486762050719 1.3818613906968773
		1.6710280083182458 1.9366065546965348 1.3803937390765073
		;
createNode transform -n "slug_Cube_L_Hand" -p "slug_Cube_L_Elbow";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.6318340625634224 1.9983649758991029 1.4748698938406777 ;
	setAttr ".rpt" -type "double3" -5.8279423864837615e-015 0 -1.1655884772967523e-015 ;
	setAttr ".sp" -type "double3" 1.6318340625634224 1.9983649758991029 1.4748698938406777 ;
createNode nurbsCurve -n "curveShape53" -p "slug_Cube_L_Hand";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		2.077113364051955 1.8882595426021218 1.509706321501104
		2.0765291328731994 1.8882595426021218 1.4486949402682137
		1.5872247722932684 1.9365876154508224 1.3793395599064544
		1.6950745810484131 1.9365876154508224 1.5721232769686138
		2.077113364051955 1.8882595426021218 1.509706321501104
		2.077113364051955 1.9492737210036646 1.509706321501104
		1.6950745810484131 2.1195676154508227 1.5721232769686138
		1.5872247722932684 2.1195676154508227 1.3793395599064544
		2.0765291328731994 1.9492737210036646 1.4486949402682137
		2.077113364051955 1.9492737210036646 1.509706321501104
		2.077113364051955 1.8882595426021218 1.509706321501104
		1.6950745810484131 1.9365876154508224 1.5721232769686138
		1.6950745810484131 2.1195676154508227 1.5721232769686138
		1.5872247722932684 2.1195676154508227 1.3793395599064544
		1.5872247722932684 1.9365876154508224 1.3793395599064544
		2.0765291328731994 1.8882595426021218 1.4486949402682137
		2.0765291328731994 1.9492737210036646 1.4486949402682137
		2.0765291328731994 1.8882595426021218 1.4486949402682137
		;
createNode transform -n "slug_Cube_L_Leg" -p "slug_Cube_Root";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.38255628274926057 0.80908361849789145 -1.1917224203418681 ;
	setAttr ".sp" -type "double3" 0.38255628274926057 0.80908361849789145 -1.1917224203418681 ;
createNode nurbsCurve -n "curveShape57" -p "slug_Cube_L_Leg";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.85235906549460139 0.57584698809671375 -1.0785498274225385
		0.84413596402634772 0.57584698809671575 -1.3347849531570442
		0.32763289453651956 0.53436324403903812 -1.4740181680326767
		0.31719921905376608 0.53436324403903346 -0.91165828132692317
		0.85235906549460139 0.57584698809671375 -1.0785498274225385
		0.90716396436221214 0.82628138817367502 -1.0803086270525777
		0.43747967096200069 1.0838039929567453 -0.90942667265105648
		0.44791334644475489 1.0838039929567496 -1.4717865593568114
		0.8989408628939588 0.8262813881736778 -1.3365437527870849
		0.90716396436221214 0.82628138817367502 -1.0803086270525777
		0.85235906549460139 0.57584698809671375 -1.0785498274225385
		0.31719921905376608 0.53436324403903346 -0.91165828132692317
		0.43747967096200069 1.0838039929567453 -0.90942667265105648
		0.44791334644475489 1.0838039929567496 -1.4717865593568114
		0.32763289453651956 0.53436324403903812 -1.4740181680326767
		0.84413596402634772 0.57584698809671575 -1.3347849531570442
		0.8989408628939588 0.8262813881736778 -1.3365437527870849
		0.84413596402634772 0.57584698809671575 -1.3347849531570442
		;
createNode transform -n "slug_Cube_L_Knee" -p "slug_Cube_L_Leg";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0.1226259487282723 0.11320878840171919 0.12092894483204256 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.87564996419428021 0.70106418813519533 -1.2075467901048123 ;
	setAttr ".sp" -type "double3" 0.87564996419428021 0.70106418813519533 -1.2075467901048123 ;
createNode nurbsCurve -n "curveShape58" -p "slug_Cube_L_Knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.027310021724182 0.33943773924076948 -1.0980376044982929
		1.0481875919529375 0.33943773924076925 -1.2798226629088878
		0.91937974698387936 0.5952469965227144 -1.3441503942613557
		0.90965584912227793 0.56817988452807089 -1.0937246558019909
		1.027310021724182 0.33943773924076948 -1.0980376044982929
		1.1713022965955453 0.45112671575072982 -1.0815004432084192
		0.8319201814046856 0.80688137974767793 -1.0709431859482672
		0.8416440792662877 0.83394849174232022 -1.321368924407633
		1.1921798668243009 0.4511267157507296 -1.2632855016190141
		1.1713022965955453 0.45112671575072982 -1.0815004432084192
		1.027310021724182 0.33943773924076948 -1.0980376044982929
		0.90965584912227793 0.56817988452807089 -1.0937246558019909
		0.8319201814046856 0.80688137974767793 -1.0709431859482672
		0.8416440792662877 0.83394849174232022 -1.321368924407633
		0.91937974698387936 0.5952469965227144 -1.3441503942613557
		1.0481875919529375 0.33943773924076925 -1.2798226629088878
		1.1921798668243009 0.4511267157507296 -1.2632855016190141
		1.0481875919529375 0.33943773924076925 -1.2798226629088878
		;
createNode transform -n "slug_Cube_L_Ankle" -p "slug_Cube_L_Knee";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.1097449442742404 0.39528222749574965 -1.1806615530586546 ;
	setAttr ".sp" -type "double3" 1.1097449442742404 0.39528222749574965 -1.1806615530586546 ;
createNode nurbsCurve -n "curveShape59" -p "slug_Cube_L_Ankle";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.1194012474515787 0.024837506862605704 -1.1493291360170916
		1.1204453129483476 0.024837506862605635 -1.2116529495899049
		1.0249615225293256 0.33148315985826932 -1.2737465850369438
		1.0218966217754708 0.33148315985826948 -1.0907922552620815
		1.1194012474515787 0.024837506862605704 -1.1493291360170916
		1.1813368510311584 0.031783893343928588 -1.1482915739198447
		1.1940481714082269 0.45071094574040083 -1.0877464455270958
		1.197113072162082 0.45071094574040066 -1.2707007753019581
		1.1823809165279269 0.031783893343928539 -1.2106153874926586
		1.1813368510311584 0.031783893343928588 -1.1482915739198447
		1.1194012474515787 0.024837506862605704 -1.1493291360170916
		1.0218966217754708 0.33148315985826948 -1.0907922552620815
		1.1940481714082269 0.45071094574040083 -1.0877464455270958
		1.197113072162082 0.45071094574040066 -1.2707007753019581
		1.0249615225293256 0.33148315985826932 -1.2737465850369438
		1.1204453129483476 0.024837506862605635 -1.2116529495899049
		1.1823809165279269 0.031783893343928539 -1.2106153874926586
		1.1204453129483476 0.024837506862605635 -1.2116529495899049
		;
createNode transform -n "slug_Cube_R_Leg" -p "slug_Cube_Root";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.38255628274926057 0.80908361849789145 -1.1917224203418688 ;
	setAttr ".sp" -type "double3" -0.38255628274926057 0.80908361849789145 -1.1917224203418688 ;
createNode nurbsCurve -n "curveShape60" -p "slug_Cube_R_Leg";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.80608289575750258 0.59742056200739335 -1.3305518617758905
		-0.81356510183674347 0.59473512567066333 -1.0828414323767468
		-0.32469715386814635 0.49801970428067521 -0.87126883950990475
		-0.30426936815712391 0.4980197042806751 -1.5078068003205749
		-0.80608289575750258 0.59742056200739335 -1.3305518617758905
		-0.93773482655181661 0.80739325059972589 -1.3322521478328315
		-0.44041541163037501 1.1201475327151083 -1.5121760011737864
		-0.4608431973413975 1.1201475327151096 -0.87563804036311543
		-0.94521703263105683 0.80470781426299631 -1.0845417184336879
		-0.93773482655181661 0.80739325059972589 -1.3322521478328315
		-0.80608289575750258 0.59742056200739335 -1.3305518617758905
		-0.30426936815712391 0.4980197042806751 -1.5078068003205749
		-0.44041541163037501 1.1201475327151083 -1.5121760011737864
		-0.4608431973413975 1.1201475327151096 -0.87563804036311543
		-0.32469715386814635 0.49801970428067521 -0.87126883950990475
		-0.81356510183674347 0.59473512567066333 -1.0828414323767468
		-0.94521703263105683 0.80470781426299631 -1.0845417184336879
		-0.81356510183674347 0.59473512567066333 -1.0828414323767468
		;
createNode transform -n "slug_Cube_R_Knee" -p "slug_Cube_R_Leg";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.87564996419428009 0.70106418813519544 -1.2075467901048125 ;
	setAttr ".sp" -type "double3" -0.87564996419428009 0.70106418813519544 -1.2075467901048125 ;
createNode nurbsCurve -n "curveShape61" -p "slug_Cube_R_Knee";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-1.0481875919529351 0.33943773924076931 -1.2798226629088654
		-1.0273100217241797 0.33943773924076942 -1.0980376044982705
		-0.79501587663067907 0.58264804185427033 -1.0886658235937166
		-0.82293923492961274 0.59372193781238003 -1.3502217503881808
		-1.0481875919529351 0.33943773924076931 -1.2798226629088654
		-1.192179866824298 0.45112671575072977 -1.2632855016189917
		-0.95628405175787889 0.81948033441612045 -1.3264277566158613
		-0.92836069345894479 0.8084064384580103 -1.0648718298213973
		-1.1713022965955429 0.45112671575072988 -1.0815004432083968
		-1.192179866824298 0.45112671575072977 -1.2632855016189917
		-1.0481875919529351 0.33943773924076931 -1.2798226629088654
		-0.82293923492961274 0.59372193781238003 -1.3502217503881808
		-0.95628405175787889 0.81948033441612045 -1.3264277566158613
		-0.92836069345894479 0.8084064384580103 -1.0648718298213973
		-0.79501587663067907 0.58264804185427033 -1.0886658235937166
		-1.0273100217241797 0.33943773924076942 -1.0980376044982705
		-1.1713022965955429 0.45112671575072988 -1.0815004432083968
		-1.0273100217241797 0.33943773924076942 -1.0980376044982705
		;
createNode transform -n "slug_Cube_R_Ankle" -p "slug_Cube_R_Knee";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1097449442742398 0.39528222749574954 -1.1806615530586544 ;
	setAttr ".sp" -type "double3" -1.1097449442742398 0.39528222749574954 -1.1806615530586544 ;
createNode nurbsCurve -n "curveShape62" -p "slug_Cube_R_Ankle";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-1.1136208492804507 0.024058985516988041 -1.2187542221118803
		-1.1123427549752811 0.024058985516987944 -1.1424604345569997
		-1.0238099337164965 0.32667399979176193 -1.0907922552620595
		-1.0268748344703527 0.32667399979176215 -1.2737465850369216
		-1.1136208492804507 0.024058985516988041 -1.2187542221118803
		-1.1894394090042255 0.032562414689546307 -1.2174840889527496
		-1.197113072162082 0.45071094574040083 -1.2707007753019348
		-1.1940481714082258 0.4507109457404006 -1.0877464455270724
		-1.1881613146990548 0.032562414689546196 -1.1411903013978684
		-1.1894394090042255 0.032562414689546307 -1.2174840889527496
		-1.1136208492804507 0.024058985516988041 -1.2187542221118803
		-1.0268748344703527 0.32667399979176215 -1.2737465850369216
		-1.197113072162082 0.45071094574040083 -1.2707007753019348
		-1.1940481714082258 0.4507109457404006 -1.0877464455270724
		-1.0238099337164965 0.32667399979176193 -1.0907922552620595
		-1.1123427549752811 0.024058985516987944 -1.1424604345569997
		-1.1881613146990548 0.032562414689546196 -1.1411903013978684
		-1.1123427549752811 0.024058985516987944 -1.1424604345569997
		;
createNode transform -n "slug_Cube_Hip" -p "slug_Cube_Root";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.73472853846681541 -1.2163910840030761 ;
	setAttr ".sp" -type "double3" 0 0.73472853846681541 -1.2163910840030761 ;
createNode nurbsCurve -n "curveShape65" -p "slug_Cube_Hip";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.47628967432872438 1.243381292113422 -1.2163910840030761
		0.52204965145857607 1.3555429762238711 -2.0236470504854824
		0.52204965145857607 0.40224428922796035 -2.0236470504854824
		0.47628967432872438 0.40053620189953443 -1.2163910840030761
		0.47628967432872438 1.243381292113422 -1.2163910840030761
		-0.47628967432872438 1.243381292113422 -1.2163910840030761
		-0.47628967432872438 0.40053620189953443 -1.2163910840030761
		-0.52204965145857607 0.40224428922796035 -2.0236470504854824
		-0.52204965145857607 1.3555429762238711 -2.0236470504854824
		-0.47628967432872438 1.243381292113422 -1.2163910840030761
		0.47628967432872438 1.243381292113422 -1.2163910840030761
		0.47628967432872438 0.40053620189953443 -1.2163910840030761
		-0.47628967432872438 0.40053620189953443 -1.2163910840030761
		-0.52204965145857607 0.40224428922796035 -2.0236470504854824
		0.52204965145857607 0.40224428922796035 -2.0236470504854824
		0.52204965145857607 1.3555429762238711 -2.0236470504854824
		-0.52204965145857607 1.3555429762238711 -2.0236470504854824
		0.52204965145857607 1.3555429762238711 -2.0236470504854824
		;
createNode transform -n "slug_Cube_Tail1" -p "slug_Cube_Hip";
	setAttr -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.6564008508577675e-030 0.81575463844161511 -2.0454477853386748 ;
	setAttr ".sp" -type "double3" 1.6564008508577675e-030 0.81575463844161511 -2.0454477853386748 ;
createNode nurbsCurve -n "curveShape50" -p "slug_Cube_Tail1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.46081445746895777 0.45599959118543154 -3.0580956442062712
		-0.46081445746898025 0.45599959118543154 -3.0580956442062712
		-0.53006279324441186 0.41580108812490107 -2.045920692429672
		0.51852140394848423 0.41580108812490107 -2.045920692429672
		0.46081445746895777 0.45599959118543154 -3.0580956442062712
		0.46081445746895777 1.2336454142066187 -3.0571498300242546
		0.51852140394848423 1.336289872569834 -2.0449748782476549
		-0.53006279324441186 1.336289872569834 -2.0449748782476549
		-0.46081445746898025 1.2336454142066187 -3.0571498300242546
		0.46081445746895777 1.2336454142066187 -3.0571498300242546
		0.46081445746895777 0.45599959118543154 -3.0580956442062712
		0.51852140394848423 0.41580108812490107 -2.045920692429672
		0.51852140394848423 1.336289872569834 -2.0449748782476549
		-0.53006279324441186 1.336289872569834 -2.0449748782476549
		-0.53006279324441186 0.41580108812490107 -2.045920692429672
		-0.46081445746898025 0.45599959118543154 -3.0580956442062712
		-0.46081445746898025 1.2336454142066187 -3.0571498300242546
		-0.46081445746898025 0.45599959118543154 -3.0580956442062712
		;
createNode transform -n "slug_Cube_Tail2" -p "slug_Cube_Tail1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.82098658845421535 -3.0576227371152753 ;
	setAttr ".sp" -type "double3" 0 0.82098658845421535 -3.0576227371152753 ;
createNode nurbsCurve -n "curveShape51" -p "slug_Cube_Tail2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.26275083478616773 0.58299582906910585 -3.709654677233456
		-0.26275083478619021 0.58299582906910585 -3.709654677233456
		-0.45311167647844897 0.44112285981866484 -3.0532523263136571
		0.45311167647842687 0.44112285981866484 -3.0532523263136571
		0.26275083478616773 0.58299582906910585 -3.709654677233456
		0.26275083478616773 0.99619394768812508 -3.7183954988366672
		0.45311167647842693 1.2653474968028966 -3.0619931479168687
		-0.45311167647844891 1.2653474968028966 -3.0619931479168687
		-0.2627508347861901 0.99619394768812508 -3.7183954988366672
		0.26275083478616773 0.99619394768812508 -3.7183954988366672
		0.26275083478616773 0.58299582906910585 -3.709654677233456
		0.45311167647842687 0.44112285981866484 -3.0532523263136571
		0.45311167647842693 1.2653474968028966 -3.0619931479168687
		-0.45311167647844891 1.2653474968028966 -3.0619931479168687
		-0.45311167647844897 0.44112285981866484 -3.0532523263136571
		-0.26275083478619021 0.58299582906910585 -3.709654677233456
		-0.2627508347861901 0.99619394768812508 -3.7183954988366672
		-0.26275083478619021 0.58299582906910585 -3.709654677233456
		;
createNode transform -n "slug_Cube_Tail3" -p "slug_Cube_Tail2";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.78959488837861502 -3.7140250880350738 ;
	setAttr ".sp" -type "double3" 0 0.78959488837861502 -3.7140250880350738 ;
createNode nurbsCurve -n "curveShape52" -p "slug_Cube_Tail3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.091489999999988803 0.73808940800908907 -4.0725969060079423
		-0.091490000000011312 0.73808940800908907 -4.0725969060079423
		-0.25454317563139217 0.59644933490797758 -3.7140250880350623
		0.25454317563136958 0.59644933490797758 -3.7140250880350618
		0.091489999999988803 0.73808940800908907 -4.0725969060079423
		0.091489999999988803 0.84110036874814109 -4.0725969060079423
		0.25454317563136958 0.98274044184925313 -3.7140250880350618
		-0.25454317563139217 0.98274044184925313 -3.7140250880350623
		-0.091490000000011312 0.84110036874814109 -4.0725969060079423
		0.091489999999988803 0.84110036874814109 -4.0725969060079423
		0.091489999999988803 0.73808940800908907 -4.0725969060079423
		0.25454317563136958 0.59644933490797758 -3.7140250880350618
		0.25454317563136958 0.98274044184925313 -3.7140250880350618
		-0.25454317563139217 0.98274044184925313 -3.7140250880350623
		-0.25454317563139217 0.59644933490797758 -3.7140250880350623
		-0.091490000000011312 0.73808940800908907 -4.0725969060079423
		-0.091490000000011312 0.84110036874814109 -4.0725969060079423
		-0.091490000000011312 0.73808940800908907 -4.0725969060079423
		;
createNode transform -n "slug_Pole_Joint_L_Wrist_IK" -p "slug_Const_Character";
	setAttr -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.84740439578489601 2.0280776154508224 -0.91489999999999805 ;
	setAttr ".sp" -type "double3" 0.84740439578489601 2.0280776154508224 -0.91489999999999805 ;
createNode nurbsCurve -n "curveShape37" -p "slug_Pole_Joint_L_Wrist_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0.84740439578489613 2.2110576154508226 -0.73191999999999802
		0.84740439578489601 2.2110576154508226 -0.91489999999999805
		0.84740439578489601 2.0280776154508224 -0.91489999999999805
		0.84740439578489601 2.0280776154508224 -0.73191999999999802
		0.84740439578489601 2.0280776154508224 -0.91489999999999805
		0.84740439578489601 1.8450976154508225 -0.91489999999999805
		0.84740439578489601 1.8450976154508225 -0.73191999999999802
		;
createNode transform -n "slug_Pole_Joint_R_Wrist_IK" -p "slug_Const_Character";
	setAttr -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.84740439578489624 2.0280776154508229 -0.91489999999999783 ;
	setAttr ".sp" -type "double3" -0.84740439578489624 2.0280776154508229 -0.91489999999999783 ;
createNode nurbsCurve -n "curveShape38" -p "slug_Pole_Joint_R_Wrist_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-0.84740439578489613 2.211057615450823 -0.73191999999999779
		-0.84740439578489624 2.211057615450823 -0.91489999999999783
		-0.84740439578489624 2.0280776154508229 -0.91489999999999783
		-0.84740439578489624 2.0280776154508229 -0.73191999999999779
		-0.84740439578489624 2.0280776154508229 -0.91489999999999783
		-0.84740439578489624 1.845097615450823 -0.91489999999999783
		-0.84740439578489624 1.845097615450823 -0.73191999999999779
		;
createNode transform -n "slug_Const_Joint_R_Wrist_IK" -p "slug_Const_Character";
	addAttr -ci true -k true -sn "IK_Blend" -ln "IK_Blend" -min 0 -max 1 -at "float";
	addAttr -ci true -sn "Slug" -ln "Slug" -min 0 -max 1 -at "float";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 1.8298000000000001 1.8298000000000001 1.8298000000000001 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.6318340625634165 2.0280776154508229 1.4748698938406766 ;
	setAttr ".sp" -type "double3" -1.6318340625634165 2.0280776154508229 1.4748698938406766 ;
	setAttr -k on ".IK_Blend";
createNode nurbsCurve -n "curveShape32" -p "slug_Const_Joint_R_Wrist_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-1.6318340625634165 1.9530776154508229 1.5498698938406774
		-1.6318340625634165 1.9530776154508229 1.3998698938406773
		-1.9318340625634167 1.9530776154508229 1.3998698938406773
		-1.9318340625634167 1.9530776154508229 1.5498698938406774
		-1.6318340625634165 1.9530776154508229 1.5498698938406774
		-1.6318340625634165 2.1030776154508226 1.5498698938406774
		-1.9318340625634167 2.1030776154508226 1.5498698938406774
		-1.9318340625634167 2.1030776154508226 1.3998698938406773
		-1.6318340625634165 2.1030776154508226 1.3998698938406773
		-1.6318340625634165 2.1030776154508226 1.5498698938406774
		-1.6318340625634165 1.9530776154508229 1.5498698938406774
		-1.9318340625634167 1.9530776154508229 1.5498698938406774
		-1.9318340625634167 2.1030776154508226 1.5498698938406774
		-1.9318340625634167 2.1030776154508226 1.3998698938406773
		-1.9318340625634167 1.9530776154508229 1.3998698938406773
		-1.6318340625634165 1.9530776154508229 1.3998698938406773
		-1.6318340625634165 2.1030776154508226 1.3998698938406773
		-1.6318340625634165 1.9530776154508229 1.3998698938406773
		;
createNode ikHandle -n "slug_R_arm_IKHandle" -p "slug_Const_Joint_R_Wrist_IK";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" -1.631834062563416 2.0280776154508224 1.4748698938406759 ;
	setAttr ".s" -type "double3" 0.54650781506175528 0.54650781506175528 0.54650781506175528 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "slug_R_arm_IKHandle_poleVectorConstraint1" -p
		 "slug_R_arm_IKHandle";
	addAttr -ci true -k true -sn "w0" -ln "Pole_Joint_R_Wrist_IKW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.034416181553380713 -0.0048996451554909138 -1.3060279231832288 ;
	setAttr -k on ".w0";
createNode transform -n "slug_Const_Joint_L_Wrist_IK" -p "slug_Const_Character";
	addAttr -ci true -k true -sn "IK_Blend" -ln "IK_Blend" -min 0 -max 1 -at "float";
	addAttr -ci true -sn "Slug" -ln "Slug" -min 0 -max 1 -at "float";
	setAttr -l on -k off ".v";
	setAttr ".s" -type "double3" 1.8298000000000001 1.8298000000000001 1.8298000000000001 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.6318340625634162 2.0280776154508224 1.4748698938406761 ;
	setAttr ".sp" -type "double3" 1.6318340625634162 2.0280776154508224 1.4748698938406761 ;
	setAttr -k on ".IK_Blend";
createNode nurbsCurve -n "curveShape31" -p "slug_Const_Joint_L_Wrist_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.9318340625634165 1.9530776154508225 1.5498698938406772
		1.9318340625634165 1.9530776154508225 1.3998698938406771
		1.6318340625634162 1.9530776154508225 1.3998698938406771
		1.6318340625634162 1.9530776154508225 1.5498698938406772
		1.9318340625634165 1.9530776154508225 1.5498698938406772
		1.9318340625634165 2.1030776154508222 1.5498698938406772
		1.6318340625634162 2.1030776154508222 1.5498698938406772
		1.6318340625634162 2.1030776154508222 1.3998698938406771
		1.9318340625634165 2.1030776154508222 1.3998698938406771
		1.9318340625634165 2.1030776154508222 1.5498698938406772
		1.9318340625634165 1.9530776154508225 1.5498698938406772
		1.6318340625634162 1.9530776154508225 1.5498698938406772
		1.6318340625634162 2.1030776154508222 1.5498698938406772
		1.6318340625634162 2.1030776154508222 1.3998698938406771
		1.6318340625634162 1.9530776154508225 1.3998698938406771
		1.9318340625634165 1.9530776154508225 1.3998698938406771
		1.9318340625634165 2.1030776154508222 1.3998698938406771
		1.9318340625634165 1.9530776154508225 1.3998698938406771
		;
createNode ikHandle -n "slug_L_arm_IKHandle" -p "slug_Const_Joint_L_Wrist_IK";
	setAttr -l on -k off ".v" no;
	setAttr ".t" -type "double3" 1.6318340625634158 2.0280776154508224 1.4748698938406759 ;
	setAttr ".s" -type "double3" 0.54650781506175528 0.54650781506175528 0.54650781506175528 ;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "slug_L_arm_IKHandle_poleVectorConstraint1" -p
		 "slug_L_arm_IKHandle";
	addAttr -ci true -k true -sn "w0" -ln "Pole_Joint_L_Wrist_IKW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.034416181553380484 -0.0048996451554909138 -1.3060279231832286 ;
	setAttr -k on ".w0";
createNode transform -n "slug_Const_Joint_R_Ankle_IK" -p "slug_Const_Character";
	addAttr -ci true -sn "IK_Blend" -ln "IK_Blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Toe" -ln "Toe" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "Roll" -ln "Roll" -dv -5 -min -5 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1097449442742402 0.39528222749574954 -1.1806615530586544 ;
	setAttr ".sp" -type "double3" -1.1097449442742402 0.39528222749574954 -1.1806615530586544 ;
	setAttr -k on ".IK_Blend";
	setAttr -k on ".Toe";
	setAttr -k on ".Roll";
createNode nurbsCurve -n "curveShape34" -p "slug_Const_Joint_R_Ankle_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.97250994427424009 0.30379222749574952 -0.81138986217486997
		-0.97250994427424009 0.30379222749574952 -1.1806615530586648
		-1.2469799442742402 0.30379222749574952 -1.1806615530586648
		-1.2469799442742402 0.30379222749574952 -0.81138986217486997
		-0.97250994427424009 0.30379222749574952 -0.81138986217486997
		-0.97250994427424009 0.48677222749574955 -0.81138986217486997
		-1.2469799442742402 0.48677222749574955 -0.81138986217486997
		-1.2469799442742402 0.48677222749574955 -1.1806615530586648
		-0.97250994427424009 0.48677222749574955 -1.1806615530586648
		-0.97250994427424009 0.48677222749574955 -0.81138986217486997
		-0.97250994427424009 0.30379222749574952 -0.81138986217486997
		-1.2469799442742402 0.30379222749574952 -0.81138986217486997
		-1.2469799442742402 0.48677222749574955 -0.81138986217486997
		-1.2469799442742402 0.48677222749574955 -1.1806615530586648
		-1.2469799442742402 0.30379222749574952 -1.1806615530586648
		-0.97250994427424009 0.30379222749574952 -1.1806615530586648
		-0.97250994427424009 0.48677222749574955 -1.1806615530586648
		-0.97250994427424009 0.30379222749574952 -1.1806615530586648
		;
createNode transform -n "slug_Pole_Joint_R_Ankle_IK" -p "slug_Const_Joint_R_Ankle_IK";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -0.87564996419428009 0.70106418813519533 -0.65860679010481249 ;
	setAttr ".sp" -type "double3" -0.87564996419428009 0.70106418813519533 -0.65860679010481249 ;
createNode nurbsCurve -n "curveShape36" -p "slug_Pole_Joint_R_Ankle_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		-0.87564996419428009 0.88404418813519536 -0.65860679010481249
		-0.87564996419428009 0.70106418813519533 -0.65860679010481249
		-0.87564996419427998 0.88404418813519536 -0.4756267901048124
		-0.87564996419428009 0.70106418813519533 -0.65860679010481249
		-0.87564996419428009 0.5180841881351953 -0.4756267901048124
		-0.87564996419428009 0.70106418813519533 -0.65860679010481249
		-0.87564996419428009 0.5180841881351953 -0.65860679010481249
		;
createNode joint -n "slug_Joint_R_Heel_RF" -p "slug_Const_Joint_R_Ankle_IK";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Toe_RF" -p "slug_Joint_R_Heel_RF";
	setAttr ".t" -type "double3" -0.041146137715513051 -0.36697152739248229 0.0010339369556684388 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Ball_RF" -p "slug_Joint_R_Toe_RF";
	setAttr ".t" -type "double3" 0 0 -0.00034464565188932418 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Ankle_RF" -p "slug_Joint_R_Ball_RF";
	setAttr ".t" -type "double3" 0.041146137715513051 0.36697152739248229 -0.00068929130377911457 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikHandle -n "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK" -p "slug_Joint_R_Ankle_RF";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1" 
		-p "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK";
	addAttr -ci true -k true -sn "w0" -ln "Pole_Joint_R_Ankle_IKW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -0.49309368144501953 -0.10801943036269625 0.53311563023705622 ;
	setAttr -k on ".w0";
createNode ikHandle -n "slug_Handle_R_Ankle_Toe" -p "slug_Joint_R_Ball_RF";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode pointConstraint -n "slug_Joint_R_Heel_RF_pointConstraint1" -p "slug_Joint_R_Heel_RF";
	addAttr -ci true -k true -sn "w0" -ln "Const_Joint_R_Ankle_IKW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" -1.1097449442742402 0.39528222749574954 -1.1806615530586544 ;
	setAttr -k on ".w0";
createNode transform -n "slug_Const_Joint_L_Ankle_IK" -p "slug_Const_Character";
	addAttr -ci true -sn "IK_Blend" -ln "IK_Blend" -min 0 -max 1 -at "double";
	addAttr -ci true -sn "Toe" -ln "Toe" -min -10 -max 10 -at "double";
	addAttr -ci true -sn "Roll" -ln "Roll" -dv -5 -min -5 -max 10 -at "double";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.1097449442742402 0.39528222749574965 -1.1806615530586544 ;
	setAttr ".sp" -type "double3" 1.1097449442742402 0.39528222749574965 -1.1806615530586544 ;
	setAttr -k on ".IK_Blend";
	setAttr -k on ".Toe";
	setAttr -k on ".Roll";
createNode nurbsCurve -n "curveShape33" -p "slug_Const_Joint_L_Ankle_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.2469799442742402 0.30379222749574963 -0.81138986217486975
		1.2469799442742402 0.30379222749574963 -1.1806615530586646
		0.97250994427424009 0.30379222749574963 -1.1806615530586646
		0.97250994427424009 0.30379222749574963 -0.81138986217486975
		1.2469799442742402 0.30379222749574963 -0.81138986217486975
		1.2469799442742402 0.48677222749574967 -0.81138986217486975
		0.97250994427424009 0.48677222749574967 -0.81138986217486975
		0.97250994427424009 0.48677222749574967 -1.1806615530586646
		1.2469799442742402 0.48677222749574967 -1.1806615530586646
		1.2469799442742402 0.48677222749574967 -0.81138986217486975
		1.2469799442742402 0.30379222749574963 -0.81138986217486975
		0.97250994427424009 0.30379222749574963 -0.81138986217486975
		0.97250994427424009 0.48677222749574967 -0.81138986217486975
		0.97250994427424009 0.48677222749574967 -1.1806615530586646
		0.97250994427424009 0.30379222749574963 -1.1806615530586646
		1.2469799442742402 0.30379222749574963 -1.1806615530586646
		1.2469799442742402 0.48677222749574967 -1.1806615530586646
		1.2469799442742402 0.30379222749574963 -1.1806615530586646
		;
createNode transform -n "slug_Pole_Joint_L_Ankle_IK" -p "slug_Const_Joint_L_Ankle_IK";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0.87564996419428032 0.70106418813519533 -0.65860679010481271 ;
	setAttr ".sp" -type "double3" 0.87564996419428032 0.70106418813519533 -0.65860679010481271 ;
createNode nurbsCurve -n "curveShape35" -p "slug_Pole_Joint_L_Ankle_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 6 0 no 3
		7 0 1 2 3 4 5 6
		7
		0.87564996419428032 0.88404418813519536 -0.65860679010481271
		0.87564996419428032 0.70106418813519533 -0.65860679010481271
		0.87564996419428043 0.88404418813519536 -0.47562679010481262
		0.87564996419428032 0.70106418813519533 -0.65860679010481271
		0.87564996419428032 0.5180841881351953 -0.47562679010481262
		0.87564996419428032 0.70106418813519533 -0.65860679010481271
		0.87564996419428032 0.5180841881351953 -0.65860679010481271
		;
createNode joint -n "slug_Joint_L_Heel_RF" -p "slug_Const_Joint_L_Ankle_IK";
	setAttr ".v" no;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Toe_RF" -p "slug_Joint_L_Heel_RF";
	setAttr ".t" -type "double3" 0.041146137715513051 -0.36697152739248246 0.0010339369556684388 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Ball_RF" -p "slug_Joint_L_Toe_RF";
	setAttr ".t" -type "double3" 0 0 -0.00034464565188932418 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Ankle_RF" -p "slug_Joint_L_Ball_RF";
	setAttr ".t" -type "double3" -0.041146137715513051 0.36697152739248246 -0.00068929130377911457 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode ikHandle -n "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK" -p "slug_Joint_L_Ankle_RF";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode poleVectorConstraint -n "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1" 
		-p "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK";
	addAttr -ci true -k true -sn "w0" -ln "Pole_Joint_L_Ankle_IKW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 0.49309368144501975 -0.10801943036269625 0.53311563023705599 ;
	setAttr -k on ".w0";
createNode ikHandle -n "slug_Handle_L_Ankle_Toe" -p "slug_Joint_L_Ball_RF";
	setAttr ".v" no;
	setAttr ".roc" yes;
createNode pointConstraint -n "slug_Joint_L_Heel_RF_pointConstraint1" -p "slug_Joint_L_Heel_RF";
	addAttr -ci true -k true -sn "w0" -ln "Const_Joint_L_Ankle_IKW0" -bt "W000" -dv 
		1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".rst" -type "double3" 1.1097449442742402 0.39528222749574965 -1.1806615530586544 ;
	setAttr -k on ".w0";
createNode transform -n "slug_Tail_IK_CNTRL" -p "slug_Const_Character";
	addAttr -ci true -k true -sn "IK_Blend" -ln "IK_Blend" -min 0 -max 1 -at "float";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.78959488837861502 -3.7140250880350738 ;
	setAttr ".sp" -type "double3" 0 0.78959488837861502 -3.7140250880350862 ;
	setAttr -k on ".IK_Blend";
createNode nurbsCurve -n "curveShape68" -p "slug_Tail_IK_CNTRL";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		0.109788 0.67980688837861492 -3.6042370880350849
		0.109788 0.67980688837861492 -3.8238130880350849
		-0.109788 0.67980688837861492 -3.8238130880350849
		-0.109788 0.67980688837861492 -3.6042370880350849
		0.109788 0.67980688837861492 -3.6042370880350849
		0.109788 0.89938288837861502 -3.6042370880350849
		-0.109788 0.89938288837861502 -3.6042370880350849
		-0.109788 0.89938288837861502 -3.8238130880350849
		0.109788 0.89938288837861502 -3.8238130880350849
		0.109788 0.89938288837861502 -3.6042370880350849
		0.109788 0.67980688837861492 -3.6042370880350849
		-0.109788 0.67980688837861492 -3.6042370880350849
		-0.109788 0.89938288837861502 -3.6042370880350849
		-0.109788 0.89938288837861502 -3.8238130880350849
		-0.109788 0.67980688837861492 -3.8238130880350849
		0.109788 0.67980688837861492 -3.8238130880350849
		0.109788 0.89938288837861502 -3.8238130880350849
		0.109788 0.67980688837861492 -3.8238130880350849
		;
createNode ikHandle -n "slug_Tail_IK_HANDLE" -p "slug_Tail_IK_CNTRL";
	setAttr -l on ".v" no;
	setAttr ".t" -type "double3" 0 0.78959488837861502 -3.7140250880350738 ;
	setAttr ".pv" -type "double3" 0 1.9997542494686793 -0.031351901568471535 ;
	setAttr ".roc" yes;
createNode transform -n "slug_Const_Joint_R_Middle_Ankle_IK" -p "slug_Const_Character";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1508910816505866 0.028310699769503421 -0.3837976433555611 ;
	setAttr ".sp" -type "double3" -1.1508910816505866 0.028310699769503421 -0.3837976433555611 ;
createNode nurbsCurve -n "curveShape34" -p "slug_Const_Joint_R_Middle_Ankle_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.81193818317227129 0.21455410153802437 -0.20399999621041437
		-0.81193818317227129 -0.050583845283527808 -0.20399999621041448
		-1.4898439801289025 -0.050583845283527808 -0.20399999621041448
		-1.4898439801289025 0.21455410153802437 -0.20399999621041437
		-0.81193818317227129 0.21455410153802437 -0.20399999621041437
		-0.81193818317227129 0.21455410153802448 -0.59020777097769905
		-1.4898439801289025 0.21455410153802448 -0.59020777097769905
		-1.4898439801289025 -0.050583845283527724 -0.59020777097769928
		-0.81193818317227129 -0.050583845283527724 -0.59020777097769928
		-0.81193818317227129 0.21455410153802448 -0.59020777097769905
		-0.81193818317227129 0.21455410153802437 -0.20399999621041437
		-1.4898439801289025 0.21455410153802437 -0.20399999621041437
		-1.4898439801289025 0.21455410153802448 -0.59020777097769905
		-1.4898439801289025 -0.050583845283527724 -0.59020777097769928
		-1.4898439801289025 -0.050583845283527808 -0.20399999621041448
		-0.81193818317227129 -0.050583845283527808 -0.20399999621041448
		-0.81193818317227129 -0.050583845283527724 -0.59020777097769928
		-0.81193818317227129 -0.050583845283527808 -0.20399999621041448
		;
createNode transform -n "slug_Const_Joint_L_Middle_Ankle_IK" -p "slug_Const_Character";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.150891081989756 0.028310700103263794 -0.38379764335556121 ;
	setAttr ".sp" -type "double3" 1.150891081989756 0.028310700103263794 -0.38379764335556121 ;
createNode nurbsCurve -n "curveShape33" -p "slug_Const_Joint_L_Middle_Ankle_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.493005986140614 0.21357327352290903 -0.2012723731695833
		1.493005986140614 -0.050872748054931291 -0.2012723731695833
		0.80877617783889832 -0.050872748054931291 -0.20127237316958096
		0.80877617783889832 0.21357327352290903 -0.20127237316958096
		1.493005986140614 0.21357327352290903 -0.2012723731695833
		1.493005986140614 0.21357327352290903 -0.59240505968430235
		0.80877617783889832 0.21357327352290903 -0.59240505968429935
		0.80877617783889832 -0.050872748054931291 -0.59240505968430002
		1.493005986140614 -0.050872748054931291 -0.59240505968430235
		1.493005986140614 0.21357327352290903 -0.59240505968430235
		1.493005986140614 0.21357327352290903 -0.2012723731695833
		0.80877617783889832 0.21357327352290903 -0.20127237316958096
		0.80877617783889832 0.21357327352290903 -0.59240505968429935
		0.80877617783889832 -0.050872748054931291 -0.59240505968430002
		0.80877617783889832 -0.050872748054931291 -0.20127237316958096
		1.493005986140614 -0.050872748054931291 -0.2012723731695833
		1.493005986140614 -0.050872748054931291 -0.59240505968430235
		1.493005986140614 -0.050872748054931291 -0.2012723731695833
		;
createNode transform -n "slug_Const_Joint_L_Front_Ankle_IK" -p "slug_Const_Character";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.1523616093379181 0.028310700103263794 0.39996312829549929 ;
	setAttr ".sp" -type "double3" 1.1523616093379181 0.028310700103263794 0.39996312829549929 ;
createNode nurbsCurve -n "curveShape33" -p "slug_Const_Joint_L_Front_Ankle_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		1.4912327433011781 0.21231959806092912 0.58063413178260215
		1.4912327433011781 -0.049619072592951431 0.58063413178260215
		0.81349047537465802 -0.049619072592951431 0.58063413178260448
		0.81349047537465802 0.21231959806092912 0.58063413178260448
		1.4912327433011781 0.21231959806092912 0.58063413178260215
		1.4912327433011781 0.21231959806092912 0.19320997866563322
		0.81349047537465802 0.21231959806092912 0.19320997866563608
		0.81349047537465802 -0.049619072592951431 0.19320997866563558
		1.4912327433011781 -0.049619072592951431 0.19320997866563322
		1.4912327433011781 0.21231959806092912 0.19320997866563322
		1.4912327433011781 0.21231959806092912 0.58063413178260215
		0.81349047537465802 0.21231959806092912 0.58063413178260448
		0.81349047537465802 0.21231959806092912 0.19320997866563608
		0.81349047537465802 -0.049619072592951431 0.19320997866563558
		0.81349047537465802 -0.049619072592951431 0.58063413178260448
		1.4912327433011781 -0.049619072592951431 0.58063413178260215
		1.4912327433011781 -0.049619072592951431 0.19320997866563322
		1.4912327433011781 -0.049619072592951431 0.58063413178260215
		;
createNode transform -n "slug_Const_Joint_R_Front_Ankle_IK" -p "slug_Const_Character";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1508910819897533 0.028310700103263853 0.39882294080495179 ;
	setAttr ".sp" -type "double3" -1.1508910819897533 0.028310700103263853 0.39882294080495179 ;
createNode nurbsCurve -n "curveShape34" -p "slug_Const_Joint_R_Front_Ankle_IK";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 17 0 no 3
		18 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17
		18
		-0.81193818351143754 0.21455410187178492 0.57862058795009863
		-0.81193818351143754 -0.050583844949767344 0.57862058795009841
		-1.4898439804680688 -0.050583844949767344 0.57862058795009841
		-1.4898439804680688 0.21455410187178492 0.57862058795009863
		-0.81193818351143754 0.21455410187178492 0.57862058795009863
		-0.81193818351143754 0.21455410187178509 0.19241281318281364
		-1.4898439804680688 0.21455410187178509 0.19241281318281364
		-1.4898439804680688 -0.050583844949767261 0.1924128131828135
		-0.81193818351143754 -0.050583844949767261 0.1924128131828135
		-0.81193818351143754 0.21455410187178509 0.19241281318281364
		-0.81193818351143754 0.21455410187178492 0.57862058795009863
		-1.4898439804680688 0.21455410187178492 0.57862058795009863
		-1.4898439804680688 0.21455410187178509 0.19241281318281364
		-1.4898439804680688 -0.050583844949767261 0.1924128131828135
		-1.4898439804680688 -0.050583844949767344 0.57862058795009841
		-0.81193818351143754 -0.050583844949767344 0.57862058795009841
		-0.81193818351143754 -0.050583844949767261 0.1924128131828135
		-0.81193818351143754 -0.050583844949767344 0.57862058795009841
		;
createNode transform -n "slug_mesh";
	setAttr -l on ".ty";
	setAttr -l on ".tx";
	setAttr -l on ".tz";
	setAttr -l on ".rx";
	setAttr -l on ".ry";
	setAttr -l on ".rz";
	setAttr -l on ".sx";
	setAttr -l on ".sy";
	setAttr -l on ".sz";
	setAttr ".rp" -type "double3" 0 0 0.01060902348810004 ;
	setAttr ".sp" -type "double3" 0 0 0.01060902348810004 ;
createNode mesh -n "slug_meshShape" -p "slug_mesh";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr -av ".iog[0].og[8].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ns" 0.10000000000000001;
createNode mesh -n "slug_meshShapeOrig" -p "slug_mesh";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 401 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.46458614 0.060185581 0.40583199 
		0.093416899 0.43615434 0.1396817 0.48611027 0.089159817 0.4858467 0.18418169 0.52463442 
		0.11592889 0.4545722 0.018932372 0.38158649 0.043469518 0.55936325 0.015460908 0.29156458 
		0.090847582 0.3318634 0.15284747 0.36648935 0.19980195 0.42108744 0.26276994 0.18800151 
		0.16408519 0.22637281 0.21981287 0.27742898 0.28582484 0.3211889 0.34012577 0.09130618 
		0.22587267 0.14254779 0.29419148 0.17829311 0.36054167 0.2253685 0.43175143 0.0053271055 
		0.30014956 0.043658018 0.34629315 0.095671296 0.42107236 0.14386648 0.48601502 0.088340402 
		0.82330954 0.19717717 0.81743097 0.15381956 0.96896613 0.062291861 0.60657835 0.1697582 
		0.49544433 0.22622728 0.61848438 0.29380715 0.52055389 0.2850765 0.63479573 0.28451681 
		0.79732203 0.29536772 0.94904935 0.020534515 0.80625105 0.025645494 0.96471524 0.018647194 
		0.62265456 0.024561286 0.50138938 0.1539067 0.69105232 0.13425493 0.68946874 0.15441465 
		0.7457931 0.13267362 0.74783647 0.42522144 0.43864346 0.42069459 0.39508939 0.52692866 
		0.4070496 0.435112 0.29082263 0.55317807 0.33508587 0.48537064 0.22583246 0.57866502 
		0.28621906 0.47393513 0.5361712 0.56975174 0.47105414 0.67200613 0.3562527 0.66579866 
		0.39537567 0.66977429 0.31634668 0.6649859 0.43999583 0.79927349 0.37820369 0.46458614 
		0.060185581 0.40583199 0.093416899 0.43615434 0.1396817 0.48611027 0.089159817 0.4858467 
		0.18418169 0.52463442 0.11592889 0.4545722 0.018932372 0.38158649 0.043469518 0.55936325 
		0.015460908 0.29156458 0.090847582 0.3318634 0.15284747 0.36648935 0.19980195 0.42108744 
		0.26276994 0.18800151 0.16408519 0.22637281 0.21981287 0.27742898 0.28582484 0.3211889 
		0.34012577 0.09130618 0.22587267 0.14254779 0.29419148 0.17829311 0.36054167 0.2253685 
		0.43175143 0.0053271055 0.30014956 0.043658018 0.34629315 0.095671296 0.42107236 
		0.14386648 0.48601502 0.088340402 0.82330954 0.19717717 0.81743097 0.15381956 0.96896613 
		0.062291861 0.60657835 0.1697582 0.49544433 0.22622728 0.61848438 0.29380715 0.52055389 
		0.2850765 0.63479573 0.28451681 0.79732203 0.29536772 0.94904935 0.020534515 0.80625105 
		0.025645494 0.96471524 0.018647194 0.62265456 0.024561286 0.50138938 0.1539067 0.69105232 
		0.13425493 0.68946874 0.15441465 0.7457931 0.13267362 0.74783647 0.42522144 0.43864346 
		0.42069459 0.39508939 0.52692866 0.4070496 0.435112 0.29082263 0.55317807 0.33508587 
		0.48537064 0.22583246 0.57866502 0.28621906 0.47393513 0.5361712 0.56975174 0.47105414 
		0.67200613 0.3562527 0.66579866 0.39537567 0.66977429 0.31634668 0.6649859 0.43999583 
		0.79927349 0.37820369 0.088340402 0.82330954 0.19717717 0.81743097 0.15381956 0.96896613 
		0.062291861 0.60657835 0.1697582 0.49544433 0.22622728 0.61848438 0.29380715 0.52055389 
		0.2850765 0.63479573 0.28451681 0.79732203 0.29536772 0.94904935 0.020534515 0.80625105 
		0.025645494 0.96471524 0.018647194 0.62265456 0.024561286 0.50138938 0.1539067 0.69105232 
		0.13425493 0.68946874 0.15441465 0.7457931 0.13267362 0.74783647 0.42522144 0.43864346 
		0.42069459 0.39508939 0.52692866 0.4070496 0.435112 0.29082263 0.55317807 0.33508587 
		0.48537064 0.22583246 0.57866502 0.28621906 0.47393513 0.5361712 0.56975174 0.47105414 
		0.67200613 0.3562527 0.66579866 0.39537567 0.66977429 0.31634668 0.6649859 0.43999583 
		0.79927349 0.37820369 0.088340402 0.82330954 0.19717717 0.81743097 0.15381956 0.96896613 
		0.062291861 0.60657835 0.1697582 0.49544433 0.22622728 0.61848438 0.29380715 0.52055389 
		0.2850765 0.63479573 0.28451681 0.79732203 0.29536772 0.94904935 0.020534515 0.80625105 
		0.025645494 0.96471524 0.018647194 0.62265456 0.024561286 0.50138938 0.1539067 0.69105232 
		0.13425493 0.68946874 0.15441465 0.7457931 0.13267362 0.74783647 0.42522144 0.43864346 
		0.42069459 0.39508939 0.52692866 0.4070496 0.435112 0.29082263 0.55317807 0.33508587 
		0.48537064 0.22583246 0.57866502 0.28621906 0.47393513 0.5361712 0.56975174 0.47105414 
		0.67200613 0.3562527 0.66579866 0.39537567 0.66977429 0.31634668 0.6649859 0.43999583 
		0.79927349 0.37820369 0.088340402 0.82330954 0.19717717 0.81743097 0.15381956 0.96896613 
		0.062291861 0.60657835 0.1697582 0.49544433 0.22622728 0.61848438 0.29380715 0.52055389 
		0.2850765 0.63479573 0.28451681 0.79732203 0.29536772 0.94904935 0.020534515 0.80625105 
		0.025645494 0.96471524 0.018647194 0.62265456 0.024561286 0.50138938 0.1539067 0.69105232 
		0.13425493 0.68946874 0.15441465 0.7457931 0.13267362 0.74783647 0.42522144 0.43864346 
		0.42069459 0.39508939 0.52692866 0.4070496 0.435112 0.29082263 0.55317807 0.33508587 
		0.48537064 0.22583246 0.57866502 0.28621906 0.47393513 0.5361712 0.56975174 0.47105414 
		0.67200613 0.3562527 0.66579866 0.39537567 0.66977429 0.31634668 0.6649859 0.43999583 
		0.79927349 0.37820369 0.088340402 0.82330954 0.19717717 0.81743097 0.15381956 0.96896613 
		0.062291861 0.60657835 0.1697582 0.49544433 0.22622728 0.61848438 0.29380715 0.52055389 
		0.2850765 0.63479573 0.28451681 0.79732203 0.29536772 0.94904935 0.020534515 0.80625105 
		0.025645494 0.96471524 0.018647194 0.62265456 0.024561286 0.50138938 0.1539067 0.69105232 
		0.13425493 0.68946874 0.15441465 0.7457931 0.13267362 0.74783647 0.42522144 0.43864346 
		0.42069459 0.39508939 0.52692866 0.4070496 0.435112 0.29082263 0.55317807 0.33508587 
		0.48537064 0.22583246 0.57866502 0.28621906 0.47393513 0.5361712 0.56975174 0.47105414 
		0.67200613 0.3562527 0.66579866 0.39537567 0.66977429 0.31634668 0.6649859 0.43999583 
		0.79927349 0.37820369 0.32026482 0.76167345 0.42557216 0.78438663 0.42503333 0.69427073 
		0.3486414 0.66989088 0.38906336 0.57127523 0.3471427 0.57201755 0.29930234 0.85163009 
		0.39219093 0.8959232;
	setAttr ".uvst[0].uvsp[250:400]" 0.53249049 0.79830772 0.52987099 0.7030766 
		0.47742295 0.55928212 0.5169611 0.92931473 0.60691857 0.79001904 0.60052466 0.68255144 
		0.53127933 0.54700387 0.59900093 0.93121541 0.088340402 0.82330954 0.19717717 0.81743097 
		0.15381956 0.96896613 0.062291861 0.60657835 0.1697582 0.49544433 0.22622728 0.61848438 
		0.29380715 0.52055389 0.2850765 0.63479573 0.28451681 0.79732203 0.29536772 0.94904935 
		0.020534515 0.80625105 0.025645494 0.96471524 0.018647194 0.62265456 0.024561286 
		0.50138938 0.1539067 0.69105232 0.13425493 0.68946874 0.15441465 0.7457931 0.13267362 
		0.74783647 0.42522144 0.43864346 0.42069459 0.39508939 0.52692866 0.4070496 0.435112 
		0.29082263 0.55317807 0.33508587 0.48537064 0.22583246 0.57866502 0.28621906 0.47393513 
		0.5361712 0.56975174 0.47105414 0.67200613 0.3562527 0.66579866 0.39537567 0.66977429 
		0.31634668 0.6649859 0.43999583 0.79927349 0.37820369 0.72666568 0.28536224 0.8077457 
		0.3328886 0.89861679 0.26146257 0.80349302 0.22483158 0.87210751 0.4582212 0.94184148 
		0.45452905 0.97016406 0.34895611 0.61756599 0.19053078 0.69311082 0.12678838 0.98404777 
		0.21896803 0.84731168 0.16108835 0.7458843 0.066932082 0.96416438 0.1297859 0.87463862 
		0.1015799 0.81064004 0.027089953 0.95221484 0.018230557 0.88455731 0.011923194 0.71078372 
		0.56217957 0.90216649 0.4801991 0.94256759 0.53311408 0.83638579 0.61063999 0.61693585 
		0.78869653 0.77236581 0.81959414 0.77589011 0.91914487 0.61693585 0.78869665 0.98144543 
		0.93252826 0.89861023 0.65511924 0.87613678 0.70528078 0.88218415 0.81135738 0.99680912 
		0.85283566 0.99271184 0.6987133 0.90485489 0.99107194 0.32026482 0.76167345 0.42557216 
		0.78438663 0.42503333 0.69427073 0.3486414 0.66989088 0.38906336 0.57127523 0.3471427 
		0.57201755 0.29930234 0.85163009 0.39219093 0.8959232 0.53249049 0.79830772 0.52987099 
		0.7030766 0.47742295 0.55928212 0.5169611 0.92931473 0.60691857 0.79001904 0.60052466 
		0.68255144 0.53127933 0.54700387 0.59900093 0.93121541 0.088340402 0.82330954 0.19717717 
		0.81743097 0.15381956 0.96896613 0.062291861 0.60657835 0.1697582 0.49544433 0.22622728 
		0.61848438 0.29380715 0.52055389 0.2850765 0.63479573 0.28451681 0.79732203 0.29536772 
		0.94904935 0.020534515 0.80625105 0.025645494 0.96471524 0.018647194 0.62265456 0.024561286 
		0.50138938 0.1539067 0.69105232 0.13425493 0.68946874 0.15441465 0.7457931 0.13267362 
		0.74783647 0.42522144 0.43864346 0.42069459 0.39508939 0.52692866 0.4070496 0.435112 
		0.29082263 0.55317807 0.33508587 0.48537064 0.22583246 0.57866502 0.28621906 0.47393513 
		0.5361712 0.56975174 0.47105414 0.67200613 0.3562527 0.66579866 0.39537567 0.66977429 
		0.31634668 0.6649859 0.43999583 0.79927349 0.37820369 0.72666568 0.28536224 0.8077457 
		0.3328886 0.89861679 0.26146257 0.80349302 0.22483158 0.87210751 0.4582212 0.94184148 
		0.45452905 0.97016406 0.34895611 0.61756599 0.19053078 0.69311082 0.12678838 0.98404777 
		0.21896803 0.84731168 0.16108835 0.7458843 0.066932082 0.96416438 0.1297859 0.87463862 
		0.1015799 0.81064004 0.027089953 0.95221484 0.018230557 0.88455731 0.011923194 0.71078372 
		0.56217957 0.90216649 0.4801991 0.90485489 0.99107194 0.83638573 0.61064005 0.61693585 
		0.78869653 0.77236581 0.81959414 0.77589011 0.91914487 0.61693585 0.78869665 0.98144543 
		0.93252826 0.89861035 0.65511918 0.87613678 0.70528078 0.88218415 0.81135738 0.99680912 
		0.85283566 0.97953564 0.60157681;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 242 ".pt";
	setAttr ".pt[0:165]" -type "float3"  0.25866151 -0.79058397 4.3756347 0.34783882 
		-0.73940909 4.0604954 0.25294226 -0.98740542 4.3756347 0.40007004 -1.1069766 4.0604954 
		-9.438126e-016 -1.1211005 4.3756347 -8.8089171e-016 -1.2828286 4.0604954 -9.438126e-016 
		-0.74925423 4.3756347 -8.8089171e-016 -0.66776514 4.0604954 -1.0067337e-015 -0.91749287 
		4.7767897 -7.5504988e-016 -0.57413399 3.5998468 0.44987157 -0.7751649 3.5998468 -7.5504988e-016 
		-1.4370543 3.5998468 0.50714821 -1.1793005 3.5998468 -6.2920837e-016 -0.57732093 
		2.9916375 0.43030623 -0.70271468 2.9916375 -6.2920837e-016 -1.4256194 2.9916375 0.42842376 
		-1.2523265 2.9916375 -5.0336669e-016 -0.51634276 2.4335945 0.56048059 -0.73118609 
		2.4335945 -5.0336669e-016 -1.5626951 2.3520224 0.49284396 -1.2583257 2.3854096 -3.7752502e-016 
		-0.54434627 1.8778878 0.38658842 -0.66426307 1.8778878 -3.7752502e-016 -1.472208 
		1.8778878 0.50434452 -1.2678199 1.8778878 0.38658842 -0.66426307 0.93894398 0.50434452 
		-1.2678199 0.93894398 -1.8876251e-016 -1.472208 0.93894398 -1.8876251e-016 -0.54434633 
		0.93894398 -2.5168337e-016 -0.4756189 1.3804559 0.37786406 -0.60628784 1.1561714 
		0.51306874 -1.3520509 1.2603863 -2.5168337e-016 -1.4268342 1.4393439 0.51306874 -1.3421702 
		1.6462332 0.37786406 -0.60628784 1.7299956 0.63824481 -0.71341914 1.5268699 0.63824481 
		-0.71341914 1.3317964 0.6971283 -1.1111782 1.2615745 0.6971283 -1.1111782 1.600161 
		0.96046817 -0.70699352 1.4132843 1.0878446 -0.92623752 1.3295709 1.0878446 -0.92623752 
		1.5315989 1.2455235 -0.42929733 1.4307369 1.3723549 -0.50182825 1.3360227 1.3832005 
		-0.51221365 1.5010954 1.3500694 -0.033767685 1.4211503 -0.25866157 -0.79058397 4.3756347 
		-0.34783882 -0.73940909 4.0604954 -0.25294229 -0.98740542 4.3756347 -0.4000701 -1.1069766 
		4.0604954 -0.44987166 -0.7751649 3.5998468 -0.50714827 -1.1793005 3.5998468 -0.43030629 
		-0.70271468 2.9916375 -0.42842379 -1.2523265 2.9916375 -0.56048065 -0.73118609 2.4335945 
		-0.49284416 -1.2583257 2.3854096 -0.38658839 -0.66426307 1.8778878 -0.50434458 -1.2678199 
		1.8778878 -0.38658839 -0.66426307 0.93894398 -0.50434452 -1.2678199 0.93894398 -0.37786412 
		-0.60628784 1.1561714 -0.5130688 -1.3520509 1.2603863 -0.5130688 -1.3421702 1.6462332 
		-0.37786412 -0.60628784 1.7299956 -0.63824487 -0.71341914 1.5268699 -0.63824487 -0.71341914 
		1.3317964 -0.6971283 -1.1111782 1.2615745 -0.6971283 -1.1111782 1.600161 -0.96060544 
		-0.70690656 1.4133419 -1.0878335 -0.92619509 1.32952 -1.0876335 -0.92641085 1.5315475 
		-1.2463473 -0.4297637 1.4320096 -1.3732127 -0.50235963 1.3373913 -1.3837097 -0.51312047 
		1.5024625 -1.3517445 -0.034435984 1.4234762 0.38658842 -0.66426307 3.1141276e-008 
		0.50434452 -1.2678198 3.1141276e-008 6.2920837e-017 -1.472208 3.1141276e-008 6.2920837e-017 
		-0.54434633 3.1141276e-008 -6.2920837e-017 -0.4756189 0.44151196 0.37786406 -0.60628784 
		0.21722755 0.51306874 -1.3520509 0.3214426 -6.2920837e-017 -1.4268342 0.50040001 
		0.51306874 -1.3421702 0.70728934 0.37786406 -0.60628784 0.79105192 0.63824481 -0.71341914 
		0.58792609 0.63824481 -0.71341914 0.39285272 0.6971283 -1.1111782 0.32263052 0.6971283 
		-1.1111782 0.66121727 0.96046817 -0.70699352 0.47434041 1.0878446 -0.92623752 0.39062706 
		1.0878446 -0.92623752 0.59265494 1.2455236 -0.42929733 0.49179301 1.3723549 -0.50182825 
		0.3970789 1.3832005 -0.51221365 0.56215173 1.3500694 -0.033767685 0.48220658 0.38658842 
		-0.66426307 -0.93894392 0.50434452 -1.2678199 -0.93894392 2.5168337e-016 -1.472208 
		-0.93894392 2.5168337e-016 -0.54434633 -0.93894392 1.2584169e-016 -0.47561884 -0.4974319 
		0.37786406 -0.6062876 -0.72171617 0.51306874 -1.3520509 -0.61750132 1.2584169e-016 
		-1.4268342 -0.43854406 0.51306874 -1.3421702 -0.23165451 0.37786406 -0.6062876 -0.14789218 
		0.63824481 -0.71341914 -0.35101786 0.63824481 -0.71341914 -0.54609114 0.6971283 -1.1111782 
		-0.6163134 0.6971283 -1.1111782 -0.27772671 0.96046817 -0.70699346 -0.46460357 1.0878446 
		-0.92623746 -0.54831684 1.0878446 -0.92623746 -0.34628895 1.2455236 -0.42929727 -0.44715095 
		1.3723549 -0.50182819 -0.54186505 1.3832005 -0.51221359 -0.37679216 1.3500694 -0.033767615 
		-0.4567374 -0.38658839 -0.66426307 3.1141276e-008 -0.50434452 -1.2678198 3.1141276e-008 
		-0.37786412 -0.60628784 0.21722755 -0.5130688 -1.3520509 0.3214426 -0.5130688 -1.3421702 
		0.70728934 -0.37786412 -0.60628784 0.79105192 -0.63824487 -0.71341914 0.58792609 
		-0.63824487 -0.71341914 0.39285272 -0.6971283 -1.1111782 0.32263055 -0.6971283 -1.1111782 
		0.66121727 -0.96046817 -0.70699352 0.47434047 -1.0878446 -0.92623752 0.39062709 -1.0878446 
		-0.92623752 0.592655 -1.2455237 -0.42929733 0.49179304 -1.3723549 -0.50182825 0.39707896 
		-1.3832008 -0.51221365 0.56215173 -1.3500693 -0.033767685 0.48220658 -0.38658839 
		-0.66426307 -0.93894392 -0.50434458 -1.2678199 -0.93894392 -0.37786412 -0.6062876 
		-0.72171617 -0.5130688 -1.3520509 -0.61750132 -0.5130688 -1.3421702 -0.23165451 -0.37786412 
		-0.6062876 -0.14789218 -0.63810134 -0.71316892 -0.35136977 -0.63793987 -0.71333045 
		-0.54644287 -0.69713366 -1.1110927 -0.61638498 -0.6974138 -1.1108124 -0.27779844 
		-0.96036208 -0.7064572 -0.46522155 -1.0876297 -0.92578894 -0.54887027 -1.0877734 
		-0.92564595 -0.3468425 -1.2459776 -0.42901081 -0.4481 -1.3725872 -0.5018943 -0.54283971 
		-1.3835094 -0.51218885 -0.37776616 -1.351791 -0.033769239 -0.45807445 0.57572049 
		-1.0146649 -1.4510102 0.69457245 -1.4038557 -1.1471367 2.5168337e-016 -1.5157744 
		-1.0808362 3.7752502e-016 -0.90861911 -1.5758891 0.6416446 -1.456389 -1.84535 0.76890671 
		-1.6970882 -1.4282067 3.1460418e-016 -1.7932258 -1.2497383 5.0336669e-016 -1.3330462 
		-2.0603199 0.6416446 -1.8391025 -1.9408523 0.75004196 -1.9825386 -1.4451966 3.1460418e-016 
		-1.997848 -1.2667284 5.0336669e-016 -1.7157605 -2.2008333 0.60748065 -2.9458516 -2.0178733 
		0.71010649 -3.0217628 -1.5738376 3.7752502e-016 -2.9747176 -1.4139555;
	setAttr ".pt[166:241]" 5.6628764e-016 -2.890202 -2.4012022 5.6628764e-016 
		-2.2458026 -2.335232 0.6688804 -2.5923414 -2.1112759 0.86304647 -2.7189298 -1.4801296 
		3.1460418e-016 -2.4733932 -1.2908561 0.81308919 -2.1770425 -1.3836025 0.6688804 -2.0256152 
		-2.0212998 0.87815046 -2.2676296 -1.9161063 0.87815046 -2.4559064 -1.9459982 0.95611489 
		-2.5932252 -1.5187304 0.95611489 -2.2664354 -1.4668479 1.3047885 -2.3761349 -1.9405875 
		1.473441 -2.4952631 -1.7119751 1.473441 -2.3002746 -1.6810176 1.6822146 -2.3107381 
		-2.2437234 1.8501447 -2.4148335 -2.1783624 1.8645049 -2.2573278 -2.1416314 1.8206381 
		-2.2508366 -2.6807652 0.68736368 -3.4341502 -1.7928039 0.53558868 -3.2699182 -2.7456229 
		3.7752502e-016 -3.4657991 -1.4988086 6.2920837e-016 -3.1247115 -2.6502788 0.8211863 
		-3.418901 -2.2727745 0.6582498 -3.8518925 -1.8425783 0.7436679 -3.8104377 -2.5596631 
		3.7752502e-016 -3.8835421 -1.4656022 0.49003398 -4.2083082 -1.9043338 0.5696407 -4.1489038 
		-2.4201713 3.7752502e-016 -4.2404475 -1.6340376 5.0336669e-016 -4.4005508 -1.9744974 
		5.6628764e-016 -4.3461504 -2.3182518 0.39490202 -3.3285813 -2.9705789 6.921292e-016 
		-3.0908513 -3.0353713 0.69812471 -4.0184207 -2.7162793 6.2920837e-016 -4.4940567 
		-2.574954 0.32440206 -3.4017818 -2.6134748 0.39845303 -3.5721672 -2.5820296 0.39456159 
		-3.9746509 -2.5260589 5.6628764e-016 -4.1674714 -2.4888761 6.2920837e-016 -3.5928206 
		-2.5562849 -0.57572043 -1.0146649 -1.4510102 -0.69457245 -1.4038557 -1.1471367 -0.6416446 
		-1.456389 -1.84535 -0.76890671 -1.6970882 -1.4282067 -0.6416446 -1.8391025 -1.9408523 
		-0.75004202 -1.9825386 -1.4451966 -0.60748053 -2.9458516 -2.0178733 -0.71010673 -3.0217628 
		-1.5738376 -0.6688804 -2.5923414 -2.1112759 -0.86304635 -2.7189298 -1.4801296 -0.81308907 
		-2.1770425 -1.3836025 -0.6688804 -2.0256152 -2.0212998 -0.87815046 -2.2676296 -1.9161063 
		-0.87815046 -2.4559064 -1.9459982 -0.95611489 -2.5932252 -1.5187304 -0.95611489 -2.2664354 
		-1.4668479 -1.3047882 -2.3761349 -1.9405875 -1.473441 -2.4952631 -1.7119751 -1.473441 
		-2.3002746 -1.6810176 -1.6822146 -2.3107381 -2.2437234 -1.8501447 -2.4148335 -2.1783624 
		-1.8645049 -2.2573278 -2.1416314 -1.8206382 -2.2508366 -2.6807652 -0.68736351 -3.4341502 
		-1.7928039 -0.53558874 -3.2699182 -2.7456229 -0.8211863 -3.418901 -2.2727745 -0.65824986 
		-3.8518925 -1.8425783 -0.7436679 -3.8104377 -2.5596631 -0.49003398 -4.2083082 -1.9043338 
		-0.5696407 -4.1489038 -2.4201713 -0.39490208 -3.3285813 -2.9705789 -0.69812465 -4.0184207 
		-2.7162793 -0.32440212 -3.4546783 -2.6134748 -0.39845306 -3.5721672 -2.5820296 -0.39456168 
		-3.9746509 -2.5260589 6.2920837e-016 -3.1829498 -2.5562849;
	setAttr -s 242 ".vt";
	setAttr ".vt[0:165]"  -0.47916222 1.4645318 -8.0951147 -0.6443603 1.3697319 
		-7.5113297 -0.46856746 1.8291371 -8.0951147 -0.741117 2.0506389 -7.5113297 1.7483827e-015 
		2.0768032 -8.0951147 1.6318239e-015 2.3763993 -7.5113297 1.7483827e-015 1.3879696 
		-8.0951147 1.6318239e-015 1.2370137 -7.5113297 1.8649421e-015 1.6996263 -8.8382406 
		1.3987059e-015 1.0635649 -6.6579928 -0.83337283 1.4359683 -6.6579928 1.3987059e-015 
		2.6620972 -6.6579928 -0.93947589 2.1846168 -6.6579928 1.1655885e-015 1.0694686 -5.5313044 
		-0.79712862 1.3017565 -5.5313044 1.1655885e-015 2.6409144 -5.5313044 -0.79364139 
		2.3198948 -5.5313044 9.3247083e-016 0.95650852 -4.4975471 -1.0382725 1.354499 -4.4975471 
		9.3247083e-016 2.8948431 -4.3464375 -0.91297776 2.3310082 -4.4082861 6.9935307e-016 
		1.0083842 -3.4681184 -0.71614277 1.2305262 -3.4681184 6.9935307e-016 2.7272186 -3.4681184 
		-0.93428218 2.3485959 -3.4681184 -0.71614277 1.2305262 -1.7287549 -0.93428218 2.3485959 
		-1.7287549 3.4967654e-016 2.7272186 -1.7287549 3.4967654e-016 1.0083843 -1.7287549 
		4.6623547e-016 0.88106889 -2.5466416 -0.69998115 1.1231289 -2.1311617 -0.95044345 
		2.504631 -2.3242166 4.6623547e-016 2.6431649 -2.65573 -0.95044345 2.4863276 -3.0389855 
		-0.69998115 1.1231289 -3.1941528 -1.1823281 1.3215864 -2.8178687 -1.1823281 1.3215864 
		-2.4565015 -1.2914079 2.0584221 -2.3264174 -1.2914079 2.0584221 -2.9536383 -1.7792368 
		1.309683 -2.6074553 -2.0151975 1.7158256 -2.4523787 -2.0151975 1.7158256 -2.8266294 
		-2.3072927 0.79525971 -2.6397855 -2.5422437 0.92962086 -2.4643307 -2.562335 0.94885945 
		-2.7701225 -2.5009606 0.062553562 -2.6220267 0.47916234 1.4645318 -8.0951147 0.6443603 
		1.3697319 -7.5113297 0.46856758 1.8291371 -8.0951147 0.74111712 2.0506389 -7.5113297 
		0.83337295 1.4359683 -6.6579928 0.93947601 2.1846168 -6.6579928 0.79712874 1.3017565 
		-5.5313044 0.79364145 2.3198948 -5.5313044 1.0382726 1.354499 -4.4975471 0.91297805 
		2.3310082 -4.4082861 0.71614271 1.2305262 -3.4681184 0.93428224 2.3485959 -3.4681184 
		0.71614271 1.2305262 -1.7287549 0.93428212 2.3485959 -1.7287549 0.69998133 1.1231289 
		-2.1311617 0.95044363 2.504631 -2.3242166 0.95044363 2.4863276 -3.0389855 0.69998133 
		1.1231289 -3.1941528 1.1823282 1.3215864 -2.8178687 1.1823282 1.3215864 -2.4565015 
		1.2914079 2.0584221 -2.3264174 1.2914079 2.0584221 -2.9536383 1.7794909 1.309522 
		-2.6075618 2.015177 1.715747 -2.4522843 2.0148065 1.7161467 -2.826534 2.3088188 0.79612356 
		-2.6421432 2.5438328 0.93060529 -2.4668658 2.5632784 0.95053935 -2.7726548 2.5040636 
		0.063791573 -2.6263351 -0.71614277 1.2305262 0.010608966 -0.93428218 2.3485956 0.010608966 
		-1.1655885e-016 2.7272186 0.010608966 -1.1655885e-016 1.0083843 0.010608966 1.1655885e-016 
		0.88106889 -0.80727786 -0.69998115 1.1231289 -0.39179811 -0.95044345 2.504631 -0.58485317 
		1.1655885e-016 2.6431649 -0.91636604 -0.95044345 2.4863276 -1.2996221 -0.69998115 
		1.1231289 -1.4547895 -1.1823281 1.3215864 -1.0785053 -1.1823281 1.3215864 -0.71713811 
		-1.2914079 2.0584221 -0.58705378 -1.2914079 2.0584221 -1.214275 -1.7792368 1.309683 
		-0.86809152 -2.0151975 1.7158256 -0.71301514 -2.0151975 1.7158256 -1.0872655 -2.3072929 
		0.79525971 -0.90042186 -2.5422437 0.92962086 -0.724967 -2.562335 0.94885945 -1.0307591 
		-2.5009606 0.062553562 -0.88266331 -0.71614277 1.2305262 1.7499727 -0.93428218 2.3485959 
		1.7499727 -4.6623547e-016 2.7272186 1.7499727 -4.6623547e-016 1.0083843 1.7499727 
		-2.3311773e-016 0.88106877 0.93208581 -0.69998115 1.1231285 1.3475653 -0.95044345 
		2.504631 1.1545105 -2.3311773e-016 2.6431649 0.82299799 -0.95044345 2.4863276 0.43974164 
		-0.69998115 1.1231285 0.28457457 -1.1823281 1.3215864 0.66085845 -1.1823281 1.3215864 
		1.0222255 -1.2914079 2.0584221 1.15231 -1.2914079 2.0584221 0.52508891 -1.7792368 
		1.3096828 0.87127233 -2.0151975 1.7158254 1.0263486 -2.0151975 1.7158254 0.6520983 
		-2.3072929 0.79525954 0.83894193 -2.5422437 0.92962074 1.0143968 -2.562335 0.94885933 
		0.7086044 -2.5009606 0.062553436 0.85670054 0.71614271 1.2305262 0.010608966 0.93428212 
		2.3485956 0.010608966 0.69998133 1.1231289 -0.39179811 0.95044363 2.504631 -0.58485317 
		0.95044363 2.4863276 -1.2996221 0.69998133 1.1231289 -1.4547895 1.1823282 1.3215864 
		-1.0785053 1.1823282 1.3215864 -0.71713811 1.2914079 2.0584221 -0.58705384 1.2914079 
		2.0584221 -1.214275 1.7792368 1.309683 -0.86809158 2.0151975 1.7158256 -0.7130152 
		2.0151975 1.7158256 -1.0872656 2.3072932 0.79525971 -0.90042192 2.5422437 0.92962086 
		-0.72496706 2.5623355 0.94885945 -1.0307592 2.5009604 0.062553562 -0.88266331 0.71614271 
		1.2305262 1.7499727 0.93428224 2.3485959 1.7499727 0.69998133 1.1231285 1.3475653 
		0.95044363 2.504631 1.1545105 0.95044363 2.4863276 0.43974164 0.69998133 1.1231285 
		0.28457457 1.1820624 1.3211228 0.66151029 1.1817633 1.3214219 1.0228771 1.291418 
		2.0582638 1.1524426 1.291937 2.0577447 0.52522182 1.7790401 1.3086895 0.87241715 
		2.0147991 1.7149945 1.0273738 2.0150657 1.7147294 0.65312374 2.3081338 0.79472893 
		0.84070003 2.5426743 0.92974323 1.0162023 2.5629072 0.9488135 0.71040881 2.5041499 
		0.062556438 0.85917741 -1.0665039 1.8796345 2.6985593 -1.2866733 2.6005981 2.1356432 
		-4.6623547e-016 2.8079238 2.0128236 -6.9935307e-016 1.683188 2.9298935 -1.1886263 
		2.6979141 3.4290612 -1.4243753 3.1438019 2.6563163 -5.8279424e-016 3.3218937 2.3257096 
		-9.3247083e-016 2.4694257 3.827286 -1.1886263 3.4068789 3.6059761 -1.3894289 3.6725898 
		2.6877899 -5.8279424e-016 3.7009499 2.357183 -9.3247083e-016 3.1783917 4.0875826 
		-1.1253386 5.4570966 3.7486551 -1.3154498 5.5977197 2.9260931 -6.9935307e-016 5.51057 
		2.6299167;
	setAttr ".vt[166:241]" -1.0490299e-015 5.3540077 4.4587598 -1.0490299e-015 
		4.1602778 4.3365517 -1.2390796 4.8022299 3.9216805 -1.5987662 5.0367312 2.752502 
		-5.8279424e-016 4.581882 2.4018788 -1.5062218 4.0329018 2.5736887 -1.2390796 3.7523878 
		3.7550027 -1.6267457 4.2007117 3.5601351 -1.6267457 4.5494885 3.6155088 -1.7711724 
		4.8038673 2.8240087 -1.7711724 4.1984992 2.7278981 -2.417079 4.4017143 3.6054857 
		-2.7295024 4.6223955 3.1819885 -2.7295024 4.2611856 3.1246407 -3.1162493 4.2805691 
		4.1670351 -3.4273343 4.4734025 4.0459561 -3.4539361 4.1816278 3.9779129 -3.3726742 
		4.1696033 4.9766417 -1.2733194 6.3616538 3.3317211 -0.99216098 6.0574193 5.0967879 
		-6.9935307e-016 6.4202828 2.7871041 -1.1655885e-015 5.7884288 4.920166 -1.5212215 
		6.333405 4.2208514 -1.2193867 7.1355085 3.4239266 -1.3776211 7.0587149 4.7523031 
		-6.9935307e-016 7.1941381 2.7255905 -0.90777236 7.7957578 3.5383267 -1.0552412 7.6857128 
		4.4938998 -6.9935307e-016 7.8552942 3.0376117 -9.3247083e-016 8.1518803 3.6683028 
		-1.0490299e-015 8.0511055 4.3050966 -0.73154342 6.166091 5.5135117 -1.2821473e-015 
		5.7257032 5.6335378 -1.2932538 7.4439964 5.0424299 -1.1655885e-015 8.3250971 4.7806292 
		-0.60094446 6.3016925 4.8519878 -0.73812151 6.6173258 4.7937369 -0.7309128 7.3629146 
		4.690053 -1.0490299e-015 7.720108 4.6211729 -1.1655885e-015 6.6555858 4.7460456 1.0665038 
		1.8796345 2.6985593 1.2866733 2.6005981 2.1356432 1.1886263 2.6979141 3.4290612 1.4243753 
		3.1438019 2.6563163 1.1886263 3.4068789 3.6059761 1.389429 3.6725898 2.6877899 1.1253383 
		5.4570966 3.7486551 1.3154501 5.5977197 2.9260931 1.2390796 4.8022299 3.9216805 1.5987659 
		5.0367312 2.752502 1.5062217 4.0329018 2.5736887 1.2390796 3.7523878 3.7550027 1.6267457 
		4.2007117 3.5601351 1.6267457 4.5494885 3.6155088 1.7711724 4.8038673 2.8240087 1.7711724 
		4.1984992 2.7278981 2.4170787 4.4017143 3.6054857 2.7295024 4.6223955 3.1819885 2.7295024 
		4.2611856 3.1246407 3.1162493 4.2805691 4.1670351 3.4273343 4.4734025 4.0459561 3.4539361 
		4.1816278 3.9779129 3.3726745 4.1696033 4.9766417 1.273319 6.3616538 3.3317211 0.9921611 
		6.0574193 5.0967879 1.5212215 6.333405 4.2208514 1.2193869 7.1355085 3.4239266 1.3776211 
		7.0587149 4.7523031 0.90777236 7.7957578 3.5383267 1.0552412 7.6857128 4.4938998 
		0.73154354 6.166091 5.5135117 1.2932537 7.4439964 5.0424299 0.60094458 6.3996811 
		4.8519878 0.73812157 6.6173258 4.7937369 0.73091298 7.3629146 4.690053 -1.1655885e-015 
		5.8963137 4.7460456;
	setAttr -s 516 ".ed";
	setAttr ".ed[0:165]"  0 1 1 2 3 1 4 5 
		1 6 7 1 0 2 1 1 3 1 2 4 
		1 3 5 1 6 0 1 7 1 1 6 8 
		1 0 8 1 2 8 1 4 8 1 7 9 
		1 1 10 1 9 10 1 5 11 1 3 12 
		1 12 11 1 10 12 1 9 13 1 10 14 
		1 13 14 1 11 15 1 12 16 1 16 15 
		1 14 16 1 13 17 1 14 18 1 17 18 
		1 15 19 1 16 20 1 20 19 1 18 20 
		1 17 21 1 18 22 1 21 22 1 19 23 
		1 20 24 1 24 23 1 22 24 1 22 34 
		1 24 33 1 23 32 1 21 29 1 25 26 
		1 26 27 1 28 25 1 29 28 1 30 25 
		1 29 30 1 31 26 1 30 31 1 32 27 
		1 31 32 1 33 31 1 32 33 1 34 30 
		1 33 34 1 34 29 1 34 35 1 30 36 
		1 35 36 1 31 37 1 36 37 1 33 38 
		1 38 37 1 38 35 1 35 39 1 36 39 
		1 37 40 1 39 40 1 38 41 1 41 40 
		1 41 39 1 39 42 1 40 43 1 42 43 
		1 41 44 1 44 43 1 44 42 1 42 45 
		1 43 45 1 44 45 1 46 47 1 48 49 
		1 46 48 1 47 49 1 48 4 1 49 5 
		1 6 46 1 7 47 1 46 8 1 48 8 
		1 47 50 1 9 50 1 49 51 1 51 11 
		1 50 51 1 50 52 1 13 52 1 51 53 
		1 53 15 1 52 53 1 52 54 1 17 54 
		1 53 55 1 55 19 1 54 55 1 54 56 
		1 21 56 1 55 57 1 57 23 1 56 57 
		1 56 63 1 57 62 1 58 59 1 59 27 
		1 28 58 1 60 58 1 29 60 1 61 59 
		1 60 61 1 61 32 1 62 61 1 32 62 
		1 63 60 1 62 63 1 63 29 1 63 64 
		1 60 65 1 64 65 1 61 66 1 65 66 
		1 62 67 1 67 66 1 67 64 1 64 68 
		1 65 68 1 66 69 1 68 69 1 67 70 
		1 70 69 1 70 68 1 68 71 1 69 72 
		1 71 72 1 70 73 1 73 72 1 73 71 
		1 71 74 1 72 74 1 73 74 1 25 84 
		1 26 83 1 27 82 1 28 79 1 75 76 
		1 76 77 1 78 75 1 79 78 1 80 75 
		1 79 80 1 81 76 1 80 81 1;
	setAttr ".ed[166:331]" 82 77 1 81 82 1 83 81 
		1 82 83 1 84 80 1 83 84 1 84 79 
		1 84 85 1 80 86 1 85 86 1 81 87 
		1 86 87 1 83 88 1 88 87 1 88 85 
		1 85 89 1 86 89 1 87 90 1 89 90 
		1 88 91 1 91 90 1 91 89 1 89 92 
		1 90 93 1 92 93 1 91 94 1 94 93 
		1 94 92 1 92 95 1 93 95 1 94 95 
		1 75 105 1 76 104 1 77 103 1 78 100 
		1 96 97 1 97 98 1 99 96 1 100 99 
		1 101 96 1 100 101 1 102 97 1 101 102 
		1 103 98 1 102 103 1 104 102 1 103 104 
		1 105 101 1 104 105 1 105 100 1 105 106 
		1 101 107 1 106 107 1 102 108 1 107 108 
		1 104 109 1 109 108 1 109 106 1 106 110 
		1 107 110 1 108 111 1 110 111 1 109 112 
		1 112 111 1 112 110 1 110 113 1 111 114 
		1 113 114 1 112 115 1 115 114 1 115 113 
		1 113 116 1 114 116 1 115 116 1 58 122 
		1 59 121 1 117 118 1 118 77 1 78 117 
		1 119 117 1 79 119 1 120 118 1 119 120 
		1 120 82 1 121 120 1 82 121 1 122 119 
		1 121 122 1 122 79 1 122 123 1 119 124 
		1 123 124 1 120 125 1 124 125 1 121 126 
		1 126 125 1 126 123 1 123 127 1 124 127 
		1 125 128 1 127 128 1 126 129 1 129 128 
		1 129 127 1 127 130 1 128 131 1 130 131 
		1 129 132 1 132 131 1 132 130 1 130 133 
		1 131 133 1 132 133 1 117 139 1 118 138 
		1 134 135 1 135 98 1 99 134 1 136 134 
		1 100 136 1 137 135 1 136 137 1 137 103 
		1 138 137 1 103 138 1 139 136 1 138 139 
		1 139 100 1 139 140 1 136 141 1 140 141 
		1 137 142 1 141 142 1 138 143 1 143 142 
		1 143 140 1 140 144 1 141 144 1 142 145 
		1 144 145 1 143 146 1 146 145 1 146 144 
		1 144 147 1 145 148 1 147 148 1 146 149 
		1 149 148 1 149 147 1 147 150 1 148 150 
		1 149 150 1 96 151 1 97 152 1 98 153 
		1 99 154 1 151 152 1 152 153 1 154 151 
		1 151 155 1 152 156 1 155 156 1 153 157 
		1 156 157 1 154 158 1 158 155 1;
	setAttr ".ed[332:497]" 155 159 1 156 160 1 159 160 
		1 157 161 1 160 161 1 158 162 1 162 159 
		1 159 172 1 160 171 1 161 170 1 162 167 
		1 163 164 1 164 165 1 166 163 1 167 166 
		1 168 163 1 167 168 1 169 164 1 168 169 
		1 170 165 1 169 170 1 171 169 1 170 171 
		1 172 168 1 171 172 1 172 167 1 172 173 
		1 168 174 1 173 174 1 169 175 1 174 175 
		1 171 176 1 176 175 1 176 173 1 173 177 
		1 174 177 1 175 178 1 177 178 1 176 179 
		1 179 178 1 179 177 1 177 180 1 178 181 
		1 180 181 1 179 182 1 182 181 1 182 180 
		1 180 183 1 181 183 1 182 183 1 184 188 
		1 164 184 1 163 185 1 184 186 1 185 187 
		1 186 165 1 187 166 1 188 185 1 163 188 
		1 184 189 1 188 190 1 189 190 1 186 191 
		1 189 191 1 185 190 1 189 192 1 190 193 
		1 192 193 1 191 194 1 192 194 1 192 195 
		1 193 196 1 195 196 1 194 195 1 185 197 
		1 187 198 1 197 198 1 190 199 1 197 199 
		1 193 200 1 199 200 1 197 201 1 199 202 
		1 201 202 1 199 203 1 202 203 1 200 204 
		1 203 204 1 201 205 1 202 205 1 203 205 
		1 204 205 1 196 200 1 134 206 1 135 207 
		1 206 207 1 207 153 1 154 206 1 206 208 
		1 207 209 1 208 209 1 209 157 1 158 208 
		1 208 210 1 209 211 1 210 211 1 211 161 
		1 162 210 1 210 217 1 211 216 1 212 213 
		1 213 165 1 166 212 1 214 212 1 167 214 
		1 215 213 1 214 215 1 215 170 1 216 215 
		1 170 216 1 217 214 1 216 217 1 217 167 
		1 217 218 1 214 219 1 218 219 1 215 220 
		1 219 220 1 216 221 1 221 220 1 221 218 
		1 218 222 1 219 222 1 220 223 1 222 223 
		1 221 224 1 224 223 1 224 222 1 222 225 
		1 223 226 1 225 226 1 224 227 1 227 226 
		1 227 225 1 225 228 1 226 228 1 227 228 
		1 229 231 1 213 229 1 212 230 1 229 186 
		1 230 187 1 231 230 1 212 231 1 229 232 
		1 231 233 1 232 233 1 232 191 1 230 233 
		1 232 234 1 233 235 1 234 235 1 234 194 
		1 234 195 1 235 196 1 230 236 1;
	setAttr ".ed[498:515]" 236 198 1 233 237 1 236 237 
		1 235 200 1 237 200 1 236 238 1 237 239 
		1 238 239 1 237 240 1 239 240 1 240 204 
		1 238 205 1 239 205 1 240 205 1 205 241 
		1 201 241 1 238 241 1 241 198 1;
	setAttr -s 276 ".fc[0:275]" -type "polyFaces" 
		f 4 0 5 -2 -5 
		mu 0 4 0 1 2 3 
		f 4 1 7 -3 -7 
		mu 0 4 3 2 4 5 
		f 4 3 9 -1 -9 
		mu 0 4 6 7 1 0 
		f 3 8 11 -11 
		mu 0 3 6 0 8 
		f 3 4 12 -12 
		mu 0 3 0 3 8 
		f 3 6 13 -13 
		mu 0 3 3 5 8 
		f 4 -10 14 16 -16 
		mu 0 4 1 7 9 10 
		f 4 -8 18 19 -18 
		mu 0 4 4 2 11 12 
		f 4 -6 15 20 -19 
		mu 0 4 2 1 10 11 
		f 4 -17 21 23 -23 
		mu 0 4 10 9 13 14 
		f 4 -20 25 26 -25 
		mu 0 4 12 11 15 16 
		f 4 -21 22 27 -26 
		mu 0 4 11 10 14 15 
		f 4 -24 28 30 -30 
		mu 0 4 14 13 17 18 
		f 4 -27 32 33 -32 
		mu 0 4 16 15 19 20 
		f 4 -28 29 34 -33 
		mu 0 4 15 14 18 19 
		f 4 -31 35 37 -37 
		mu 0 4 18 17 21 22 
		f 4 -34 39 40 -39 
		mu 0 4 20 19 23 24 
		f 4 -35 36 41 -40 
		mu 0 4 19 18 22 23 
		f 3 56 55 57 
		mu 0 3 25 26 27 
		f 3 60 51 -59 
		mu 0 3 28 29 30 
		f 4 49 48 -51 -52 
		mu 0 4 29 31 32 30 
		f 4 -54 50 46 -53 
		mu 0 4 26 30 32 33 
		f 4 -56 52 47 -55 
		mu 0 4 27 26 33 34 
		f 4 43 -58 -45 -41 
		mu 0 4 35 25 27 36 
		f 4 42 -60 -44 -42 
		mu 0 4 37 28 25 35 
		f 4 45 -61 -43 -38 
		mu 0 4 38 29 28 37 
		f 4 58 62 -64 -62 
		mu 0 4 28 30 39 40 
		f 4 53 64 -66 -63 
		mu 0 4 30 26 41 39 
		f 4 -57 66 67 -65 
		mu 0 4 26 25 42 41 
		f 4 59 61 -69 -67 
		mu 0 4 25 28 40 42 
		f 3 63 70 -70 
		mu 0 3 43 44 45 
		f 4 65 71 -73 -71 
		mu 0 4 44 46 47 45 
		f 4 -68 73 74 -72 
		mu 0 4 46 48 49 47 
		f 4 68 69 -76 -74 
		mu 0 4 50 43 45 51 
		f 4 72 77 -79 -77 
		mu 0 4 45 47 52 53 
		f 4 -75 79 80 -78 
		mu 0 4 47 49 54 52 
		f 4 75 76 -82 -80 
		mu 0 4 51 45 53 55 
		f 3 78 83 -83 
		mu 0 3 53 52 56 
		f 3 -81 84 -84 
		mu 0 3 52 54 56 
		f 3 81 82 -85 
		mu 0 3 55 53 56 
		f 4 87 86 -89 -86 
		mu 0 4 57 60 59 58 
		f 4 89 2 -91 -87 
		mu 0 4 60 62 61 59 
		f 4 91 85 -93 -4 
		mu 0 4 63 57 58 64 
		f 3 10 -94 -92 
		mu 0 3 63 65 57 
		f 3 93 -95 -88 
		mu 0 3 57 65 60 
		f 3 94 -14 -90 
		mu 0 3 60 65 62 
		f 4 95 -97 -15 92 
		mu 0 4 58 67 66 64 
		f 4 17 -99 -98 90 
		mu 0 4 61 69 68 59 
		f 4 97 -100 -96 88 
		mu 0 4 59 68 67 58 
		f 4 100 -102 -22 96 
		mu 0 4 67 71 70 66 
		f 4 24 -104 -103 98 
		mu 0 4 69 73 72 68 
		f 4 102 -105 -101 99 
		mu 0 4 68 72 71 67 
		f 4 105 -107 -29 101 
		mu 0 4 71 75 74 70 
		f 4 31 -109 -108 103 
		mu 0 4 73 77 76 72 
		f 4 107 -110 -106 104 
		mu 0 4 72 76 75 71 
		f 4 110 -112 -36 106 
		mu 0 4 75 79 78 74 
		f 4 38 -114 -113 108 
		mu 0 4 77 81 80 76 
		f 4 112 -115 -111 109 
		mu 0 4 76 80 79 75 
		f 3 -127 -125 -126 
		mu 0 3 82 84 83 
		f 3 127 -122 -130 
		mu 0 3 85 87 86 
		f 4 121 120 -120 -50 
		mu 0 4 86 87 89 88 
		f 4 122 -118 -121 123 
		mu 0 4 83 90 89 87 
		f 4 54 -119 -123 124 
		mu 0 4 84 91 90 83 
		f 4 113 44 126 -117 
		mu 0 4 92 93 84 82 
		f 4 114 116 128 -116 
		mu 0 4 94 92 82 85 
		f 4 111 115 129 -46 
		mu 0 4 95 94 85 86 
		f 4 130 132 -132 -128 
		mu 0 4 85 97 96 87 
		f 4 131 134 -134 -124 
		mu 0 4 87 96 98 83 
		f 4 133 -137 -136 125 
		mu 0 4 83 98 99 82 
		f 4 135 137 -131 -129 
		mu 0 4 82 99 97 85 
		f 3 138 -140 -133 
		mu 0 3 100 102 101 
		f 4 139 141 -141 -135 
		mu 0 4 101 102 104 103 
		f 4 140 -144 -143 136 
		mu 0 4 103 104 106 105 
		f 4 142 144 -139 -138 
		mu 0 4 107 108 102 100 
		f 4 145 147 -147 -142 
		mu 0 4 102 110 109 104 
		f 4 146 -150 -149 143 
		mu 0 4 104 109 111 106 
		f 4 148 150 -146 -145 
		mu 0 4 108 112 110 102 
		f 3 151 -153 -148 
		mu 0 3 110 113 109 
		f 3 152 -154 149 
		mu 0 3 109 113 111 
		f 3 153 -152 -151 
		mu 0 3 112 113 110 
		f 3 168 167 169 
		mu 0 3 114 115 116 
		f 3 172 163 -171 
		mu 0 3 117 118 119 
		f 4 161 160 -163 -164 
		mu 0 4 118 120 121 119 
		f 4 -166 162 158 -165 
		mu 0 4 115 119 121 122 
		f 4 -168 164 159 -167 
		mu 0 4 116 115 122 123 
		f 4 155 -170 -157 -48 
		mu 0 4 124 114 116 125 
		f 4 154 -172 -156 -47 
		mu 0 4 126 117 114 124 
		f 4 157 -173 -155 -49 
		mu 0 4 127 118 117 126 
		f 4 170 174 -176 -174 
		mu 0 4 117 119 128 129 
		f 4 165 176 -178 -175 
		mu 0 4 119 115 130 128 
		f 4 -169 178 179 -177 
		mu 0 4 115 114 131 130 
		f 4 171 173 -181 -179 
		mu 0 4 114 117 129 131 
		f 3 175 182 -182 
		mu 0 3 132 133 134 
		f 4 177 183 -185 -183 
		mu 0 4 133 135 136 134 
		f 4 -180 185 186 -184 
		mu 0 4 135 137 138 136 
		f 4 180 181 -188 -186 
		mu 0 4 139 132 134 140 
		f 4 184 189 -191 -189 
		mu 0 4 134 136 141 142 
		f 4 -187 191 192 -190 
		mu 0 4 136 138 143 141 
		f 4 187 188 -194 -192 
		mu 0 4 140 134 142 144 
		f 3 190 195 -195 
		mu 0 3 142 141 145 
		f 3 -193 196 -196 
		mu 0 3 141 143 145 
		f 3 193 194 -197 
		mu 0 3 144 142 145 
		f 3 211 210 212 
		mu 0 3 146 147 148 
		f 3 215 206 -214 
		mu 0 3 149 150 151 
		f 4 204 203 -206 -207 
		mu 0 4 150 152 153 151 
		f 4 -209 205 201 -208 
		mu 0 4 147 151 153 154 
		f 4 -211 207 202 -210 
		mu 0 4 148 147 154 155 
		f 4 198 -213 -200 -160 
		mu 0 4 156 146 148 157 
		f 4 197 -215 -199 -159 
		mu 0 4 158 149 146 156 
		f 4 200 -216 -198 -161 
		mu 0 4 159 150 149 158 
		f 4 213 217 -219 -217 
		mu 0 4 149 151 160 161 
		f 4 208 219 -221 -218 
		mu 0 4 151 147 162 160 
		f 4 -212 221 222 -220 
		mu 0 4 147 146 163 162 
		f 4 214 216 -224 -222 
		mu 0 4 146 149 161 163 
		f 3 218 225 -225 
		mu 0 3 164 165 166 
		f 4 220 226 -228 -226 
		mu 0 4 165 167 168 166 
		f 4 -223 228 229 -227 
		mu 0 4 167 169 170 168 
		f 4 223 224 -231 -229 
		mu 0 4 171 164 166 172 
		f 4 227 232 -234 -232 
		mu 0 4 166 168 173 174 
		f 4 -230 234 235 -233 
		mu 0 4 168 170 175 173 
		f 4 230 231 -237 -235 
		mu 0 4 172 166 174 176 
		f 3 233 238 -238 
		mu 0 3 174 173 177 
		f 3 -236 239 -239 
		mu 0 3 173 175 177 
		f 3 236 237 -240 
		mu 0 3 176 174 177 
		f 3 -252 -250 -251 
		mu 0 3 178 180 179 
		f 3 252 -247 -255 
		mu 0 3 181 183 182 
		f 4 246 245 -245 -162 
		mu 0 4 182 183 185 184 
		f 4 247 -243 -246 248 
		mu 0 4 179 186 185 183 
		f 4 166 -244 -248 249 
		mu 0 4 180 187 186 179 
		f 4 118 156 251 -242 
		mu 0 4 188 189 180 178 
		f 4 117 241 253 -241 
		mu 0 4 190 188 178 181 
		f 4 119 240 254 -158 
		mu 0 4 191 190 181 182 
		f 4 255 257 -257 -253 
		mu 0 4 181 193 192 183 
		f 4 256 259 -259 -249 
		mu 0 4 183 192 194 179 
		f 4 258 -262 -261 250 
		mu 0 4 179 194 195 178 
		f 4 260 262 -256 -254 
		mu 0 4 178 195 193 181 
		f 3 263 -265 -258 
		mu 0 3 196 198 197 
		f 4 264 266 -266 -260 
		mu 0 4 197 198 200 199 
		f 4 265 -269 -268 261 
		mu 0 4 199 200 202 201 
		f 4 267 269 -264 -263 
		mu 0 4 203 204 198 196 
		f 4 270 272 -272 -267 
		mu 0 4 198 206 205 200 
		f 4 271 -275 -274 268 
		mu 0 4 200 205 207 202 
		f 4 273 275 -271 -270 
		mu 0 4 204 208 206 198 
		f 3 276 -278 -273 
		mu 0 3 206 209 205 
		f 3 277 -279 274 
		mu 0 3 205 209 207 
		f 3 278 -277 -276 
		mu 0 3 208 209 206 
		f 3 -291 -289 -290 
		mu 0 3 210 212 211 
		f 3 291 -286 -294 
		mu 0 3 213 215 214 
		f 4 285 284 -284 -205 
		mu 0 4 214 215 217 216 
		f 4 286 -282 -285 287 
		mu 0 4 211 218 217 215 
		f 4 209 -283 -287 288 
		mu 0 4 212 219 218 211 
		f 4 243 199 290 -281 
		mu 0 4 220 221 212 210 
		f 4 242 280 292 -280 
		mu 0 4 222 220 210 213 
		f 4 244 279 293 -201 
		mu 0 4 223 222 213 214 
		f 4 294 296 -296 -292 
		mu 0 4 213 225 224 215 
		f 4 295 298 -298 -288 
		mu 0 4 215 224 226 211 
		f 4 297 -301 -300 289 
		mu 0 4 211 226 227 210 
		f 4 299 301 -295 -293 
		mu 0 4 210 227 225 213 
		f 3 302 -304 -297 
		mu 0 3 228 230 229 
		f 4 303 305 -305 -299 
		mu 0 4 229 230 232 231 
		f 4 304 -308 -307 300 
		mu 0 4 231 232 234 233 
		f 4 306 308 -303 -302 
		mu 0 4 235 236 230 228 
		f 4 309 311 -311 -306 
		mu 0 4 230 238 237 232 
		f 4 310 -314 -313 307 
		mu 0 4 232 237 239 234 
		f 4 312 314 -310 -309 
		mu 0 4 236 240 238 230 
		f 3 315 -317 -312 
		mu 0 3 238 241 237 
		f 3 316 -318 313 
		mu 0 3 237 241 239 
		f 3 317 -316 -315 
		mu 0 3 240 241 238 
		f 4 318 322 -320 -202 
		mu 0 4 242 243 244 245 
		f 4 319 323 -321 -203 
		mu 0 4 245 244 246 247 
		f 4 321 324 -319 -204 
		mu 0 4 248 249 243 242 
		f 4 -323 325 327 -327 
		mu 0 4 244 243 250 251 
		f 4 -324 326 329 -329 
		mu 0 4 246 244 251 252 
		f 4 -325 330 331 -326 
		mu 0 4 243 249 253 250 
		f 4 -328 332 334 -334 
		mu 0 4 251 250 254 255 
		f 4 -330 333 336 -336 
		mu 0 4 252 251 255 256 
		f 4 -332 337 338 -333 
		mu 0 4 250 253 257 254 
		f 3 353 352 354 
		mu 0 3 258 259 260 
		f 3 357 348 -356 
		mu 0 3 261 262 263 
		f 4 346 345 -348 -349 
		mu 0 4 262 264 265 263 
		f 4 -351 347 343 -350 
		mu 0 4 259 263 265 266 
		f 4 -353 349 344 -352 
		mu 0 4 260 259 266 267 
		f 4 340 -355 -342 -337 
		mu 0 4 268 258 260 269 
		f 4 339 -357 -341 -335 
		mu 0 4 270 261 258 268 
		f 4 342 -358 -340 -339 
		mu 0 4 271 262 261 270 
		f 4 355 359 -361 -359 
		mu 0 4 261 263 272 273 
		f 4 350 361 -363 -360 
		mu 0 4 263 259 274 272 
		f 4 -354 363 364 -362 
		mu 0 4 259 258 275 274 
		f 4 356 358 -366 -364 
		mu 0 4 258 261 273 275 
		f 3 360 367 -367 
		mu 0 3 276 277 278 
		f 4 362 368 -370 -368 
		mu 0 4 277 279 280 278 
		f 4 -365 370 371 -369 
		mu 0 4 279 281 282 280 
		f 4 365 366 -373 -371 
		mu 0 4 283 276 278 284 
		f 4 369 374 -376 -374 
		mu 0 4 278 280 285 286 
		f 4 -372 376 377 -375 
		mu 0 4 280 282 287 285 
		f 4 372 373 -379 -377 
		mu 0 4 284 278 286 288 
		f 3 375 380 -380 
		mu 0 3 286 285 289 
		f 3 -378 381 -381 
		mu 0 3 285 287 289 
		f 3 378 379 -382 
		mu 0 3 288 286 289 
		f 4 -344 390 -383 -384 
		mu 0 4 290 291 292 293 
		f 4 -346 -389 -387 -385 
		mu 0 4 291 294 295 296 
		f 4 -345 383 385 387 
		mu 0 4 297 290 293 298 
		f 3 -391 384 -390 
		mu 0 3 292 291 296 
		f 4 382 392 -394 -392 
		mu 0 4 293 292 299 300 
		f 4 -386 391 395 -395 
		mu 0 4 298 293 300 301 
		f 3 389 396 -393 
		mu 0 3 292 296 299 
		f 4 393 398 -400 -398 
		mu 0 4 300 299 302 303 
		f 4 -396 397 401 -401 
		mu 0 4 301 300 303 304 
		f 4 399 403 -405 -403 
		mu 0 4 303 302 305 306 
		f 3 -402 402 -406 
		mu 0 3 304 303 306 
		f 4 386 407 -409 -407 
		mu 0 4 307 308 309 310 
		f 4 -397 406 410 -410 
		mu 0 4 311 307 310 312 
		f 4 -399 409 412 -412 
		mu 0 4 313 314 312 315 
		f 4 -411 413 415 -415 
		mu 0 4 312 310 316 317 
		f 3 414 417 -417 
		mu 0 3 312 317 318 
		f 4 -413 416 419 -419 
		mu 0 4 315 312 318 319 
		f 3 -416 420 -422 
		mu 0 3 317 316 320 
		f 3 -418 421 -423 
		mu 0 3 318 317 320 
		f 3 -420 422 -424 
		mu 0 3 319 318 320 
		f 3 -404 411 -425 
		mu 0 3 321 313 315 
		f 4 281 426 -428 -426 
		mu 0 4 322 325 324 323 
		f 4 282 320 -429 -427 
		mu 0 4 325 327 326 324 
		f 4 283 425 -430 -322 
		mu 0 4 328 322 323 329 
		f 4 431 -433 -431 427 
		mu 0 4 324 331 330 323 
		f 4 328 -434 -432 428 
		mu 0 4 326 332 331 324 
		f 4 430 -435 -331 429 
		mu 0 4 323 330 333 329 
		f 4 436 -438 -436 432 
		mu 0 4 331 335 334 330 
		f 4 335 -439 -437 433 
		mu 0 4 332 336 335 331 
		f 4 435 -440 -338 434 
		mu 0 4 330 334 337 333 
		f 3 -452 -450 -451 
		mu 0 3 338 340 339 
		f 3 452 -447 -455 
		mu 0 3 341 343 342 
		f 4 446 445 -445 -347 
		mu 0 4 342 343 345 344 
		f 4 447 -443 -446 448 
		mu 0 4 339 346 345 343 
		f 4 351 -444 -448 449 
		mu 0 4 340 347 346 339 
		f 4 438 341 451 -442 
		mu 0 4 348 349 340 338 
		f 4 437 441 453 -441 
		mu 0 4 350 348 338 341 
		f 4 439 440 454 -343 
		mu 0 4 351 350 341 342 
		f 4 455 457 -457 -453 
		mu 0 4 341 353 352 343 
		f 4 456 459 -459 -449 
		mu 0 4 343 352 354 339 
		f 4 458 -462 -461 450 
		mu 0 4 339 354 355 338 
		f 4 460 462 -456 -454 
		mu 0 4 338 355 353 341 
		f 3 463 -465 -458 
		mu 0 3 356 358 357 
		f 4 464 466 -466 -460 
		mu 0 4 357 358 360 359 
		f 4 465 -469 -468 461 
		mu 0 4 359 360 362 361 
		f 4 467 469 -464 -463 
		mu 0 4 363 364 358 356 
		f 4 470 472 -472 -467 
		mu 0 4 358 366 365 360 
		f 4 471 -475 -474 468 
		mu 0 4 360 365 367 362 
		f 4 473 475 -471 -470 
		mu 0 4 364 368 366 358 
		f 3 476 -478 -473 
		mu 0 3 366 369 365 
		f 3 477 -479 474 
		mu 0 3 365 369 367 
		f 3 478 -477 -476 
		mu 0 3 368 369 366 
		f 4 480 479 -486 442 
		mu 0 4 370 373 372 371 
		f 4 481 483 388 444 
		mu 0 4 371 376 375 374 
		f 4 -388 -483 -481 443 
		mu 0 4 377 378 373 370 
		f 3 484 -482 485 
		mu 0 3 372 376 371 
		f 4 486 488 -488 -480 
		mu 0 4 373 380 379 372 
		f 4 394 -490 -487 482 
		mu 0 4 378 381 380 373 
		f 3 487 -491 -485 
		mu 0 3 372 379 376 
		f 4 491 493 -493 -489 
		mu 0 4 380 383 382 379 
		f 4 400 -495 -492 489 
		mu 0 4 381 384 383 380 
		f 4 495 404 -497 -494 
		mu 0 4 383 386 385 382 
		f 3 405 -496 494 
		mu 0 3 384 386 383 
		f 4 497 498 -408 -484 
		mu 0 4 387 390 309 388 
		f 4 499 -501 -498 490 
		mu 0 4 391 392 390 387 
		f 4 501 -503 -500 492 
		mu 0 4 393 395 392 394 
		f 4 504 -506 -504 500 
		mu 0 4 392 397 396 390 
		f 3 506 -508 -505 
		mu 0 3 392 398 397 
		f 4 418 -509 -507 502 
		mu 0 4 395 399 398 392 
		f 3 510 -510 505 
		mu 0 3 397 320 396 
		f 3 511 -511 507 
		mu 0 3 398 320 397 
		f 3 423 -512 508 
		mu 0 3 399 320 398 
		f 3 424 -502 496 
		mu 0 3 389 395 393 
		f 3 -421 513 -513 
		mu 0 3 320 316 400 
		f 3 509 512 -515 
		mu 0 3 396 320 400 
		f 4 -514 -414 408 -516 
		mu 0 4 400 316 310 309 
		f 4 514 515 -499 503 
		mu 0 4 396 400 309 390 ;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".ns" 0.10000000000000001;
createNode joint -n "slug_skeleton";
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".radi" 0.5;
createNode joint -n "slug_Joint_Root" -p "slug_skeleton";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 25.183141052468528 -37.075600240413756 1;
createNode joint -n "slug_Joint_Waist" -p "slug_Joint_Root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -0.0040022651806592962 0.79037393015867996 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 25.061152009762033 -12.985002849177192 1;
createNode joint -n "slug_Joint_Chest" -p "slug_Joint_Waist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 -0.0040022651806592962 0.8296123522232951 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 24.939162967055537 12.301581646588843 1;
createNode joint -n "slug_Joint_Chest2" -p "slug_Joint_Chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 0.04150494305942215 0.39655618070515036 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 26.204233631506725 24.388614034481826 1;
createNode joint -n "slug_Joint_Chest3" -p "slug_Joint_Chest2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 0.49471200672245075 0.59225923092327759 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 41.283055596407024 42.440675393023326 1;
createNode joint -n "slug_Joint_Mid_Chest" -p "slug_Joint_Chest3";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0 0.66466465559608801 0.072101123764572408 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 61.542034298975786 44.638317645367493 1;
createNode joint -n "slug_Joint_Neck1" -p "slug_Joint_Mid_Chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0 0.51430372931955548 0.10114345180878735 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 77.218011968635835 47.721170056499332 1;
createNode joint -n "slug_Joint_Head" -p "slug_Joint_Neck1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0 0.38618869036175674 0.18205821325581686 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 88.989043250862181 53.270304396536631 1;
createNode joint -n "slug_Joint_Head_End" -p "slug_Joint_Head";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0 0.82110553313954315 -0.023139245383292355 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 114.01633990095546 52.56502019725388 1;
createNode orientConstraint -n "slug_Joint_Head_orientConstraint1" -p "slug_Joint_Head";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Head_FKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -10.026042570665412 11.185514292200999 1.7956514930449843 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Neck1_orientConstraint1" -p "slug_Joint_Neck1";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Neck1_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 39.762045149939162 4.4980196060685129 -6.8851065157161333 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_L_Shoulder" -p "slug_Joint_Mid_Chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.59764459414578797 0.019261334035897238 0.0020716320137542988 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.216207229563619 62.129119760389933 44.701460989146725 1;
createNode joint -n "slug_Joint_L_Arm" -p "slug_Joint_L_Shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" 0.18678507263273222 -0.0013139613630145249 0.00828652805502046 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -18.000000000000007 0 ;
	setAttr ".bps" -type "matrix" 0.95105651629515353 0 0.30901699437494756 0 0 1 0 0
		 -0.30901699437494756 0 0.95105651629515353 0 23.909416243409296 62.089070218045251 44.954034364263748 1;
createNode orientConstraint -n "slug_Joint_L_Arm_orientConstraint1" -p "slug_Joint_L_Arm";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Arm_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_L_Arm_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 35.024628837664864 -12.446445667745648 -35.249282157607645 ;
	setAttr ".rsrr" -type "double3" -2.8025888469328941 0.029639009948653549 -0.0007250318202974181 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "slug_Joint_L_Elbow" -p "slug_Joint_L_Arm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" 0.40923981431746864 9.3247078183740181e-016 -0.045744999999998988 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -18.000000000000007 0 ;
	setAttr ".bps" -type "matrix" 0.80901699437494723 0 0.58778525229247336 0 0 1 0 0
		 -0.58778525229247336 0 0.80901699437494723 0 36.203407643441196 62.089070218045279 47.482532545083785 1;
createNode orientConstraint -n "slug_Joint_L_Elbow_orientConstraint1" -p "slug_Joint_L_Elbow";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Elbow_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_L_Elbow_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 -25.109773642267264 0 ;
	setAttr ".rsrr" -type "double3" -1.9884414105167858e-016 -6.2138794078649556e-018 
		-5.3400526161339468e-019 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "slug_Joint_L_Forearm" -p "slug_Joint_L_Elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0.21908229073371349 -0.0044826853527594329 0.022872500000000545 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ra" -type "double3" 89.878925890441138 -1.159538841372808 5.9613933231384673 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.87829304726371 -5.9589298695510911 -1.1721765231057812 ;
	setAttr ".pa" -type "double3" 1.3793457181406746e-033 0 0 ;
	setAttr ".bps" -type "matrix" 0.80901699437494723 1.3877787807814455e-017 0.58778525229247336 0
		 -7.6229727024876221e-017 1 8.1310915245781477e-017 0 -0.58778525229247336 -1.1058862159352145e-016 0.80901699437494723 0
		 41.195945634584227 61.952437968493172 51.971553205903966 1;
createNode joint -n "slug_Joint_L_Wrist" -p "slug_Joint_L_Forearm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.2190822907337146 -0.034195324904478887 0.022872500000000646 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 -48.716213845316439 0 ;
	setAttr ".bps" -type "matrix" 0.092088808612820483 -7.3945503983598521e-017 0.99575079780448639 0
		 -7.6229727024876221e-017 1 8.1310915245781477e-017 0 -0.99575079780448639 -8.3393636813640756e-017 0.092088808612820483 0
		 46.188483625727287 60.910164465404655 56.460573866724168 1;
createNode joint -n "slug_Joint_L_Index1" -p "slug_Joint_L_Wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.4449871858991542 -0.079598344096209445 0.0043307370439808618 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.092088808612820483 -7.3945503983598521e-017 0.99575079780448639 0
		 -7.6229727024876221e-017 1 8.1310915245781477e-017 0 -0.99575079780448639 -8.3393636813640756e-017 0.092088808612820483 0
		 47.306063456018052 58.484006937352191 69.978306276061318 1;
createNode orientConstraint -n "slug_Joint_L_Wrist_orientConstraint1" -p "slug_Joint_L_Wrist";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Wrist_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_L_Wrist_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.65033608675003052 -31.927136763985473 0.68824905391136948 ;
	setAttr ".rsrr" -type "double3" 2.8025888469328915 -0.029639009948653233 -0.00072503182026319147 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_L_Forearm_orientConstraint1" -p "slug_Joint_L_Forearm";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Forearm_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_L_Forearm_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0.65033608675003718 2.2562944418996179e-018 -3.9756293264487826e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_L_Shoulder_orientConstraint1" -p "slug_Joint_L_Shoulder";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Shoulder_FKW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Shoulder" -p "slug_Joint_Mid_Chest";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -0.59764459414578797 0.019261334035897238 0.0020716320137540659 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -18.216207229563619 62.129119760389933 44.701460989146717 1;
createNode joint -n "slug_Joint_R_Arm" -p "slug_Joint_R_Shoulder";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -0.18678507263273222 -0.0013139613630145249 0.0082865280550209249 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 18.000000000000007 0 ;
	setAttr ".bps" -type "matrix" 0.95105651629515353 0 -0.30901699437494756 0 0 1 0 0
		 0.30901699437494756 0 0.95105651629515353 0 -23.909416243409296 62.089070218045251 44.954034364263755 1;
createNode orientConstraint -n "slug_Joint_R_Arm_orientConstraint1" -p "slug_Joint_R_Arm";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Arm_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_R_Arm_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 33.69304572190228 24.225190198053596 46.081120274736442 ;
	setAttr ".rsrr" -type "double3" -2.8025886412642746 -0.029639007775323484 0.00072503171390431338 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "slug_Joint_R_Elbow" -p "slug_Joint_R_Arm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".t" -type "double3" -0.40923981431746864 9.3247078183740181e-016 -0.045744999999998988 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".pa" -type "double3" 0 18.000000000000007 0 ;
	setAttr ".bps" -type "matrix" 0.80901699437494723 0 -0.58778525229247336 0 0 1 0 0
		 0.58778525229247336 0 0.80901699437494723 0 -36.203407643441196 62.089070218045279 47.482532545083799 1;
createNode orientConstraint -n "slug_Joint_R_Elbow_orientConstraint1" -p "slug_Joint_R_Elbow";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Elbow_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_R_Elbow_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 0 14.557603042760812 0 ;
	setAttr ".rsrr" -type "double3" -1.3919089873006323e-015 6.2138794075921084e-018 
		5.8255119446176011e-019 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "slug_Joint_R_Forearm" -p "slug_Joint_R_Elbow";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" -0.21908229073371371 -0.0044826853527589663 0.022872500000000778 ;
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr ".ra" -type "double3" 90.121074109558904 -1.1595388413727974 -5.9613933231384362 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" 0.12232771161033912 8.2906083215451254 1.1771803778761103 ;
	setAttr ".bps" -type "matrix" 0.72732463784757562 -0.083583354181716779 -0.68118477235154529 0
		 0.68360203602502523 0.00041397497945105943 0.729854838284406 0 -0.060721721997428584 -0.99650070322526607 0.057438845298429554 0
		 -41.195945634584227 61.952437968493186 51.971553205903987 1;
createNode joint -n "slug_Joint_R_Wrist" -p "slug_Joint_R_Forearm";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.21670207734321431 -0.0044944741688347561 0.0512499722931367 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".jo" -type "double3" -89.380340740813395 4.7545076966989157 7.1505009850247383 ;
	setAttr ".pa" -type "double3" -1.0736232585577878e-014 52.741418414745695 -5.5445458127077979e-015 ;
	setAttr ".bps" -type "matrix" 0.021964626064190564 -1.8735013540549517e-016 -0.99975874849978696 0
		 -2.9837243786801082e-016 0.99999999999999989 -2.2898349882893854e-016 0 0.99975874849978696 4.4408920985006262e-016 0.02196462606419064 0
		 -46.188483625727272 60.947823034437882 56.460573866724168 1;
createNode joint -n "slug_Joint_R_Index1" -p "slug_Joint_R_Wrist";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.44419351647203748 -0.080833861452942593 -0.026915838741077582 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 0.021964626064190564 -1.8735013540549517e-016 -0.99975874849978696 0
		 -2.9837243786801082e-016 0.99999999999999989 -2.2898349882893854e-016 0 0.99975874849978696 4.4408920985006262e-016 0.02196462606419064 0
		 -47.306059945125853 58.484006937352191 69.978306276061318 1;
createNode orientConstraint -n "slug_Joint_R_Wrist_orientConstraint1" -p "slug_Joint_R_Wrist";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Wrist_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_R_Wrist_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -1.0871995279093926e-014 39.831429919111734 4.5575608291367651 ;
	setAttr ".rsrr" -type "double3" 2.8025886412642902 0.02963900777532533 0.00072503171386940543 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_R_Forearm_orientConstraint1" -p "slug_Joint_R_Forearm";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Forearm_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_R_Forearm_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 1.2424041724466862e-017 2.1889031171665983e-036 -2.0189067802258653e-017 ;
	setAttr ".rsrr" -type "double3" -1.4411888400381565e-015 1.4705018134818206e-017 
		-1.0443960074629958e-016 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_R_Shoulder_orientConstraint1" -p "slug_Joint_R_Shoulder";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Shoulder_FKW0" -bt "W000" -dv 1 
		-min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Mid_Chest_orientConstraint1" -p "slug_Joint_Mid_Chest";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Mid_Chest_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 18.502393036793002 -2.3490063810951569 -0.43849323539279073 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Chest3_orientConstraint1" -p "slug_Joint_Chest3";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Chest3_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 18.268194871662104 -7.7062845369324489 -3.0319636322404766 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Chest2_orientConstraint1" -p "slug_Joint_Chest2";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Chest2_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -14.734083564389231 1.376253297826771 -8.4056575296841416 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Chest_orientConstraint1" -p "slug_Joint_Chest";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Chest_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -29.32442853458172 -7.8300495569270794 -3.887448019181492 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Leg_Front" -p "slug_Joint_Chest";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.38255628274926057 -0.0091303896076049169 -0.016522416160940852 ;
	setAttr ".r" -type "double3" 18.427051455940504 -2.0769311163788915 -42.207127823490694 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.660315498197463 24.66086869181574 11.797978402003366 1;
createNode joint -n "slug_Joint_R_Knee_Back" -p "slug_Joint_R_Leg_Front";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.49309368144501942 -0.10801943036269636 -0.01582436976294363 ;
	setAttr ".r" -type "double3" -1.2182137544906422 1.6051829770887125 27.002816578285238 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.689810908641654 21.368436454360754 11.315651611628844 1;
createNode joint -n "slug_Joint_R_Ankle_Back" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.23409498007996035 -0.30578196063944585 0.026885237046158115 ;
	setAttr ".r" -type "double3" 0.33742834405870725 0.0041249027615713621 22.33829862076804 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -33.825025901478845 12.048202294070444 12.135113636795744 1;
createNode joint -n "slug_Joint_R_Toe" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" -0.041146137715513051 -0.36697152739248234 0.00068929130377911457 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -35.079160179047683 0.86291013914758175 -35.965554538288586 1;
createNode ikEffector -n "slug_effector10" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "slug_Joint_L_Leg_Front" -p "slug_Joint_Chest";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.38255628274926062 -0.0091303896076050332 -0.01652241616094062 ;
	setAttr ".r" -type "double3" 37.179819164438847 15.844342671780272 23.909848036819685 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.660315498197464 24.660868691815736 11.797978402003373 1;
createNode joint -n "slug_Joint_L_Knee_Front" -p "slug_Joint_L_Leg_Front";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.4930936814450198 -0.10801943036269625 -0.015824369762944098 ;
	setAttr ".r" -type "double3" -0.65049258545839805 -0.85712349006995148 -14.418760177282291 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 26.689810908641668 21.368436454360754 11.315651611628837 1;
	setAttr ".radi" 2;
createNode joint -n "slug_Joint_L_Ankle_Front" -p "slug_Joint_L_Knee_Front";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.23409498007995966 -0.30578196063944574 0.026885237046158347 ;
	setAttr ".r" -type "double3" 0.18017744022718965 -0.0022025844415714127 -11.928036086442338 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 33.825025901478838 12.048202294070448 12.135113636795744 1;
createNode joint -n "slug_Joint_L_Toe_Front" -p "slug_Joint_L_Ankle_Front";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 6;
	setAttr ".t" -type "double3" 0.041146137715513051 -0.36697152739248246 0.00068929130377934768 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 35.079160179047676 0.86291013914758175 -35.965554538288579 1;
createNode ikEffector -n "slug_effector9" -p "slug_Joint_L_Ankle_Front";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode orientConstraint -n "slug_Joint_Waist_orientConstraint1" -p "slug_Joint_Waist";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Waist_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -8.7473516521218144 6.3560508686059052 8.1655179108273011 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_L_Leg_Mid" -p "slug_Joint_Waist";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.38255628274926062 -0.013132654788263981 0.030469351901841305 ;
	setAttr ".r" -type "double3" -1.9069940497808802 1.3043059828303762 42.081449591698338 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.660315498197464 24.660868691815732 -12.05629700320906 1;
	setAttr ".radi" 2;
createNode joint -n "slug_Joint_L_Knee_Mid" -p "slug_Joint_L_Leg_Mid";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0.49309368144502258 -0.10801943036269974 -0.015824369762944154 ;
	setAttr ".r" -type "double3" -0.74924347277128422 -0.98724289046477098 -16.60766346886227 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 26.689810908641668 21.368436454360751 -12.538623793583596 1;
createNode joint -n "slug_Joint_L_Ankle_Mid" -p "slug_Joint_L_Knee_Mid";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.23409498007995966 -0.30578196063944574 0.026885237046158347 ;
	setAttr ".r" -type "double3" 0.20753006882580613 -0.002536957458034915 -13.738824055080272 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 33.825025901478838 12.048202294070444 -11.71916176841669 1;
	setAttr -av -k on ".blendParent1";
createNode joint -n "slug_Joint_L_Toe_Mid" -p "slug_Joint_L_Ankle_Mid";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" 0.041146137715513051 -0.36697152739248246 0.00068929130377934768 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 35.079160179047676 0.86291013914758175 -35.965554538288579 1;
createNode ikEffector -n "slug_effector8" -p "slug_Joint_L_Ankle_Mid";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "slug_Joint_R_Leg_Mid" -p "slug_Joint_Waist";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" -0.38255628274926057 -0.013132654788264329 0.030469351901841364 ;
	setAttr ".r" -type "double3" 23.248437888331527 0.9783604107391437 -50.954984656513531 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.660315498197463 24.660868691815736 -12.056297003209067 1;
createNode joint -n "slug_Joint_R_Knee_Mid" -p "slug_Joint_R_Leg_Mid";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.49309368144501942 -0.10801943036269636 -0.01582436976294363 ;
	setAttr ".r" -type "double3" -1.0136390576460654 1.3356245192995873 22.468232236999313 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.689810908641654 21.368436454360751 -12.538623793583589 1;
createNode joint -n "slug_Joint_R_Ankle_Mid" -p "slug_Joint_R_Knee_Mid";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" -0.23409498007996035 -0.30578196063944585 0.026885237046158115 ;
	setAttr ".r" -type "double3" 0.28076398533010305 0.0034322076340937997 18.587027013858638 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -33.825025901478845 12.048202294070441 -11.71916176841669 1;
createNode joint -n "slug_Joint_R_Toe__Mid" -p "slug_Joint_R_Ankle_Mid";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".t" -type "double3" -0.041146137715513051 -0.36697152739248234 0.00068929130377911457 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -35.079160179047683 0.86291013914758175 -35.965554538288586 1;
createNode ikEffector -n "slug_effector11" -p "slug_Joint_R_Ankle_Mid";
	setAttr ".v" no;
	setAttr ".hd" yes;
createNode joint -n "slug_Joint_Hip" -p "slug_Joint_Root";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -0.091489999999999849 0 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 22.394525852468533 -37.075600240413756 1;
createNode joint -n "slug_Joint_Tail1" -p "slug_Joint_Hip";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0 0.081026099974799856 -0.82905670133559939 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 24.864201379700432 -62.345248497122824 1;
createNode joint -n "slug_Joint_Tail2" -p "slug_Joint_Tail1";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" 0 0.0052319500125999957 -1.0121749517765994 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 25.02367121608448 -93.196341027273576 1;
createNode joint -n "slug_Joint_Tail3" -p "slug_Joint_Tail2";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 
		-at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0 -0.031391700075600208 -0.65640235091979926 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 24.066852197780186 -113.20348468330906 1;
createNode orientConstraint -n "slug_Joint_Tail3_orientConstraint1" -p "slug_Joint_Tail3";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Tail3_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_Tail3_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -21.174459781959989 19.037265030704933 -14.03546844213778 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_Tail2_orientConstraint1" -p "slug_Joint_Tail2";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Tail2_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_Tail2_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -7.2094956596903161 60.846718017538066 -3.3254652746835984 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_Tail1_orientConstraint1" -p "slug_Joint_Tail1";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Tail1_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_Tail1_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 5.4385923780888739 23.261869743349674 11.656456818028017 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "slug_Joint_L_Leg_Back" -p "slug_Joint_Hip";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.660315498197464 24.660868691815736 -36.323699372020144 1;
	setAttr -k on ".blendParent1";
createNode joint -n "slug_Joint_L_Knee_Back" -p "slug_Joint_L_Leg_Back";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 26.689810908641668 21.368436454360754 -36.80602616239468 1;
	setAttr -k on ".blendParent1";
createNode joint -n "slug_Joint_L_Ankle_Back" -p "slug_Joint_L_Knee_Back";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 33.825025901478838 12.048202294070448 -35.986564137227774 1;
	setAttr -k on ".blendParent1";
createNode joint -n "slug_Joint_L_Toe_Back" -p "slug_Joint_L_Ankle_Back";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 35.079160179047676 0.86291013914758175 -35.965554538288579 1;
	setAttr -k on ".blendParent1";
createNode orientConstraint -n "slug_Joint_L_Toe_orientConstraint1" -p "slug_Joint_L_Toe_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Toe_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0.12262587527816042 0.11320857588228113 3.3638024649401528 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Toe_parentConstraint1" -p "slug_Joint_L_Toe_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Toe_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_L_Toe_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" 0.041146137715512815 -0.36697152739248262 0.00068929130377958078 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_L_Ankle_orientConstraint1" -p "slug_Joint_L_Ankle_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Ankle_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -0.77812332475096258 -2.1147375077438784 -13.469960037355278 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Ankle_parentConstraint1" -p "slug_Joint_L_Ankle_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Ankle_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_L_Ankle_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -0.76848509076437188 -2.2769463453599519 -16.83422593925491 ;
	setAttr ".rst" -type "double3" 0.23409498007995988 -0.30578196063944535 0.026885237046158583 ;
	setAttr ".rsrr" -type "double3" -81.456396009196794 28.707129394208916 -26.178846443155486 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_L_Knee_orientConstraint1" -p "slug_Joint_L_Knee_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Knee_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -1.488019410066608 -5.7373441028129131 -38.312388467308551 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Knee_parentConstraint1" -p "slug_Joint_L_Knee_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Knee_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_L_Knee_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -1.5330167534293073 -3.3581617688774124 -24.846117678956311 ;
	setAttr ".rst" -type "double3" 0.45613242389683384 -0.17470219516584498 -0.080522137880286587 ;
	setAttr ".rsrr" -type "double3" -37.399766986631612 18.861747599590192 -7.0060948210237743 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_L_Leg_orientConstraint1" -p "slug_Joint_L_Leg_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Leg_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 13.079771487951906 24.887409015830638 22.082316955565961 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_L_Leg_parentConstraint1" -p "slug_Joint_L_Leg_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_L_Leg_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_L_Leg_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" 30.856547819256281 14.784531172681667 62.083918376761382 ;
	setAttr ".rst" -type "double3" 0.38255628274926057 0.074355080031076215 0.024668663661207513 ;
	setAttr ".rsrr" -type "double3" 37.243303468107236 -19.20750022429436 -5.956080345753306 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode joint -n "slug_Joint_R_Leg_Back" -p "slug_Joint_Hip";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.660315498197463 24.66086869181574 -36.323699372020151 1;
	setAttr -k on ".blendParent1";
createNode joint -n "slug_Joint_R_Knee_Back" -p "slug_Joint_R_Leg_Back";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.689810908641654 21.368436454360754 -36.806026162394673 1;
	setAttr -k on ".blendParent1";
createNode joint -n "slug_Joint_R_Ankle_Back" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 4;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -33.825025901478845 12.048202294070444 -35.986564137227774 1;
	setAttr -k on ".blendParent1";
createNode joint -n "slug_Joint_R_Toe" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 5;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
	setAttr ".bps" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -35.079160179047683 0.86291013914758175 -35.965554538288586 1;
	setAttr -k on ".blendParent1";
createNode orientConstraint -n "slug_Joint_R_Toe_orientConstraint1" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Toe_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.2428764291021657 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Toe_parentConstraint1" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Toe_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_R_Toe_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".rst" -type "double3" -0.04114613771551328 -0.36697152739248229 0.00068929130377981388 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_R_Ankle_orientConstraint1" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Ankle_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.5475601661007428 -6.9229709565078537 26.741329780864717 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Ankle_parentConstraint1" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Ankle_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_R_Ankle_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -3.1489426162701308 -7.1124216887659992 23.479548168369682 ;
	setAttr ".rst" -type "double3" -0.23409498007995999 -0.30578196063944568 0.026885237046158115 ;
	setAttr ".rsrr" -type "double3" -81.456396343661709 -28.707129389067404 26.178846442919767 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_R_Knee_orientConstraint1" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Knee_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.4026264460482163 -3.2078915113001707 51.800116205937272 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Knee_parentConstraint1" -p "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Knee_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_R_Knee_IKW1" -bt "W001" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -1.5441152772773039 3.382473726586912 25.025995184517559 ;
	setAttr ".rst" -type "double3" -0.45613242362757483 -0.174702195638784 -0.080522137871367971 ;
	setAttr ".rsrr" -type "double3" -37.399767187223141 -18.861747678743196 7.0060948885909964 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_R_Leg_orientConstraint1" -p "slug_Joint_R_Leg_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Leg_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 13.079771487951906 24.887409015830638 22.082316955565961 ;
	setAttr -k on ".w0";
createNode parentConstraint -n "slug_Joint_R_Leg_parentConstraint1" -p "slug_Joint_R_Leg_Back";
	addAttr -ci true -k true -sn "w0" -ln "Joint_R_Leg_FKW0" -bt "W000" -dv 1 -min 
		0 -at "double";
	addAttr -ci true -k true -sn "w1" -ln "Joint_R_Leg_IKW1" -bt "W001" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -s 2 ".tg";
	setAttr ".lr" -type "double3" -13.911989899872204 29.485366767681796 -36.61210965564743 ;
	setAttr ".rst" -type "double3" -0.38255628274926057 0.074355080031076215 0.02466866366120728 ;
	setAttr ".rsrr" -type "double3" 37.243303667547089 19.207500306912554 5.9560804086482397 ;
	setAttr -k on ".w0";
	setAttr -k on ".w1";
createNode orientConstraint -n "slug_Joint_Hip_orientConstraint1" -p "slug_Joint_Hip";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Hip_FKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -3.6007168138931305 -27.70544689757336 -18.2958900406481 ;
	setAttr -k on ".w0";
createNode orientConstraint -n "slug_Joint_Root_orientConstraint1" -p "slug_Joint_Root";
	addAttr -ci true -k true -sn "w0" -ln "Joint_Root_FKW0" -bt "W000" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" 0 0 3.2428749421178291 ;
	setAttr -k on ".w0";
createNode pointConstraint -n "slug_Joint_Root_pointConstraint1" -p "slug_Joint_Root";
	addAttr -ci true -k true -sn "w0" -ln "Cube_RootW0" -bt "W000" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".o" -type "double3" -1.6564008508577675e-030 1.1655884772967523e-016 -2.3311769545935045e-016 ;
	setAttr ".rst" -type "double3" 0 0.82621853846681526 -1.2163910840030761 ;
	setAttr -k on ".w0";
createNode lightLinker -n "lightLinker1";
	setAttr -s 3 ".lnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 3;
	setAttr -s 15 ".dli[1:14]"  1 2 3 4 5 6 7 8 
		9 10 11 12 13 14;
	setAttr -s 8 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Top View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Top View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n"
		+ "                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n"
		+ "                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n"
		+ "                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Top View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Side View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Side View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n"
		+ "                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Side View\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n"
		+ "            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n"
		+ "            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Front View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Front View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Front View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n"
		+ "            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" \"Persp View\"`;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l \"Persp View\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n"
		+ "                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -locators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l \"Persp View\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -locators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" \"Outliner\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l \"Outliner\" -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n"
		+ "            outlinerEditor -e \n                -mainListConnection \"worldList\" \n                -selectionConnection \"modelList\" \n                -highlightConnection \"modelList\" \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l \"Outliner\" -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -mainListConnection \"worldList\" \n            -selectionConnection \"modelList\" \n            -highlightConnection \"modelList\" \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n"
		+ "            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\toutlinerPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" \"Graph Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l \"Graph Editor\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"graphEditorList\" \n                -selectionConnection \"graphEditor1FromOutliner\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n"
		+ "                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -mainListConnection \"graphEditor1FromOutliner\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Graph Editor\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"graphEditorList\" \n                -selectionConnection \"graphEditor1FromOutliner\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -mainListConnection \"graphEditor1FromOutliner\" \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" \"Dope Sheet\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l \"Dope Sheet\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"animationList\" \n                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n                -highlightConnection \"keyframeList\" \n"
		+ "                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Dope Sheet\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -mainListConnection \"animationList\" \n                -selectionConnection \"dopeSheetPanel1OutlinerSelection\" \n                -highlightConnection \"keyframeList\" \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n"
		+ "                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -mainListConnection \"dopeSheetPanel1FromOutliner\" \n                -highlightConnection \"dopeSheetPanel1OutlinerSelection\" \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n"
		+ "                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" \"Trax Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l \"Trax Editor\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -mainListConnection \"lockedList1\" \n                -highlightConnection \"clipEditorPanel1HighlightConnection\" \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l \"Trax Editor\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -mainListConnection \"lockedList1\" \n                -highlightConnection \"clipEditorPanel1HighlightConnection\" \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" \"Hypergraph\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l \"Hypergraph\" -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -orientation \"horiz\" \n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Hypergraph\" -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n"
		+ "                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" \"Hypershade\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l \"Hypershade\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Hypershade\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" \"Visor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n"
		+ "\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l \"Visor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Visor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" \"UV Texture Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l \"UV Texture Editor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"UV Texture Editor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" \"Multilister\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l \"Multilister\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Multilister\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" \"Render View\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l \"Render View\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Render View\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" \"Blend Shape\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l \"Blend Shape\" -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l \"Blend Shape\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" \"Dynamic Relationships\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l \"Dynamic Relationships\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Dynamic Relationships\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" \"Devices\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l \"Devices\" -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l \"Devices\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" \"Relationship Editor\"`;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l \"Relationship Editor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Relationship Editor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" \"Reference Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l \"Reference Editor\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Reference Editor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" \"Component Editor\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l \"Component Editor\" -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Component Editor\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" \"Paint Effects\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l \"Paint Effects\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Paint Effects\" -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" \"Web Browser\"`;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l \"Web Browser\" -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l \"Web Browser\" -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl \"Current Layout\"`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label \"Current Layout\"\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t\"Persp View\"\n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l \\\"Persp View\\\" -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l \\\"Persp View\\\" -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -locators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout \"Current Layout\";\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 1 -size 10 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 150 -max 179 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode script -n "MoveLister";
	addAttr -ci true -sn "totalMoves" -ln "totalMoves" -at "long";
	addAttr -ci true -sn "move0Name" -ln "move0Name" -dt "string";
	addAttr -ci true -sn "move0Min" -ln "move0Min" -at "long";
	addAttr -ci true -sn "move0Max" -ln "move0Max" -at "long";
	addAttr -ci true -sn "move0Chk" -ln "move0Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move1Name" -ln "move1Name" -dt "string";
	addAttr -ci true -sn "move1Min" -ln "move1Min" -at "long";
	addAttr -ci true -sn "move1Max" -ln "move1Max" -at "long";
	addAttr -ci true -sn "move1Chk" -ln "move1Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move2Name" -ln "move2Name" -dt "string";
	addAttr -ci true -sn "move2Min" -ln "move2Min" -at "long";
	addAttr -ci true -sn "move2Max" -ln "move2Max" -at "long";
	addAttr -ci true -sn "move2Chk" -ln "move2Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move3Name" -ln "move3Name" -dt "string";
	addAttr -ci true -sn "move3Min" -ln "move3Min" -at "long";
	addAttr -ci true -sn "move3Max" -ln "move3Max" -at "long";
	addAttr -ci true -sn "move3Chk" -ln "move3Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move4Name" -ln "move4Name" -dt "string";
	addAttr -ci true -sn "move4Min" -ln "move4Min" -at "long";
	addAttr -ci true -sn "move4Max" -ln "move4Max" -at "long";
	addAttr -ci true -sn "move4Chk" -ln "move4Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move5Name" -ln "move5Name" -dt "string";
	addAttr -ci true -sn "move5Min" -ln "move5Min" -at "long";
	addAttr -ci true -sn "move5Max" -ln "move5Max" -at "long";
	addAttr -ci true -sn "move5Chk" -ln "move5Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move6Name" -ln "move6Name" -dt "string";
	addAttr -ci true -sn "move6Min" -ln "move6Min" -at "long";
	addAttr -ci true -sn "move6Max" -ln "move6Max" -at "long";
	addAttr -ci true -sn "move6Chk" -ln "move6Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move7Name" -ln "move7Name" -dt "string";
	addAttr -ci true -sn "move7Min" -ln "move7Min" -at "long";
	addAttr -ci true -sn "move7Max" -ln "move7Max" -at "long";
	addAttr -ci true -sn "move7Chk" -ln "move7Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move8Name" -ln "move8Name" -dt "string";
	addAttr -ci true -sn "move8Min" -ln "move8Min" -at "long";
	addAttr -ci true -sn "move8Max" -ln "move8Max" -at "long";
	addAttr -ci true -sn "move8Chk" -ln "move8Chk" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "move9Name" -ln "move9Name" -dt "string";
	addAttr -ci true -sn "move9Min" -ln "move9Min" -at "long";
	addAttr -ci true -sn "move9Max" -ln "move9Max" -at "long";
	addAttr -ci true -sn "move9Chk" -ln "move9Chk" -min 0 -max 1 -at "bool";
	setAttr ".totalMoves" 10;
	setAttr ".move0Name" -type "string" "Idle_1";
	setAttr ".move0Min" 1;
	setAttr ".move0Max" 31;
	setAttr ".move1Name" -type "string" "Idle_3";
	setAttr ".move1Min" 40;
	setAttr ".move1Max" 109;
	setAttr ".move2Name" -type "string" "Idle2Walk";
	setAttr ".move2Min" 120;
	setAttr ".move2Max" 139;
	setAttr ".move3Name" -type "string" "Walk";
	setAttr ".move3Min" 150;
	setAttr ".move3Max" 179;
	setAttr ".move4Name" -type "string" "Walk2Idle";
	setAttr ".move4Min" 190;
	setAttr ".move4Max" 219;
	setAttr ".move5Name" -type "string" "Attack";
	setAttr ".move5Min" 220;
	setAttr ".move5Max" 259;
	setAttr ".move6Name" -type "string" "Death";
	setAttr ".move6Min" 300;
	setAttr ".move6Max" 359;
	setAttr ".move7Name" -type "string" "Damage";
	setAttr ".move7Min" 400;
	setAttr ".move7Max" 459;
	setAttr ".move8Name" -type "string" "Attack_2_unfinished";
	setAttr ".move8Min" 500;
	setAttr ".move8Max" 542;
	setAttr ".move9Name" -type "string" "Idle_2";
	setAttr ".move9Min" 600;
	setAttr ".move9Max" 629;
createNode ikSCsolver -n "ikSCsolver";
createNode ikRPsolver -n "ikRPsolver";
createNode lambert -n "slug_material";
createNode shadingEngine -n "slug_shader";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode displayLayer -n "GEO";
	setAttr ".do" 1;
createNode displayLayer -n "Layer_Control";
	setAttr ".c" 17;
	setAttr ".do" 2;
createNode displayLayer -n "M_IK";
	setAttr ".c" 14;
	setAttr ".do" 3;
createNode displayLayer -n "L_IK";
	setAttr ".c" 13;
	setAttr ".do" 4;
createNode displayLayer -n "R_IK";
	setAttr ".c" 6;
	setAttr ".do" 5;
createNode displayLayer -n "Layer_Skeleton";
	setAttr ".do" 6;
createNode displayLayer -n "Layer_Skeleton_FK";
	setAttr ".do" 7;
createNode unitConversion -n "unitConversion1";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion2";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion3";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion4";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion5";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion6";
	setAttr ".cf" 0.032808398950131233;
createNode reverse -n "Tail_Reverse_Node";
createNode animCurveUU -n "Cube_Tail1_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode multiplyDivide -n "L_FK_MUltiply_UTL";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "unitConversion7";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion8";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion9";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "L_IK_MUltiply_UTL";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "unitConversion10";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion11";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion12";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion13";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion14";
	setAttr ".cf" 0.032808398950131233;
createNode reverse -n "L_reverse_UTL";
createNode animCurveUU -n "Pole_Joint_L_Wrist_IK_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 0.10000000149011612 0;
createNode multiplyDivide -n "R_FK_MUltiply_UTL";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "unitConversion15";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion16";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion17";
	setAttr ".cf" 0.017453292519943295;
createNode multiplyDivide -n "R_IK_MUltiply_UTL";
	setAttr ".i2" -type "float3" 0.5 1 1 ;
createNode unitConversion -n "unitConversion18";
	setAttr ".cf" 57.295779513082323;
createNode unitConversion -n "unitConversion19";
	setAttr ".cf" 0.017453292519943295;
createNode unitConversion -n "unitConversion20";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion21";
	setAttr ".cf" 0.032808398950131233;
createNode unitConversion -n "unitConversion22";
	setAttr ".cf" 0.032808398950131233;
createNode reverse -n "R_reverse_UTL";
createNode animCurveUU -n "Cube_R_Arm_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
createNode animCurveUU -n "Pole_Joint_R_Wrist_IK_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 0.10000000149011612 0;
createNode pairBlend -n "pairBlend1";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveUU -n "Joint_L_Leg_parentConstraint1_Joint_L_Leg_FKW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "Joint_L_Leg_parentConstraint1_Joint_L_Leg_IKW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode pairBlend -n "pairBlend2";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveUU -n "Joint_L_Knee_parentConstraint1_Joint_L_Knee_FKW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "Joint_L_Knee_parentConstraint1_Joint_L_Knee_IKW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode pairBlend -n "pairBlend3";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveUU -n "Joint_L_Ankle_parentConstraint1_Joint_L_Ankle_FKW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "Joint_L_Ankle_parentConstraint1_Joint_L_Ankle_IKW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode pairBlend -n "pairBlend4";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveUU -n "Joint_L_Toe_parentConstraint1_Joint_L_Toe_FKW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "Joint_L_Toe_parentConstraint1_Joint_L_Toe_IKW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode pairBlend -n "pairBlend5";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveUU -n "Joint_R_Leg_parentConstraint1_Joint_R_Leg_FKW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "Joint_R_Leg_parentConstraint1_Joint_R_Leg_IKW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode pairBlend -n "pairBlend6";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveUU -n "Joint_R_Knee_parentConstraint1_Joint_R_Knee_FKW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "Joint_R_Knee_parentConstraint1_Joint_R_Knee_IKW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode pairBlend -n "pairBlend7";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveUU -n "Joint_R_Ankle_parentConstraint1_Joint_R_Ankle_FKW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "Joint_R_Ankle_parentConstraint1_Joint_R_Ankle_IKW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode pairBlend -n "pairBlend8";
	setAttr ".txm" 2;
	setAttr ".tym" 2;
	setAttr ".tzm" 2;
createNode animCurveUU -n "Joint_R_Toe_parentConstraint1_Joint_R_Toe_FKW0";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 1 1;
createNode animCurveUU -n "Joint_R_Toe_parentConstraint1_Joint_R_Toe_IKW1";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 1 0;
createNode animCurveUU -n "Cube_L_Leg_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
createNode animCurveUU -n "Cube_L_Knee_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
createNode animCurveUU -n "Cube_L_Ankle_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
createNode animCurveUU -n "Cube_R_Leg_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
createNode animCurveUU -n "Cube_R_Knee_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
createNode animCurveUU -n "Cube_R_Ankle_visibility";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
createNode animCurveUA -n "Joint_L_Heel_RF_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -5 0 0 10;
createNode animCurveUA -n "Joint_L_Ball_RF_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 5 20;
createNode animCurveUA -n "Joint_L_Toe_RF_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 10 59.999999999999993;
createNode animCurveUA -n "Joint_L_Toe_IK_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -10 -90 10 90;
createNode animCurveUA -n "Joint_R_Heel_RF_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -5 0 0 10;
createNode animCurveUA -n "Joint_R_Ball_RF_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 5 20;
createNode animCurveUA -n "Joint_R_Toe_RF_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  5 0 10 59.999999999999993;
createNode animCurveUA -n "Joint_R_Toe_IK_rotateX";
	setAttr ".tan" 10;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  -10 -90 10 90;
createNode expression -n "L_Front_IK_Blend";
	setAttr -k on ".nds";
	setAttr ".in[0]"  0;
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "L_Middle_IK_Blend";
	setAttr -k on ".nds";
	setAttr ".in[0]"  0;
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "R_Middle_IK_Blend";
	setAttr -k on ".nds";
	setAttr ".in[0]"  0;
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode expression -n "R_Front_IK_Blend";
	setAttr -k on ".nds";
	setAttr ".in[0]"  0;
	setAttr ".ixp" -type "string" ".O[0] = 1 - .I[0]";
createNode dagPose -n "bindPose1";
	setAttr -s 41 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 46 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 25.183141052468528 -37.075600240413756 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.12198904270649535
		 24.090597391236557 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.12198904270649891
		 25.286584495766036 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.2650706644511835 12.087032387892982 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 15.0788219649003 18.052061358541501 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 20.258978702568761 2.197642252344167 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 15.67597766966005 3.0828524111318387 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 11.771031282226346 5.5491343400372983 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 25.027296650093277 -0.70528419928275099 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 18.216207229563619 0.58708546141414786
		 0.063143343779231031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 -0.31415926535897942 0 0 5.6932090138456779
		 -0.04004954234468272 0.2525733751170236 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 -0.31415926535897942 0 0 12.473629540396445
		 2.8421709430404007e-014 -1.3943075999999692 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 2.4074124304840448e-035 0 0 0 6.6776282215635874
		 -0.13663224955210751 0.69715380000001659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.7057399884982748 0.029575578715524221 0.043943926024593953 0.70648799363021153 
		-0.70573998849827468 -0.029575578715524232 -0.04394392602459396 0.70648799363021153 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 -0.85025833070641943 0 0 6.6776282215636211
		 -1.0422735030885164 0.6971538000000197 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.563209426206221 -2.4261575280524639
		 0.13200086510053666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -18.216207229563619 0.58708546141414786
		 0.063143343779223926 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0.31415926535897942 0 0 -5.6932090138456779
		 -0.04004954234468272 0.25257337511703781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0.31415926535897942 0 0 -12.473629540396445
		 2.8421709430404007e-014 -1.3943075999999692 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6776282215635945 -0.1366322495520933
		 0.69715380000002369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 -0.70648799363021131 0.04394392602459371 0.029575578715524131 -0.70573998849827502 
		0.00032209173812170573 0.072293187188581395 0.010168614209810717 0.99733153496120897 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 -1.8738260787823785e-016 0.92051140350928062
		 -9.6770579959415928e-017 0 -6.6050793174211719 -0.13699157266608336 1.5620991554948067 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70313880412075735 -0.014387059801286482 0.073408682387751847 0.70710678118654724 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.539018382067702 -2.4638160970856902
		 -0.82039476482804474 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.7886151999999953
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.4696755272318995
		 -25.269648256709068 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.15946983638404788
		 -30.851092530150751 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.95681901830429439
		 -20.007143656035481 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.660315498197464 2.2663428393472032
		 0.75190086839361214 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.029495410444204 -3.2924322374549817
		 -0.48232679037453607 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1352149928371702 -9.3202341602903065
		 0.81946202516690647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2541342775688378 -11.185292154922866
		 0.021009598939194518 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.660315498197463 2.2663428393472067
		 0.75190086839360504 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 -15.029495410444191 -3.2924322374549853
		 -0.48232679037452186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.1352149928371915 -9.32023416029031
		 0.81946202516689937 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2541342775688378 -11.185292154922863
		 0.021009598939187413 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.660315498197464 -0.40028331794630034
		 0.92870584596813188 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.029495410444204 -3.2924322374549853
		 -0.48232679037453607 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1352149928371702 -9.3202341602903065
		 0.81946202516690647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.660315498197464 -0.27829427523980144
		 -0.50360324458547012 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.029495410444204 -3.2924322374549817
		 -0.48232679037453607 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1352149928371702 -9.3202341602903065
		 0.81946202516690647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.660315498197463 -0.27829427523979788
		 -0.50360324458547723 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 -15.029495410444191 -3.2924322374549853
		 -0.48232679037452009 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.1352149928371915 -9.32023416029031
		 0.81946202516689937 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.660315498197463 -0.40028331794629679
		 0.92870584596812478 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 -15.029495410444191 -3.2924322374549853
		 -0.48232679037452186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.1352149928371915 -9.32023416029031
		 0.81946202516689937 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 41 ".m";
	setAttr -s 41 ".p";
	setAttr -s 46 ".g[0:45]" yes no no no no no no no no no no no no yes 
		no no no no no yes no no no no no no no no no no no no no no no no no no no no no 
		no no no no no;
	setAttr ".bp" yes;
createNode skinCluster -n "skinCluster2";
	setAttr -s 242 ".wl";
	setAttr -s 2 ".wl[0].w[39:40]"  0.49999996731706203 0.50000003268294513;
	setAttr ".wl[1].w[39]"  1;
	setAttr -s 2 ".wl[2].w[39:40]"  0.49999998802260848 0.50000001197739152;
	setAttr ".wl[3].w[39]"  1;
	setAttr -s 2 ".wl[4].w[39:40]"  0.5 0.5;
	setAttr ".wl[5].w[39]"  1;
	setAttr -s 2 ".wl[6].w[39:40]"  0.5 0.5;
	setAttr ".wl[7].w[39]"  1;
	setAttr -s 2 ".wl[8].w[39:40]"  3.0331225920896067e-007 0.9999996966877408;
	setAttr -s 2 ".wl[9].w[38:39]"  0.5 0.5;
	setAttr -s 2 ".wl[10].w[38:39]"  0.5 0.5;
	setAttr -s 2 ".wl[11].w[38:39]"  0.5 0.5;
	setAttr -s 2 ".wl[12].w[38:39]"  0.5000000084855234 0.49999999151447838;
	setAttr ".wl[13].w[38]"  1;
	setAttr ".wl[14].w[38]"  1;
	setAttr ".wl[15].w[38]"  1;
	setAttr ".wl[16].w[38]"  1;
	setAttr -s 2 ".wl[17].w[37:38]"  0.5 0.5;
	setAttr -s 2 ".wl[18].w[37:38]"  0.5 0.5;
	setAttr -s 2 ".wl[19].w[37:38]"  0.50000012087305379 0.49999987912694621;
	setAttr -s 2 ".wl[20].w[37:38]"  0.5 0.5;
	setAttr ".wl[21].w[37]"  1;
	setAttr ".wl[22].w[37]"  1;
	setAttr ".wl[23].w[37]"  1;
	setAttr ".wl[24].w[37]"  1;
	setAttr -s 2 ".wl[25].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[26].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[27].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[28].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[29].w";
	setAttr ".wl[29].w[0]" 0.5;
	setAttr ".wl[29].w[37]" 0.5;
	setAttr ".wl[30].w[0]"  1;
	setAttr -s 2 ".wl[31].w";
	setAttr ".wl[31].w[0]" 0.99999964237213135;
	setAttr ".wl[31].w[37]" 3.5762786865234375e-007;
	setAttr -s 2 ".wl[32].w";
	setAttr ".wl[32].w[0]" 0.5;
	setAttr ".wl[32].w[37]" 0.5;
	setAttr ".wl[33].w[37]"  1;
	setAttr ".wl[34].w[37]"  1;
	setAttr -s 3 ".wl[35].w[45:47]"  0.99999997019767517 2.9802322387695313e-008 
		2.4891973214363674e-015;
	setAttr -s 3 ".wl[36].w[45:47]"  0.99999994039535101 5.960464410925681e-008 
		3.6025078027324799e-015;
	setAttr ".wl[37].w[45]"  1;
	setAttr ".wl[38].w[45]"  1;
	setAttr -s 3 ".wl[39].w[45:47]"  0.499999940395357 0.5 5.9604642999033786e-008;
	setAttr -s 3 ".wl[40].w[45:47]"  0.49999996236842748 0.5 3.7631572524787771e-008;
	setAttr -s 3 ".wl[41].w[45:47]"  0.49999995823819887 0.5 4.1761801128359366e-008;
	setAttr -s 2 ".wl[42].w[46:47]"  0.5 0.5;
	setAttr -s 2 ".wl[43].w[46:47]"  0.49999998038146953 0.50000001961853047;
	setAttr -s 2 ".wl[44].w[46:47]"  0.5 0.5;
	setAttr ".wl[45].w[47]"  1;
	setAttr -s 2 ".wl[46].w[39:40]"  0.5 0.5;
	setAttr ".wl[47].w[39]"  1;
	setAttr -s 2 ".wl[48].w[39:40]"  0.5 0.5;
	setAttr ".wl[49].w[39]"  1;
	setAttr -s 2 ".wl[50].w[38:39]"  0.5 0.5;
	setAttr -s 2 ".wl[51].w[38:39]"  0.50000000702662994 0.49999999297337006;
	setAttr ".wl[52].w[38]"  1;
	setAttr ".wl[53].w[38]"  1;
	setAttr -s 2 ".wl[54].w[37:38]"  0.5 0.5;
	setAttr -s 2 ".wl[55].w[37:38]"  0.5 0.5;
	setAttr ".wl[56].w[37]"  1;
	setAttr ".wl[57].w[37]"  1;
	setAttr -s 2 ".wl[58].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[59].w[0:1]"  0.5 0.5;
	setAttr -s 2 ".wl[60].w";
	setAttr ".wl[60].w[0]" 0.99999996815333603;
	setAttr ".wl[60].w[41]" 3.1846663972601164e-008;
	setAttr ".wl[61].w[0]"  1;
	setAttr ".wl[62].w[37]"  1;
	setAttr -s 2 ".wl[63].w";
	setAttr ".wl[63].w[37]" 0.99999994039535522;
	setAttr ".wl[63].w[41]" 5.9604644775390625e-008;
	setAttr -s 2 ".wl[64].w[41:42]"  0.99999997019767761 2.9802322387695313e-008;
	setAttr -s 2 ".wl[65].w[41:42]"  0.99999999228586223 7.714139549364063e-009;
	setAttr ".wl[66].w[41]"  1;
	setAttr ".wl[67].w[41]"  1;
	setAttr -s 3 ".wl[68].w[41:43]"  0.49999997019767761 0.5 2.9802322387695313e-008;
	setAttr -s 3 ".wl[69].w[41:43]"  0.49999996230357624 0.5 3.7696423760280595e-008;
	setAttr -s 2 ".wl[70].w[41:42]"  0.5 0.5;
	setAttr -s 2 ".wl[71].w[42:43]"  0.5 0.5;
	setAttr -s 2 ".wl[72].w[42:43]"  0.5 0.5;
	setAttr -s 2 ".wl[73].w[42:43]"  0.5 0.5;
	setAttr -s 2 ".wl[74].w[42:43]"  -9.9607033930671999e-010 1.0000000009960703;
	setAttr -s 2 ".wl[75].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[76].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[77].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[78].w[1:2]"  0.5 0.5;
	setAttr ".wl[79].w[1]"  1;
	setAttr ".wl[80].w[1]"  1;
	setAttr ".wl[81].w[1]"  1;
	setAttr ".wl[82].w[1]"  1;
	setAttr ".wl[83].w[1]"  1;
	setAttr ".wl[84].w[1]"  1;
	setAttr -s 3 ".wl[85].w[33:35]"  0.99999997019767517 2.9802322387695313e-008 
		2.4891975331946042e-015;
	setAttr -s 3 ".wl[86].w[33:35]"  0.99999997019767528 2.9802322387695313e-008 
		2.3759339949082989e-015;
	setAttr ".wl[87].w[33]"  1;
	setAttr ".wl[88].w[33]"  1;
	setAttr -s 2 ".wl[89].w[33:34]"  0.5 0.5;
	setAttr -s 3 ".wl[90].w[33:35]"  0.49999996236843103 0.5 3.7631568972074092e-008;
	setAttr -s 3 ".wl[91].w[33:35]"  0.49999995823819532 0.5 4.1761804681073045e-008;
	setAttr -s 2 ".wl[92].w[34:35]"  0.5 0.5;
	setAttr -s 2 ".wl[93].w[34:35]"  0.5 0.5;
	setAttr -s 2 ".wl[94].w[34:35]"  0.5 0.5;
	setAttr ".wl[95].w[35]"  1;
	setAttr -s 2 ".wl[96].w[2:3]"  0.5 0.5;
	setAttr -s 3 ".wl[97].w[2:4]"  0.30760630772942743 0.50000001964730545 
		0.19239367262326718;
	setAttr -s 3 ".wl[98].w[2:4]"  0.29932189442194157 0.5 0.20067810557805846;
	setAttr -s 2 ".wl[99].w[2:3]"  0.5 0.5;
	setAttr ".wl[100].w[2]"  1;
	setAttr ".wl[101].w[2]"  1;
	setAttr ".wl[102].w[2]"  1;
	setAttr ".wl[103].w[2]"  1;
	setAttr ".wl[104].w[2]"  1;
	setAttr ".wl[105].w[2]"  1;
	setAttr -s 3 ".wl[106].w[21:23]"  0.99999997019767517 2.9802322387695313e-008 
		2.4891975331946042e-015;
	setAttr -s 3 ".wl[107].w[21:23]"  0.99999997019767517 2.9802322387695313e-008 
		2.3883576611935391e-015;
	setAttr ".wl[108].w[21]"  1;
	setAttr -s 2 ".wl[109].w[21:22]"  0.99999999765780889 2.3421911077292634e-009;
	setAttr -s 2 ".wl[110].w[21:22]"  0.5 0.5;
	setAttr -s 3 ".wl[111].w[21:23]"  0.49999996236843103 0.5 3.7631568972074092e-008;
	setAttr -s 3 ".wl[112].w[21:23]"  0.49999995823819532 0.5 4.1761804681073045e-008;
	setAttr -s 2 ".wl[113].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[114].w[22:23]"  0.50000000693695901 0.49999999306304099;
	setAttr -s 2 ".wl[115].w[22:23]"  0.5 0.5;
	setAttr -s 2 ".wl[116].w[22:23]"  -7.0253063243596419e-009 1.0000000070253063;
	setAttr -s 2 ".wl[117].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[118].w[1:2]"  0.5 0.5;
	setAttr -s 2 ".wl[119].w";
	setAttr ".wl[119].w[1]" 0.99999996815333603;
	setAttr ".wl[119].w[29]" 3.1846663972601164e-008;
	setAttr ".wl[120].w[1]"  1;
	setAttr ".wl[121].w[1]"  1;
	setAttr -s 2 ".wl[122].w";
	setAttr ".wl[122].w[1]" 0.99999994039535522;
	setAttr ".wl[122].w[29]" 5.9604644775390625e-008;
	setAttr -s 2 ".wl[123].w[29:30]"  0.99999997019767761 2.9802322387695313e-008;
	setAttr ".wl[124].w[29]"  1;
	setAttr ".wl[125].w[29]"  1;
	setAttr ".wl[126].w[29]"  1;
	setAttr -s 2 ".wl[127].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[128].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[129].w[29:30]"  0.5 0.5;
	setAttr -s 2 ".wl[130].w[30:31]"  0.49999995102566325 0.5000000489743367;
	setAttr -s 2 ".wl[131].w[30:31]"  0.5 0.5;
	setAttr -s 2 ".wl[132].w[30:31]"  0.5 0.5;
	setAttr ".wl[133].w[31]"  1;
	setAttr -s 2 ".wl[134].w[2:3]"  0.5 0.5;
	setAttr -s 3 ".wl[135].w[2:4]"  0.30760632091724938 0.5 0.19239367908275065;
	setAttr ".wl[136].w[2]"  1;
	setAttr ".wl[137].w[2]"  1;
	setAttr ".wl[138].w[2]"  1;
	setAttr -s 2 ".wl[139].w";
	setAttr ".wl[139].w[2]" 0.99999994039535522;
	setAttr ".wl[139].w[25]" 5.9604644775390625e-008;
	setAttr -s 2 ".wl[140].w[25:26]"  0.99999997019767761 2.9802322387695313e-008;
	setAttr ".wl[141].w[25]"  1;
	setAttr ".wl[142].w[25]"  1;
	setAttr ".wl[143].w[25]"  1;
	setAttr -s 2 ".wl[144].w[25:26]"  0.5 0.5;
	setAttr -s 2 ".wl[145].w[25:26]"  0.5 0.5;
	setAttr -s 3 ".wl[146].w[25:27]"  0.49999995814922826 0.5 4.1850771737017567e-008;
	setAttr -s 2 ".wl[147].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[148].w[26:27]"  0.5 0.5;
	setAttr -s 2 ".wl[149].w[26:27]"  0.5 0.5;
	setAttr ".wl[150].w[27]"  1;
	setAttr -s 2 ".wl[151].w[3:4]"  0.99999982644052898 1.7355946393822318e-007;
	setAttr -s 2 ".wl[152].w[3:4]"  0.99999960674503241 3.932549675606226e-007;
	setAttr -s 3 ".wl[153].w[2:4]"  0.093417104494814635 0.81568628549575806 
		0.090896610009427295;
	setAttr ".wl[154].w[3]"  1;
	setAttr -s 2 ".wl[155].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[156].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[157].w[3:4]"  0.499999978170381 0.500000021829619;
	setAttr -s 2 ".wl[158].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[159].w[4:5]"  0.99999995239840755 4.7601592572820517e-008;
	setAttr -s 4 ".wl[160].w";
	setAttr ".wl[160].w[4:5]" 0.99999836061021474 1.6393897943407691e-006;
	setAttr ".wl[160].w[15:16]" 6.1270457380658014e-015 6.1270457380658014e-015;
	setAttr ".wl[161].w[4]"  1;
	setAttr ".wl[162].w[4]"  1;
	setAttr -s 3 ".wl[163].w[5:7]"  0.49999953680112669 0.49999953680112669 
		9.2639774647027959e-007;
	setAttr -s 3 ".wl[164].w[5:7]"  0.49999946355834091 0.49999946355834091 
		1.0728833359507821e-006;
	setAttr -s 3 ".wl[165].w[5:7]"  0.49999997795304907 0.49999997795304907 
		4.4093901863107021e-008;
	setAttr -s 3 ".wl[166].w[5:7]"  0.49999970197677612 0.49999970197677612 
		5.9604647617561568e-007;
	setAttr -s 2 ".wl[167].w[4:5]"  4.9153818804963613e-008 0.99999995084618121;
	setAttr ".wl[168].w[5]"  1;
	setAttr ".wl[169].w[5]"  1;
	setAttr ".wl[170].w[5]"  1;
	setAttr -s 3 ".wl[171].w";
	setAttr ".wl[171].w[5]" 0.99999998386498135;
	setAttr ".wl[171].w[15:16]" 8.0675093272475351e-009 8.0675093272475351e-009;
	setAttr ".wl[172].w[5]"  1;
	setAttr -s 4 ".wl[173].w";
	setAttr ".wl[173].w[15:17]" 0.49999998151072605 0.49999999999999778 1.848927394081697e-008;
	setAttr ".wl[173].w[19]" 2.2512835583414818e-015;
	setAttr -s 4 ".wl[174].w";
	setAttr ".wl[174].w[15:17]" 0.49999998897612485 0.49999999999999734 1.102387514606562e-008;
	setAttr ".wl[174].w[19]" 2.6845703355431521e-015;
	setAttr -s 3 ".wl[175].w[15:17]"  0.49999994039535522 0.5 5.9604644775390625e-008;
	setAttr -s 3 ".wl[176].w[15:17]"  0.49999994039535522 0.5 5.9604644775390625e-008;
	setAttr -s 3 ".wl[177].w";
	setAttr ".wl[177].w[16:17]" 0.49999985571233924 0.50000000000000155;
	setAttr ".wl[177].w[19]" 1.4428766627543961e-007;
	setAttr -s 2 ".wl[178].w[16:17]"  0.5 0.5;
	setAttr -s 2 ".wl[179].w[16:17]"  0.5 0.5;
	setAttr -s 2 ".wl[180].w";
	setAttr ".wl[180].w[17]" 0.49999992668086146;
	setAttr ".wl[180].w[19]" 0.50000007331913854;
	setAttr -s 2 ".wl[181].w";
	setAttr ".wl[181].w[17]" 0.49999991906691577;
	setAttr ".wl[181].w[19]" 0.50000008093308423;
	setAttr -s 2 ".wl[182].w";
	setAttr ".wl[182].w[17]" 0.5;
	setAttr ".wl[182].w[19]" 0.5;
	setAttr ".wl[183].w[19]"  1;
	setAttr ".wl[184].w[7]"  1;
	setAttr ".wl[185].w[7]"  1;
	setAttr ".wl[186].w[7]"  1;
	setAttr ".wl[187].w[7]"  1;
	setAttr ".wl[188].w[7]"  0.99999999999999289;
	setAttr ".wl[189].w[7]"  1;
	setAttr ".wl[190].w[7]"  1;
	setAttr ".wl[191].w[7]"  1;
	setAttr ".wl[192].w[7]"  1;
	setAttr ".wl[193].w[7]"  1;
	setAttr ".wl[194].w[7]"  1;
	setAttr ".wl[195].w[7]"  1;
	setAttr ".wl[196].w[7]"  1;
	setAttr ".wl[197].w[7]"  0.99999999999999645;
	setAttr ".wl[198].w[7]"  1;
	setAttr ".wl[199].w[7]"  1;
	setAttr ".wl[200].w[7]"  1;
	setAttr ".wl[201].w[7]"  1;
	setAttr ".wl[202].w[7]"  0.99999999999999989;
	setAttr ".wl[203].w[7]"  1;
	setAttr ".wl[204].w[7]"  1;
	setAttr ".wl[205].w[7]"  1;
	setAttr -s 2 ".wl[206].w[3:4]"  0.99999991504471097 8.4955289025856473e-008;
	setAttr -s 2 ".wl[207].w[3:4]"  0.99999979138373973 2.0861625316115351e-007;
	setAttr -s 2 ".wl[208].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[209].w[3:4]"  0.5 0.5;
	setAttr -s 2 ".wl[210].w[4:5]"  0.999999952398408 4.7601592001456083e-008;
	setAttr -s 2 ".wl[211].w[4:5]"  0.99999917137761907 8.2862238088921177e-007;
	setAttr -s 3 ".wl[212].w[5:7]"  0.49999979232674679 0.49999979232674679 
		4.1534650641669839e-007;
	setAttr -s 3 ".wl[213].w[5:7]"  0.49999973177909851 0.49999973177909851 
		5.3644183140022506e-007;
	setAttr ".wl[214].w[5]"  1;
	setAttr ".wl[215].w[5]"  1;
	setAttr ".wl[216].w[5]"  1;
	setAttr ".wl[217].w[5]"  1;
	setAttr -s 3 ".wl[218].w[9:11]"  0.49999999075536045 0.5 9.2446395494803977e-009;
	setAttr -s 2 ".wl[219].w[9:10]"  0.5 0.5;
	setAttr -s 3 ".wl[220].w[9:11]"  0.49999993963865563 0.5 6.0361344367265701e-008;
	setAttr -s 3 ".wl[221].w[9:11]"  0.49999998674767987 0.5 1.3252320130163753e-008;
	setAttr -s 3 ".wl[222].w";
	setAttr ".wl[222].w[10:11]" 0.49999997747399233 0.5;
	setAttr ".wl[222].w[13]" 2.2526007687006098e-008;
	setAttr -s 2 ".wl[223].w[10:11]"  0.5 0.5;
	setAttr -s 2 ".wl[224].w[10:11]"  0.5 0.5;
	setAttr -s 2 ".wl[225].w";
	setAttr ".wl[225].w[11]" 0.49999995648316253;
	setAttr ".wl[225].w[13]" 0.50000004351683747;
	setAttr -s 2 ".wl[226].w";
	setAttr ".wl[226].w[11]" 0.5;
	setAttr ".wl[226].w[13]" 0.5;
	setAttr -s 2 ".wl[227].w";
	setAttr ".wl[227].w[11]" 0.5;
	setAttr ".wl[227].w[13]" 0.5;
	setAttr ".wl[228].w[13]"  1;
	setAttr ".wl[229].w[7]"  1;
	setAttr ".wl[230].w[7]"  1;
	setAttr ".wl[231].w[7]"  0.99999999999999289;
	setAttr ".wl[232].w[7]"  1;
	setAttr ".wl[233].w[7]"  1;
	setAttr ".wl[234].w[7]"  1;
	setAttr ".wl[235].w[7]"  1;
	setAttr ".wl[236].w[7]"  1;
	setAttr ".wl[237].w[7]"  1;
	setAttr ".wl[238].w[7]"  1;
	setAttr ".wl[239].w[7]"  1;
	setAttr ".wl[240].w[7]"  1;
	setAttr ".wl[241].w[7]"  1;
	setAttr -s 49 ".pm";
	setAttr ".pm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -25.183141052468528 37.075600240413756 1;
	setAttr ".pm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -25.061152009762033 12.985002849177192 1;
	setAttr ".pm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -24.939162967055537 -12.301581646588843 1;
	setAttr ".pm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -26.204233631506725 -24.388614034481826 1;
	setAttr ".pm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -41.283055596407024 -42.440675393023326 1;
	setAttr ".pm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -61.542034298975786 -44.638317645367493 1;
	setAttr ".pm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -77.218011968635835 -47.721170056499332 1;
	setAttr ".pm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -88.989043250862181 -53.270304396536631 1;
	setAttr ".pm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -114.01633990095546 -52.56502019725388 1;
	setAttr ".pm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -18.216207229563619 -62.129119760389933 -44.701460989146725 1;
	setAttr ".pm[10]" -type "matrix" 0.95105651629515353 0 -0.30901699437494756 0 0 1 0 0
		 0.30901699437494756 0 0.95105651629515353 0 -36.630766703380495 -62.089070218045251 -35.365411371091405 1;
	setAttr ".pm[11]" -type "matrix" 0.80901699437494723 0 -0.58778525229247336 0 0 1 0 0
		 0.58778525229247336 0 0.80901699437494723 0 -57.198704409325437 -62.089070218045279 -17.134346669386957 1;
	setAttr ".pm[12]" -type "matrix" 0.80901699437494723 -8.1588498896305703e-017 -0.58778525229247336 0
		 2.0816681711721673e-017 1 -1.1015494072452725e-016 0 0.58778525229247336 7.6881480548691065e-017 0.80901699437494723 0
		 -63.876332630889031 -61.952437968493172 -17.831500469386963 1;
	setAttr ".pm[13]" -type "matrix" 0.092088808612820497 -8.1588498896305715e-017 -0.99575079780448661 0
		 -6.9041407932880028e-017 1 -8.832173681578558e-017 0 0.99575079780448661 7.6881480548691077e-017 0.092088808612820497 0
		 -60.474103901015731 -60.910164465404655 40.79283243871464 1;
	setAttr ".pm[14]" -type "matrix" 0.092088808612820497 -8.1588498896305715e-017 -0.99575079780448661 0
		 -6.9041407932880028e-017 1 -8.832173681578558e-017 0 0.99575079780448661 7.6881480548691077e-017 0.092088808612820497 0
		 -74.037313327221952 -58.484006937352198 40.660831573614104 1;
	setAttr ".pm[15]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.216207229563619 -62.129119760389933 -44.701460989146717 1;
	setAttr ".pm[16]" -type "matrix" 0.95105651629515353 0 0.30901699437494756 0 0 1 0 0
		 -0.30901699437494756 0 0.95105651629515353 0 36.630766703380495 -62.089070218045251 -35.365411371091412 1;
	setAttr ".pm[17]" -type "matrix" 0.80901699437494723 0 0.58778525229247336 0 0 1 0 0
		 -0.58778525229247336 0 0.80901699437494723 0 57.198704409325444 -62.089070218045279 -17.134346669386964 1;
	setAttr ".pm[18]" -type "matrix" 0.72732463784757573 0.68360203602502534 -0.060721721997428368 0
		 -0.083583354181716876 0.00041397497945132322 -0.9965007032252664 0 -0.68118477235154518 0.72985483828440612 0.057438845298429901 0
		 70.543249443923727 -9.7957040079414011 56.248973239365725 1;
	setAttr ".pm[19]" -type "matrix" 0.021964626064190858 -4.0137064232052481e-016 0.99975874849978696 0
		 -4.9910136155492177e-016 1 3.4411249981905284e-016 0 -0.99975874849978708 -3.6972763642184741e-016 0.021964626064191004 0
		 57.461465439887078 -60.947823034437889 44.937205192407752 1;
	setAttr ".pm[20]" -type "matrix" 0.021964626064190858 -4.0137064232052481e-016 0.99975874849978696 0
		 -4.9910136155492177e-016 1 3.4411249981905284e-016 0 -0.99975874849978708 -3.6972763642184741e-016 0.021964626064191004 0
		 71.000483821954788 -58.484006937352198 45.75759995723579 1;
	setAttr ".pm[21]" -type "matrix" 0.99999999999999889 2.2295226954469338e-015 4.7598478187317883e-008 0
		 0 0.99999999999999889 -4.6840209610755249e-008 0 -4.7598478187317936e-008 4.6840209610755196e-008 0.99999999999999778 0
		 11.660316059763266 -24.660869244435467 -11.79797669186981 1;
	setAttr ".pm[22]" -type "matrix" 0.99999999999999889 2.2295226954469338e-015 4.7598478187317883e-008 0
		 0 0.99999999999999889 -4.6840209610755249e-008 0 -4.7598478187317936e-008 4.6840209610755196e-008 0.99999999999999778 0
		 26.689811470207456 -21.368437006980486 -11.315649901495286 1;
	setAttr ".pm[23]" -type "matrix" 0.99999999999999889 2.2295226954469338e-015 4.7598478187317883e-008 0
		 0 0.99999999999999889 -4.6840209610755249e-008 0 -4.7598478187317936e-008 4.6840209610755196e-008 0.99999999999999778 0
		 33.825026463044658 -12.048202846690174 -12.135111926662184 1;
	setAttr ".pm[24]" -type "matrix" 0.99999999999999889 2.2295226954469338e-015 4.7598478187317883e-008 0
		 0 0.99999999999999889 -4.6840209610755249e-008 0 -4.7598478187317936e-008 4.6840209610755196e-008 0.99999999999999778 0
		 35.079160740613496 -0.86291069176731139 -12.156121525601371 1;
	setAttr ".pm[25]" -type "matrix" 0.99999922855645174 0.00092641634639000284 -0.00082742930489635152 0
		 -0.00092573146058813074 0.99999922894428439 0.00082772706835851503 0 0.00082819548678873334 -0.00082696045247485322 0.99999931511408835 0
		 -11.647248193394626 -24.661895522235966 -11.808734703532084 1;
	setAttr ".pm[26]" -type "matrix" 0.99999887654237918 -0.0013747058177296218 -0.0005975766848069137 0
		 0.0013750571519085513 0.99999888178402074 0.00058791881851758692 0 0.00059676780116694724 -0.00058873986010996753 0.99999964862672253 0
		 -26.723243274710381 -21.310744718290852 -11.327424907377734 1;
	setAttr ".pm[27]" -type "matrix" 0.99999486835424467 -0.0031447415424030109 -0.00061144567053715375 0
		 0.003145235938774818 0.99999472625129704 0.00080929628849584173 0 0.00060889741826779655 -0.00081121527637155997 0.99999948558672225 0
		 -33.879790528284161 -11.927866611450757 -12.149082010910531 1;
	setAttr ".pm[28]" -type "matrix" 0.99999486835424467 -0.0031447415424030109 -0.00061144567053715375 0
		 0.003145235938774818 0.99999472625129704 0.00080929628849584173 0 0.00060889741826779655 -0.00081121527637155997 0.99999948558672225 0
		 -35.133924805853006 -0.74257445652789489 -12.170091609849724 1;
	setAttr ".pm[29]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.660315498197464 -24.660868691815747 12.056297003209069 1;
	setAttr ".pm[30]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.689810908641753 -21.368436454360658 12.538623793583607 1;
	setAttr ".pm[31]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -33.825025901478924 -12.048202294070352 11.719161768416701 1;
	setAttr ".pm[32]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -35.079160179047761 -0.86291013914748582 11.698152169477506 1;
	setAttr ".pm[33]" -type "matrix" 0.99999999999999756 4.6633431815684369e-015 6.8839198864753951e-008 0
		 7.8886090522101181e-031 0.99999999999999778 -6.7742554510698753e-008 0 -6.8839198864754109e-008 6.7742554510698594e-008 0.99999999999999534 0
		 11.660314668251607 -24.660867875091274 12.05629947648603 1;
	setAttr ".pm[34]" -type "matrix" 0.99999999999999756 4.6633431815684369e-015 6.8839198864753951e-008 0
		 7.8886090522101181e-031 0.99999999999999778 -6.7742554510698753e-008 0 -6.8839198864754109e-008 6.7742554510698594e-008 0.99999999999999534 0
		 26.6898100786958 -21.368435637636281 12.538626266860554 1;
	setAttr ".pm[35]" -type "matrix" 0.99999999999999756 4.6633431815684369e-015 6.8839198864753951e-008 0
		 7.8886090522101181e-031 0.99999999999999778 -6.7742554510698753e-008 0 -6.8839198864754109e-008 6.7742554510698594e-008 0.99999999999999534 0
		 33.825025071532998 -12.04820147734597 11.719164241693655 1;
	setAttr ".pm[36]" -type "matrix" 0.99999999999999756 4.6633431815684369e-015 6.8839198864753951e-008 0
		 7.8886090522101181e-031 0.99999999999999778 -6.7742554510698753e-008 0 -6.8839198864754109e-008 6.7742554510698594e-008 0.99999999999999534 0
		 35.079159349101836 -0.8629093224231098 11.698154642754467 1;
	setAttr ".pm[37]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -22.394525852468533 37.075600240413756 1;
	setAttr ".pm[38]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -24.864201379700432 62.345248497122824 1;
	setAttr ".pm[39]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -25.02367121608448 93.196341027273576 1;
	setAttr ".pm[40]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 -24.066852197780186 113.20348468330906 1;
	setAttr ".pm[41]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.660315498197464 -24.660868691815736 36.323699372020144 1;
	setAttr ".pm[42]" -type "matrix" 0.99999582064879855 -0.0021063730616894157 0.0019803730609834233 0
		 0.0021106025613201874 0.99999549131368581 -0.0021360498888609693 0 -0.0019758648141581852 0.0021402207420131818 0.9999957576977071 0
		 -26.807523371303621 -21.233348391440376 36.798658283892756 1;
	setAttr ".pm[43]" -type "matrix" 0.99999582064879855 -0.0021063730616894157 0.0019803730609834233 0
		 0.0021106025613201874 0.99999549131368581 -0.0021360498888609693 0 -0.0019758648141581852 0.0021402207420131818 0.9999957576977071 0
		 -33.94273836414078 -11.913114231150074 35.979196258725842 1;
	setAttr ".pm[44]" -type "matrix" 0.99999582064879855 -0.0021063730616894157 0.0019803730609834233 0
		 0.0021106025613201874 0.99999549131368581 -0.0021360498888609693 0 -0.0019758648141581852 0.0021402207420131818 0.9999957576977071 0
		 -35.196872641709618 -0.72782207622720352 35.958186659786655 1;
	setAttr ".pm[45]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.660315498197463 -24.66086869181574 36.323699372020151 1;
	setAttr ".pm[46]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 26.689810908641654 -21.368436454360754 36.806026162394673 1;
	setAttr ".pm[47]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 33.825025901478845 -12.048202294070444 35.986564137227774 1;
	setAttr ".pm[48]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 35.079160179047683 -0.86291013914758175 35.965554538288586 1;
	setAttr ".gm" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr -s 38 ".ma";
	setAttr -s 49 ".dpf[0:48]"  4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 
		4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4 4;
	setAttr -s 38 ".lw";
	setAttr ".mmi" yes;
	setAttr ".mi" 3;
	setAttr ".ucm" yes;
createNode tweak -n "tweak1";
createNode objectSet -n "skinCluster2Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "skinCluster2GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "skinCluster2GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode dagPose -n "bindPose2";
	setAttr -s 50 ".wm";
	setAttr ".wm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wm[1]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 25.183141052468528 -37.075600240413756 1;
	setAttr ".wm[2]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 25.061152009762033 -12.985002849177192 1;
	setAttr ".wm[3]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 24.939162967055537 12.301581646588843 1;
	setAttr ".wm[4]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 26.204233631506725 24.388614034481826 1;
	setAttr ".wm[5]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 41.283055596407024 42.440675393023326 1;
	setAttr ".wm[6]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 61.542034298975786 44.638317645367493 1;
	setAttr ".wm[7]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 77.218011968635835 47.721170056499332 1;
	setAttr ".wm[8]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 88.989043250862181 53.270304396536631 1;
	setAttr ".wm[9]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 114.01633990095546 52.56502019725388 1;
	setAttr ".wm[10]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 18.216207229563619 62.129119760389933 44.701460989146725 1;
	setAttr ".wm[11]" -type "matrix" 0.95105651629515353 0 0.30901699437494756 0 0 1 0 0
		 -0.30901699437494756 0 0.95105651629515353 0 23.909416243409296 62.089070218045251 44.954034364263748 1;
	setAttr ".wm[12]" -type "matrix" 0.80901699437494723 0 0.58778525229247336 0 0 1 0 0
		 -0.58778525229247336 0 0.80901699437494723 0 36.203407643441196 62.089070218045279 47.482532545083785 1;
	setAttr ".wm[13]" -type "matrix" 0.80901699437494723 2.0816681711721685e-017 0.58778525229247336 0
		 -8.1588498896305703e-017 1 7.6881480548691065e-017 0 -0.58778525229247336 -1.1015494072452725e-016 0.80901699437494723 0
		 41.195945634584227 61.952437968493172 51.971553205903966 1;
	setAttr ".wm[14]" -type "matrix" 0.092088808612820483 -6.9041407932880028e-017 0.99575079780448639 0
		 -8.1588498896305703e-017 1 7.6881480548691065e-017 0 -0.99575079780448639 -8.8321736815785568e-017 0.092088808612820483 0
		 46.188483625727287 60.910164465404655 56.460573866724168 1;
	setAttr ".wm[15]" -type "matrix" 0.092088808612820483 -6.9041407932880028e-017 0.99575079780448639 0
		 -8.1588498896305703e-017 1 7.6881480548691065e-017 0 -0.99575079780448639 -8.8321736815785568e-017 0.092088808612820483 0
		 47.306063456018052 58.484006937352191 69.978306276061318 1;
	setAttr ".wm[16]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -18.216207229563619 62.129119760389933 44.701460989146717 1;
	setAttr ".wm[17]" -type "matrix" 0.95105651629515353 0 -0.30901699437494756 0 0 1 0 0
		 0.30901699437494756 0 0.95105651629515353 0 -23.909416243409296 62.089070218045251 44.954034364263755 1;
	setAttr ".wm[18]" -type "matrix" 0.80901699437494723 0 -0.58778525229247336 0 0 1 0 0
		 0.58778525229247336 0 0.80901699437494723 0 -36.203407643441196 62.089070218045279 47.482532545083799 1;
	setAttr ".wm[19]" -type "matrix" 0.72732463784757573 -0.083583354181716848 -0.68118477235154529 0
		 0.68360203602502523 0.0004139749794513925 0.729854838284406 0 -0.060721721997428403 -0.99650070322526607 0.057438845298429839 0
		 -41.195945634584227 61.952437968493186 51.971553205903987 1;
	setAttr ".wm[20]" -type "matrix" 0.021964626064191004 -3.6082248300317588e-016 -0.99975874849978696 0
		 -3.3306690738754696e-016 1 -5.0653925498522767e-016 0 0.99975874849978708 4.0939474033052647e-016 0.021964626064190858 0
		 -46.188483625727272 60.947823034437882 56.460573866724175 1;
	setAttr ".wm[21]" -type "matrix" 0.021964626064191004 -3.6082248300317588e-016 -0.99975874849978696 0
		 -3.3306690738754696e-016 1 -5.0653925498522767e-016 0 0.99975874849978708 4.0939474033052647e-016 0.021964626064190858 0
		 -47.30605994512586 58.484006937352198 69.978306276061332 1;
	setAttr ".wm[22]" -type "matrix" 0.99999999999999889 0 -4.7598478187317936e-008 0
		 2.2295226954469338e-015 0.99999999999999889 4.6840209610755196e-008 0 4.7598478187317883e-008 -4.6840209610755249e-008 0.99999999999999778 0
		 -11.660315498197463 24.66086869181574 11.797978402003366 1;
	setAttr ".wm[23]" -type "matrix" 0.99999999999999889 0 -4.7598478187317936e-008 0
		 2.2295226954469338e-015 0.99999999999999889 4.6840209610755196e-008 0 4.7598478187317883e-008 -4.6840209610755249e-008 0.99999999999999778 0
		 -26.689810931599666 21.368436476953047 11.315652172791738 1;
	setAttr ".wm[24]" -type "matrix" 0.99999999999999889 0 -4.7598478187317936e-008 0
		 2.2295226954469338e-015 0.99999999999999889 4.6840209610755196e-008 0 4.7598478187317883e-008 -4.6840209610755249e-008 0.99999999999999778 0
		 -33.825025885431728 12.048202278278975 12.135114101022289 1;
	setAttr ".wm[25]" -type "matrix" 0.99999999999999889 0 -4.7598478187317936e-008 0
		 2.2295226954469338e-015 0.99999999999999889 4.6840209610755196e-008 0 4.7598478187317883e-008 -4.6840209610755249e-008 0.99999999999999778 0
		 -35.079160162000562 0.86291012237203013 12.156123235734931 1;
	setAttr ".wm[26]" -type "matrix" 0.99999922855645174 -0.00092573146058813074 0.00082819548678873345 0
		 0.00092641634639000284 0.99999922894428428 -0.00082696045247485322 0 -0.00082742930489635152 0.00082772706835851492 0.99999931511408835 0
		 11.660315498197464 24.660868691815736 11.797978402003373 1;
	setAttr ".wm[27]" -type "matrix" 0.99999887654237918 0.0013750571519085513 0.00059676780116694702 0
		 -0.001374705817729622 0.99999888178402074 -0.00058873986010996742 0 -0.00059757668480691381 0.00058791881851758703 0.99999964862672253 0
		 26.687148242511135 21.354126481331051 11.330822013488131 1;
	setAttr ".wm[28]" -type "matrix" 0.99999486835424489 0.0031452359387748189 0.00060889741826779655 0
		 -0.0031447415424030122 0.99999472625129726 -0.00081121527637156008 0 -0.00061144567053715386 0.00080929628849584195 0.99999948558672236 0
		 33.834678107959078 12.044195848627474 12.16002901063583 1;
	setAttr ".wm[29]" -type "matrix" 0.99999486835424489 0.0031452359387748189 0.00060889741826779655 0
		 -0.0031447415424030122 0.99999472625129726 -0.00081121527637156008 0 -0.00061144567053715386 0.00080929628849584195 0.99999948558672236 0
		 35.123967956430263 0.86292423331690493 12.190875917757932 1;
	setAttr ".wm[30]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.660315498197464 24.660868691815747 -12.056297003209069 1;
	setAttr ".wm[31]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 26.689810908641753 21.368436454360658 -12.538623793583607 1;
	setAttr ".wm[32]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 33.825025901478924 12.048202294070352 -11.719161768416701 1;
	setAttr ".wm[33]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 35.079160179047761 0.86291013914748582 -11.698152169477506 1;
	setAttr ".wm[34]" -type "matrix" 0.99999999999999767 0 -6.8839198864754109e-008 0
		 4.6633431815684369e-015 0.99999999999999767 6.7742554510698594e-008 0 6.8839198864753951e-008 -6.7742554510698753e-008 0.99999999999999534 0
		 -11.660315498197463 24.660868691815736 -12.056297003209067 1;
	setAttr ".wm[35]" -type "matrix" 0.99999999999999767 0 -6.8839198864754109e-008 0
		 4.6633431815684369e-015 0.99999999999999767 6.7742554510698594e-008 0 6.8839198864753951e-008 -6.7742554510698753e-008 0.99999999999999534 0
		 -26.689810941844627 21.368436487034806 -12.538622982002934 1;
	setAttr ".wm[36]" -type "matrix" 0.99999999999999767 0 -6.8839198864754109e-008 0
		 4.6633431815684369e-015 0.99999999999999767 6.7742554510698594e-008 0 6.8839198864753951e-008 -6.7742554510698753e-008 0.99999999999999534 0
		 -33.825025878270736 12.048202271232066 -11.719161097030025 1;
	setAttr ".wm[37]" -type "matrix" 0.99999999999999767 0 -6.8839198864754109e-008 0
		 4.6633431815684369e-015 0.99999999999999767 6.7742554510698594e-008 0 6.8839198864753951e-008 -6.7742554510698753e-008 0.99999999999999534 0
		 -35.079160154393342 0.86291011488598635 -11.698152169477503 1;
	setAttr ".wm[38]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 22.394525852468533 -37.075600240413756 1;
	setAttr ".wm[39]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 24.864201379700432 -62.345248497122824 1;
	setAttr ".wm[40]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 25.02367121608448 -93.196341027273576 1;
	setAttr ".wm[41]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 24.066852197780186 -113.20348468330906 1;
	setAttr ".wm[42]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 11.660315498197464 24.660868691815736 -36.323699372020144 1;
	setAttr ".wm[43]" -type "matrix" 0.99999582064879866 0.0021106025613201883 -0.0019758648141581857 0
		 -0.0021063730616894161 0.99999549131368615 0.0021402207420131818 0 0.0019803730609834233 -0.0021360498888609702 0.99999575769770721 0
		 26.689810908641668 21.368436454360754 -36.80602616239468 1;
	setAttr ".wm[44]" -type "matrix" 0.99999582064879866 0.0021106025613201883 -0.0019758648141581857 0
		 -0.0021063730616894161 0.99999549131368615 0.0021402207420131818 0 0.0019803730609834233 -0.0021360498888609702 0.99999575769770721 0
		 33.84625081159249 12.061553507354319 -36.020613192349472 1;
	setAttr ".wm[45]" -type "matrix" 0.99999582064879866 0.0021106025613201883 -0.0019758648141581857 0
		 -0.0021063730616894161 0.99999549131368615 0.0021402207420131818 0 0.0019803730609834233 -0.0021360498888609702 0.99999575769770721 0
		 35.123981852619742 0.87891388487210165 -36.026020676606066 1;
	setAttr ".wm[46]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -11.660315498197463 24.66086869181574 -36.323699372020151 1;
	setAttr ".wm[47]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -26.689810908641654 21.368436454360754 -36.806026162394673 1;
	setAttr ".wm[48]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -33.825025901478845 12.048202294070444 -35.986564137227774 1;
	setAttr ".wm[49]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -35.079160179047683 0.86291013914758175 -35.965554538288586 1;
	setAttr -s 50 ".xm";
	setAttr ".xm[0]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
		 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[1]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 25.183141052468528 -37.075600240413756 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[2]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.12198904270649535
		 24.090597391236564 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[3]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.12198904270649535
		 25.286584495766036 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[4]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 1.2650706644511871 12.087032387892982 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[5]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 15.0788219649003 18.052061358541501 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[6]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 20.258978702568761 2.197642252344167 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[7]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 15.675977669660051 3.0828524111318387 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[8]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 11.771031282226346 5.5491343400372983 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[9]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 25.027296650093277 -0.70528419928275099 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[10]" -type "matrix" "xform" 1 1 1 0 0 0 0 18.216207229563619 0.58708546141414786
		 0.063143343779231031 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[11]" -type "matrix" "xform" 1 1 1 0 -0.31415926535897942 0 0 5.6932090138456779
		 -0.04004954234468272 0.2525733751170236 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[12]" -type "matrix" "xform" 1 1 1 0 -0.31415926535897942 0 0 12.473629540396445
		 2.8421709430404007e-014 -1.3943075999999692 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[13]" -type "matrix" "xform" 1 1 1 2.4074124304840448e-035 0 0 0 6.6776282215635874
		 -0.13663224955210751 0.69715380000001659 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.7057399884982748 0.029575578715524221 0.04394392602459396 0.70648799363021153 
		-0.70573998849827468 -0.029575578715524232 -0.04394392602459396 0.70648799363021153 1
		 1 1 yes;
	setAttr ".xm[14]" -type "matrix" "xform" 1 1 1 0 -0.85025833070641943 0 0 6.6776282215636211
		 -1.0422735030885164 0.6971538000000197 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[15]" -type "matrix" "xform" 1 1 1 0 0 0 0 13.563209426206221 -2.4261575280524639
		 0.13200086510053666 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[16]" -type "matrix" "xform" 1 1 1 0 0 0 0 -18.216207229563619 0.58708546141414786
		 0.063143343779223926 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[17]" -type "matrix" "xform" 1 1 1 0 0.31415926535897942 0 0 -5.6932090138456779
		 -0.04004954234468272 0.25257337511703781 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1
		 1 1 yes;
	setAttr ".xm[18]" -type "matrix" "xform" 1 1 1 0 0.31415926535897942 0 0 -12.473629540396445
		 2.8421709430404007e-014 -1.3943075999999692 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 
		0 0 0 1 1 1 1 yes;
	setAttr ".xm[19]" -type "matrix" "xform" 1 1 1 0 0 0 0 -6.6776282215635945 -0.1366322495520933
		 0.69715380000002369 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.7064879936302112 -0.043943926024593738 -0.029575578715524155 0.70573998849827513 
		0.00032209173812170573 0.072293187188581395 0.010168614209810717 0.99733153496120897 1
		 1 1 yes;
	setAttr ".xm[20]" -type "matrix" "xform" 1 1 1 3.1289204184303947e-016 0.9205114035092804
		 2.0933543850724299e-016 0 -6.6050793174211719 -0.13699157266608336 1.5620991554948067 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 -0.70313880412075735 -0.014387059801286482 0.073408682387751847 0.70710678118654724 1
		 1 1 yes;
	setAttr ".xm[21]" -type "matrix" "xform" 1 1 1 0 0 0 0 -13.539018382067702 -2.4638160970856902
		 -0.82039476482804474 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[22]" -type "matrix" "xform" 1 1 1 4.6840209610755269e-008 4.7598478187317955e-008
		 -7.1632709517886274e-010 0 -11.660315498197463 -0.27829427523979788 -0.50360324458547723 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[23]" -type "matrix" "xform" 1 1 1 9.7241029671762403e-016 -9.2947890208772164e-016
		 -9.3180818216104499e-015 0 -15.029495410444191 -3.2924322374549853 -0.48232679037452186 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[24]" -type "matrix" "xform" 1 1 1 -8.9666584031466241e-016 5.334447571288442e-017
		 -7.1685307370570507e-015 0 -7.1352149928371915 -9.32023416029031 0.81946202516689937 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[25]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2541342775688378 -11.185292154922863
		 0.021009598939187413 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[26]" -type "matrix" "xform" 1 1 1 -0.00082696083033911329 -0.00082819558146638177
		 -0.00092573191029370896 0 11.660315498197464 -0.27829427523980144 -0.50360324458547012 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[27]" -type "matrix" "xform" 1 1 1 0.00024012416640228486 0.00022952281285556879
		 0.0023009799849270469 0 15.029495410444204 -3.2924322374549817 -0.48232679037453613 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[28]" -type "matrix" "xform" 1 1 1 -0.00022142005095369025 -1.3172729459923797e-005
		 0.0017701761009493505 0 7.1352149928371702 -9.3202341602903065 0.81946202516690647 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[29]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2541342775688378 -11.185292154922866
		 0.021009598939194518 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[30]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.660315498197464 -0.40028331794628613
		 0.928705845968123 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[31]" -type "matrix" "xform" 1 1 1 0 0 0 0 15.029495410444289 -3.2924322374550883
		 -0.48232679037453779 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[32]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1352149928371702 -9.3202341602903065
		 0.81946202516690647 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[33]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2541342775688378 -11.185292154922866
		 0.021009598939194518 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[34]" -type "matrix" "xform" 1 1 1 6.7742554510698805e-008 6.8839198864754162e-008
		 -1.0359858336368159e-009 0 -11.660315498197463 -0.40028331794629679 0.92870584596812478 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[35]" -type "matrix" "xform" 1 1 1 -1.5297305469260241e-017 2.0156540052241895e-017
		 3.3907869797541927e-016 0 -15.029495410444191 -3.2924322374549853 -0.48232679037452186 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[36]" -type "matrix" "xform" 1 1 1 4.2371418267321324e-018 5.1797065451075581e-020
		 2.8050559797555489e-016 0 -7.1352149928371915 -9.32023416029031 0.81946202516689937 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[37]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2541342775688378 -11.185292154922863
		 0.021009598939187413 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[38]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -2.7886151999999953
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[39]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 2.4696755272318995
		 -25.269648256709068 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[40]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 0.15946983638404788
		 -30.851092530150751 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[41]" -type "matrix" "xform" 1 1 1 0 0 0 0 0 -0.95681901830429439
		 -20.007143656035481 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[42]" -type "matrix" "xform" 1 1 1 0 0 0 0 11.660315498197464 2.2663428393472032
		 0.75190086839361214 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[43]" -type "matrix" "xform" 1 1 1 0.0021402265536901049 0.0019758660998035697
		 0.0021106082482817237 0 15.029495410444204 -3.2924322374549817 -0.48232679037453607 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[44]" -type "matrix" "xform" 1 1 1 0 0 0 0 7.1352149928371595 -9.3202341602903047
		 0.81946202516691358 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[45]" -type "matrix" "xform" 1 1 1 0 0 0 0 1.2541342775688378 -11.185292154922868
		 0.021009598939194518 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[46]" -type "matrix" "xform" 1 1 1 0 0 0 0 -11.660315498197463 2.2663428393472067
		 0.75190086839360504 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[47]" -type "matrix" "xform" 1 1 1 0 0 0 0 -15.029495410444191 -3.2924322374549853
		 -0.48232679037452186 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[48]" -type "matrix" "xform" 1 1 1 0 0 0 0 -7.1352149928371915 -9.32023416029031
		 0.81946202516689937 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr ".xm[49]" -type "matrix" "xform" 1 1 1 0 0 0 0 -1.2541342775688378 -11.185292154922863
		 0.021009598939187413 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 1 1 yes;
	setAttr -s 41 ".m";
	setAttr -s 41 ".p";
	setAttr -s 50 ".g[0:49]" yes no no no no no no no no no no no no yes 
		no no no no no yes no no no no no no no no no no no no no no no no no no no no no 
		no no no no no no no no no;
	setAttr ".bp" yes;
createNode file -n "slug_file";
	setAttr ".ftn" -type "string" "C:/Animation_Projects/Dejarik//characters/Slug/Slug_Redone.jpg";
	setAttr ".ft" 1;
createNode place2dTexture -n "place2dTexture2";
createNode animCurveTA -n "Cube_Tail3_rotateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  0 -0.21164029054141953 1 -22.214752414925726 
		10 -21.937814647948343 21 -21.937814647948343 31 -22.214752414925726 40 -22.214752414925726 
		45 -22.214752414925726 50 -22.214752414925726 54 -22.214752414925726 61 -22.214752414925726 
		68 -22.214752414925726 74 -22.214752414925726 78 -22.214752414925726 81 -22.214752414925726 
		89 -22.214752414925726 95 -22.214752414925726 100 -22.214752414925726 109 -22.214752414925726 
		120 -22.214752414925726 139 -22.214752414925726 150 -22.214752414925726 154 -22.214752414925726 
		159 -22.214752414925726 164 -22.214752414925726 169 -21.277149649302832 172 -21.116417746624624 
		175 -21.277149649302832 179 -22.214752414925726 190 -22.214752414925726 207 -22.214752414925726 
		215 -22.214752414925726 220 -22.214752414925726 225 32.140175801747162 229 32.140175801747162 
		232 32.140175801747162 234 32.140175801747162 237 32.140175801747162 239 32.140175801747162 
		242 37.523665237962952 246 -19.482382065482266 253 -22.214752414925726 300 -22.214752414925726 
		307 -22.214752414925726 312 -27.947683549453668 316 -27.947683549453668 318 -27.947683549453668 
		322 -17.423842274837991 328 -17.423842274837991 330 -17.423842274837991 332 -17.423842274837991 
		333 -17.423842274837991 335 -17.423842274837991 342 -19.416935800878129 354 -19.619566786055191 
		371 -22.214752414925726 400 -22.214752414925726 403 -22.214752414925726 406 -22.214752414925726 
		410 -22.214752414925726 415 -22.214752414925726 419 -22.214752414925726 432 -27.311624368287287 
		436 -27.311624368287287 447 -22.214752414925726 459 -22.214752414925726 500 -22.214752414925726 
		542 -22.214752414925726 600 -22.214752414925726 626 -22.214752414925726;
	setAttr -s 69 ".kit[17:68]"  10 3 3 3 3 3 3 9 
		3 9 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 
		3 3 3 3 3 3 3 3 3 3 9 3 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[17:68]"  5 3 5 3 3 3 3 9 
		3 9 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 
		3 3 3 3 3 3 3 3 3 3 9 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Cube_Tail3_rotateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  0 9.5504216288766646 1 -27.197301506231266 
		10 -0.25642937810532135 21 -5.001796256060401 31 -27.197301506231266 40 -27.197301506231266 
		45 -27.197301506231266 50 -27.197301506231266 54 -27.197301506231266 61 -27.197301506231266 
		68 -27.197301506231266 74 -27.197301506231266 78 -27.197301506231266 81 -27.197301506231266 
		89 -27.197301506231266 95 -27.197301506231266 100 -27.197301506231266 109 -27.197301506231266 
		120 -27.197301506231266 139 -27.197301506231266 150 -27.197301506231266 154 -27.197301506231266 
		159 -27.197301506231266 164 -27.197301506231266 169 14.72465088946603 172 21.025545538117949 
		175 14.72465088946603 179 -27.197301506231266 190 -27.197301506231266 207 -27.197301506231266 
		215 -27.197301506231266 220 -27.197301506231266 225 -17.503697726675355 229 -17.503697726675355 
		232 -17.503697726675355 234 -17.503697726675355 237 -17.503697726675355 239 -17.503697726675355 
		242 33.593765074861437 246 24.899903870417443 253 -27.197301506231266 300 -27.197301506231266 
		307 -27.197301506231266 312 -44.149663683357723 316 -44.149663683357723 318 -44.149663683357723 
		322 -16.165052162677213 328 -16.165052162677213 330 -16.165052162677213 332 -16.165052162677213 
		333 -16.165052162677213 335 -16.165052162677213 342 26.711901678939959 354 31.071054566050119 
		371 -27.197301506231266 400 -27.197301506231266 403 -27.197301506231266 406 -27.197301506231266 
		410 -27.197301506231266 415 -27.197301506231266 419 -27.197301506231266 432 42.869648878685005 
		436 42.869648878685005 447 -27.197301506231266 459 -27.197301506231266 500 -27.197301506231266 
		542 -27.197301506231266 600 -27.197301506231266 626 -27.197301506231266;
	setAttr -s 69 ".kit[3:68]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 3 3 3 3 3 9 3 9 3 
		3 3 10 3 3 3 3 3 3 3 3 9 3 10 3 3 3 
		3 3 3 3 3 3 3 9 3 10 3 3 3 3 3 3 3 
		3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[3:68]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 3 3 3 3 9 3 9 3 
		3 3 5 3 3 3 3 3 3 3 3 9 3 5 3 3 3 
		3 3 3 3 3 3 3 9 5 5 3 3 3 3 3 3 3 
		3 3 5 5 5 5 5;
createNode animCurveTA -n "Cube_Tail3_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  0 10.119635350365828 1 3.0249977477931576 
		10 -17.500803615286387 21 -13.751239114589128 31 3.0249977477931576 40 3.0249977477931576 
		45 3.0249977477931576 50 3.0249977477931576 54 3.0249977477931576 61 3.0249977477931576 
		68 3.0249977477931576 74 3.0249977477931576 78 3.0249977477931576 81 3.0249977477931576 
		89 3.0249977477931576 95 3.0249977477931576 100 3.0249977477931576 109 3.0249977477931576 
		120 3.0249977477931576 139 3.0249977477931576 150 3.0249977477931576 154 3.0249977477931576 
		159 3.0249977477931576 164 3.0249977477931576 169 -12.1603571164374 172 -15.436822333736398 
		175 -12.1603571164374 179 3.0249977477931576 190 3.0249977477931576 207 3.0249977477931576 
		215 3.0249977477931576 220 3.0249977477931576 225 -16.107880917098587 229 -16.107880917098587 
		232 -16.107880917098587 234 -16.107880917098587 237 -16.107880917098587 239 -16.107880917098587 
		242 17.614738519829643 246 12.543319483903979 253 3.0249977477931576 300 3.0249977477931576 
		307 3.0249977477931576 312 12.733159743901643 316 12.733159743901643 318 12.733159743901643 
		322 26.368911873075081 328 26.368911873075081 330 26.368911873075081 332 26.368911873075081 
		333 26.368911873075081 335 26.368911873075081 342 12.37389012373397 354 10.951064246476902 
		371 3.0249977477931576 400 3.0249977477931576 403 3.0249977477931576 406 3.0249977477931576 
		410 3.0249977477931576 415 3.0249977477931576 419 3.0249977477931576 432 -26.905500493233625 
		436 -26.905500493233625 447 3.0249977477931576 459 3.0249977477931576 500 3.0249977477931576 
		542 3.0249977477931576 600 3.0249977477931576 626 3.0249977477931576;
	setAttr -s 69 ".kit[3:68]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 3 3 3 3 3 9 3 9 3 
		3 3 10 3 3 3 3 3 3 3 3 9 3 10 3 3 3 
		3 3 3 3 3 3 3 9 3 10 3 3 3 3 3 3 3 
		3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[3:68]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 3 3 3 3 9 3 9 3 
		3 3 5 3 3 3 3 3 3 3 3 9 3 5 3 3 3 
		3 3 3 3 3 3 3 9 5 5 3 3 3 3 3 3 3 
		3 3 5 5 5 5 5;
createNode animCurveTA -n "Cube_Tail2_rotateX";
	setAttr ".tan" 3;
	setAttr -s 63 ".ktv[0:62]"  0 24.479799297191022 1 -4.906 10 3.4513840183120506 
		21 6.8058678737994214 31 -4.906 40 -4.906 45 -4.906 50 -4.906 54 -4.906 61 -4.906 
		73 -4.906 81 -3.5819672558680713 108 -4.906 120 -4.906 139 -4.906 150 -4.906 154 
		-4.906 159 -4.7666181266169172 164 -4.6007084963541285 169 -7.2652542524195685 172 
		-6.5463125212808206 175 -3.7381384090551268 179 -4.906 190 -4.906 207 -4.906 215 
		-4.906 220 -4.906 225 52.69897394453033 229 52.69897394453033 232 52.69897394453033 
		234 52.69897394453033 237 52.69897394453033 242 9.5860847207138189 246 -2.6120620676246094 
		253 -4.906 300 -4.906 307 -4.906 312 -6.8202460380172889 316 -6.8202460380172889 
		318 -6.8202460380172889 322 8.847802350144045 328 29.627797267261997 330 31.172298344700422 
		332 28.074227665753021 335 20.247303671960463 342 10.057186275484808 354 9.0211919781071952 
		371 -4.906 400 -4.906 403 -4.906 406 -4.906 410 -4.906 415 -4.906 419 -4.1654422752343034 
		432 -6.2943799155026356 436 -10.839669245421756 447 -4.906 459 -4.906 500 -4.906 
		542 -4.906 600 -4.906 614 -4.1611327724228486 626 -4.906;
	setAttr -s 63 ".kit[2:62]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 9 3 3 9 3 3 3 3 10 3 
		3 3 3 3 3 9 9 3 10 3 3 3 3 9 9 3 9 
		9 3 3 10 3 3 3 3 3 3 3 3 3 10 10 10 3 
		3 3;
	setAttr -s 63 ".kot[2:62]"  9 3 3 3 3 3 3 3 
		3 3 3 3 5 3 3 9 3 3 9 3 3 3 3 5 3 
		3 3 3 3 3 9 9 3 5 3 3 3 3 9 9 3 9 
		9 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 3 
		3 3;
createNode animCurveTA -n "Cube_Tail2_rotateY";
	setAttr ".tan" 3;
	setAttr -s 64 ".ktv[0:63]"  0 18.892941681035655 1 -45.258000000000003 
		10 -29.074263372069705 21 -21.42281479368884 31 -45.258000000000003 40 -45.258000000000003 
		45 -45.258000000000003 50 -45.258000000000003 54 -45.258000000000003 61 -45.258000000000003 
		73 -45.258000000000003 81 -15.515170966432271 108 -45.258000000000003 120 -45.258000000000003 
		139 -45.258000000000003 150 -45.258000000000003 154 -45.258000000000003 159 28.522841612377654 
		164 53.090435197514864 169 61.573808468702815 172 53.198492473769662 175 22.577975473253012 
		179 -45.258000000000003 190 -45.258000000000003 207 -45.258000000000003 215 -45.258000000000003 
		220 -45.258000000000003 225 -18.792492651570743 229 -18.792492651570743 232 -18.792492651570743 
		234 -18.792492651570743 237 -18.792492651570743 239 -18.792492651570743 242 11.803353770929531 
		246 -8.7338382102622667 253 -45.258000000000003 300 -45.258000000000003 307 -45.258000000000003 
		312 -59.540806079677836 316 -59.540806079677836 318 -59.540806079677836 322 -48.61336354517465 
		328 -24.636446333115444 330 -17.727996291758252 332 -6.2608621333859045 335 -17.735865577093417 
		342 37.580408870082053 354 43.204224833111972 371 -45.258000000000003 400 -45.258000000000003 
		403 -45.258000000000003 406 -45.258000000000003 410 -45.258000000000003 415 -45.258000000000003 
		419 34.02647230742032 432 56.695852801148604 436 -34.287051255877998 447 -45.258000000000003 
		459 -45.258000000000003 500 -45.258000000000003 542 -45.258000000000003 600 -45.258000000000003 
		614 -43.10751449688113 626 -45.258000000000003;
	setAttr -s 64 ".kit[2:63]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 9 9 3 9 9 3 3 3 10 3 
		3 3 3 3 3 3 3 9 3 10 3 3 3 3 9 3 9 
		9 3 3 3 10 3 3 3 3 3 3 3 3 3 10 10 10 
		3 3 3;
	setAttr -s 64 ".kot[2:63]"  9 3 3 3 3 3 3 3 
		3 3 3 3 5 3 3 9 9 3 9 9 3 3 3 5 3 
		3 3 3 3 3 3 3 9 3 5 3 3 3 3 9 3 9 
		9 3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 
		3 3 3;
createNode animCurveTA -n "Cube_Tail2_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 64 ".ktv[0:63]"  0 13.784283458911293 1 6.4960000000000004 
		10 7.3870431935066971 21 -3.553524011899122 31 6.4960000000000004 40 6.4960000000000004 
		45 6.4960000000000004 50 6.4960000000000004 54 6.4960000000000004 61 6.4960000000000004 
		73 6.4960000000000004 81 3.9664391573791242 108 6.4960000000000004 120 6.4960000000000004 
		139 6.4960000000000004 150 6.4960000000000004 154 6.4960000000000004 159 3.3131739680407772 
		164 -0.036952429932478714 169 -3.389916443731682 172 -2.2732076444072651 175 2.6868734258956595 
		179 6.4960000000000004 190 6.4960000000000004 207 6.4960000000000004 215 6.4960000000000004 
		220 6.4960000000000004 225 -24.687522907108391 229 -24.687522907108391 232 -24.687522907108391 
		234 -24.687522907108391 237 -24.687522907108391 239 -24.687522907108391 242 -19.486037458588498 
		246 6.8759777191766105 253 6.4960000000000004 300 6.4960000000000004 307 6.4960000000000004 
		312 8.8932430350864067 316 8.8932430350864067 318 8.8932430350864067 322 -49.187062049208528 
		328 -63.573212376444062 330 -59.69769434835839 332 -51.072458497514667 335 -26.2494914995548 
		342 -9.2891742702560833 354 -7.5648769685051045 371 6.4960000000000004 400 6.4960000000000004 
		403 6.4960000000000004 406 6.4960000000000004 410 6.4960000000000004 415 6.4960000000000004 
		419 0.67342066554484636 432 -2.2598923697371731 436 5.363799704336234 447 6.4960000000000004 
		459 6.4960000000000004 500 6.4960000000000004 542 6.4960000000000004 600 6.4960000000000004 
		614 5.3331203028372265 626 6.4960000000000004;
	setAttr -s 64 ".kit[17:63]"  9 9 3 9 9 3 3 3 
		10 3 3 3 3 3 3 3 9 3 3 10 3 3 3 3 9 
		3 9 9 9 3 3 10 3 3 3 3 3 3 3 3 3 10 
		10 10 3 3 3;
	setAttr -s 64 ".kot[14:63]"  5 3 3 9 9 3 9 9 
		3 3 3 5 3 3 3 3 3 3 3 9 3 3 5 3 3 
		3 3 9 3 9 9 9 3 5 5 3 3 3 3 3 3 3 
		3 3 5 5 5 3 3 3;
createNode animCurveTA -n "Cube_Tail1_rotateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  0 14.345000000000001 1 18.653 10 19.512078240617594 
		21 23.983179895452476 31 18.653 40 18.653 45 22.515258012435474 50 23.802071993183507 
		54 22.438259659066958 70 15.338046995213386 74 15.057054024863453 77 15.749045354936957 
		100 25.311155618273936 109 18.653 120 18.653 124 27.636265182731375 139 18.653 150 
		18.653 154 13.337179786594211 159 9.3142031911597645 164 7.220545597664179 169 4.4964513194692364 
		172 8.130423974144982 175 7.1246991719087607 179 18.653 190 18.653 207 18.653 215 
		18.653 220 18.653 225 45.440217882588378 229 45.440217882588378 232 45.440217882588378 
		234 45.440217882588378 237 45.440217882588378 242 40.240202066071085 246 54.702106991558772 
		253 18.653 300 18.653 307 18.653 312 38.818714283294511 316 56.299639169566703 318 
		56.299639169566703 322 56.299639169566703 328 56.299639169566703 330 56.299639169566703 
		331 57.820776909329865 333 49.849859579886036 335 38.406771381795096 337 15.674850854386488 
		339 10.728861289814557 342 35.160206875552156 354 35.733424310904276 371 18.653 400 
		18.653 403 31.684864036114572 406 19.369074155181238 410 13.471103078529387 415 20.604416326835906 
		419 13.347179605740825 432 23.120415977105946 436 23.863734933520629 447 18.653 459 
		18.653 500 18.653 542 18.653 600 18.653 605 18.220789838391347 614 19.463414194465681 
		626 18.653;
	setAttr -s 69 ".kit[2:68]"  9 3 3 3 9 3 9 9 
		3 9 3 10 3 3 3 3 9 9 9 3 3 3 3 3 3 
		10 3 3 3 3 3 3 3 3 3 10 3 9 3 3 3 3 
		3 3 9 9 9 9 3 3 10 3 3 9 3 3 3 3 3 
		3 10 10 10 3 3 3 3;
	setAttr -s 69 ".kot[2:68]"  9 3 3 3 9 3 9 9 
		3 9 3 5 3 3 5 3 9 9 9 3 3 3 3 3 3 
		5 3 3 3 3 3 3 3 3 3 5 3 9 3 3 3 3 
		3 3 9 9 9 9 3 5 5 3 3 9 3 3 3 3 3 
		3 5 5 5 3 3 3 3;
createNode animCurveTA -n "Cube_Tail1_rotateY";
	setAttr ".tan" 3;
	setAttr -s 64 ".ktv[0:63]"  0 10.908571720380513 1 -43.865000000000002 
		10 -44.445038685231943 21 -50.464836157032266 31 -43.865000000000002 40 -43.865000000000002 
		45 -52.973609767312588 50 -55.154020211505163 54 -52.832877063750644 70 -32.175530823816331 
		74 -29.03854734766886 77 -31.74096026344969 100 -57.360100024294653 109 -43.865000000000002 
		120 -43.865000000000002 124 -60.19021350037977 139 -43.865000000000002 150 -43.865000000000002 
		154 -1.5796165872044785 159 17.650692120540885 164 27.700248569319687 169 36.252297244430949 
		172 -24.607320434037995 175 -39.023607290780383 179 -43.865000000000002 190 -43.865000000000002 
		207 -43.865000000000002 215 -43.865000000000002 220 -43.865000000000002 225 -47.112364883978962 
		229 -47.112364883978962 232 -47.112364883978962 234 -47.112364883978962 237 -47.112364883978962 
		242 -25.792568250204734 246 -29.084738118327198 253 -43.865000000000002 300 -43.865000000000002 
		307 -43.865000000000002 312 -66.420746802953204 322 -74.24113350071859 332 -63.011995987394677 
		335 -53.46658212299274 337 -47.961443571162206 339 -13.629322679896223 342 20.779671860295633 
		354 17.614773504361867 371 -43.865000000000002 400 -43.865000000000002 403 -63.958672513472187 
		406 -45.949853584565155 410 8.1649438661863289 415 49.060956652956484 419 -2.706356562664515 
		432 -54.037700020744374 436 -55.251029649140008 447 -43.865000000000002 459 -43.865000000000002 
		500 -43.865000000000002 542 -43.865000000000002 600 -43.865000000000002 605 -43.415646003210583 
		614 -41.830422638190178 626 -43.865000000000002;
	setAttr -s 64 ".kit[2:63]"  9 3 3 3 9 3 9 9 
		3 9 3 10 3 3 3 3 9 9 9 3 9 9 3 3 3 
		10 3 3 3 3 3 3 3 9 3 10 3 9 3 9 9 9 
		9 3 3 10 3 3 9 9 3 9 9 3 3 10 10 10 3 
		9 3 3;
	setAttr -s 64 ".kot[2:63]"  9 3 3 3 9 3 9 9 
		3 9 3 5 3 3 5 3 9 9 9 3 9 9 3 3 3 
		5 3 3 3 3 3 3 3 9 3 5 3 9 3 9 9 9 
		9 3 5 5 3 3 9 9 3 9 9 3 3 5 5 5 3 
		9 3 3;
createNode animCurveTA -n "Cube_Tail1_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  0 5.5283561899838078 1 -8.854 10 -11.463657964589158 
		21 -17.982529334022225 31 -8.854 40 -8.854 45 -13.999482303534394 50 -15.588464012718392 
		54 -13.902947017822015 70 -4.2624116059806951 74 -3.2482933504070335 77 -5.9803395951059546 
		89 -8.854 95 -8.854 100 -17.402891004010549 109 -8.854 120 -8.854 124 -20.120907620007305 
		139 -8.854 150 -8.854 154 3.937523378915452 159 8.6364715997482211 164 12.823786786739394 
		169 14.31937287808007 172 4.0481252178793028 175 5.4213233653083011 179 -8.854 190 
		-8.854 207 -8.854 215 -8.854 220 -8.854 225 1.9635881105979549 229 1.9635881105979549 
		232 1.9635881105979549 234 1.9635881105979549 237 1.9635881105979549 242 -14.814814448282958 
		246 -19.967746310131346 253 -8.854 300 -8.854 307 -8.854 312 -32.489863198251797 
		316 -50.922687830718033 318 -50.922687830718033 322 -50.922687830718033 328 -50.922687830718033 
		330 -50.922687830718033 332 -39.746308090282703 335 -23.396661900537392 337 5.0881449869948039 
		339 14.304243121630082 342 35.516251924036091 354 30.625253270560084 371 -8.854 400 
		-8.854 403 -24.700057742952144 406 -9.8681408029546205 410 6.2604687323380759 415 
		20.166787542042005 419 3.6701151250689636 432 -14.752209111065168 436 -15.663555148614265 
		447 -8.854 459 -8.854 500 -8.854 542 -8.854 600 -8.854 605 -8.8212057799845933 614 
		-8.0120940862829482 626 -8.854;
	setAttr -s 70 ".kit[2:69]"  9 3 3 3 9 3 9 9 
		3 9 3 3 3 10 3 3 3 3 9 9 9 3 3 3 3 
		3 3 10 3 3 3 3 3 3 9 3 3 10 3 9 3 3 
		3 3 3 9 9 9 9 3 3 10 3 3 9 9 3 9 9 
		3 3 10 10 10 3 9 3 3;
	setAttr -s 70 ".kot[2:69]"  9 3 3 3 9 3 9 9 
		3 9 3 3 3 5 3 3 5 3 9 9 9 3 3 3 3 
		3 3 5 3 3 3 3 3 3 9 3 3 5 3 9 3 3 
		3 3 3 9 9 9 9 3 5 5 3 3 9 9 3 9 9 
		3 3 5 5 5 3 9 3 3;
createNode animCurveTA -n "Cube_Hip_rotateX";
	setAttr ".tan" 3;
	setAttr -s 75 ".ktv[0:74]"  0 -30.928973146662234 1 -8.809 10 -6.7817775177027633 
		21 -7.1912499014846372 31 -8.809 40 -8.809 45 -5.7787571697259601 50 -2.4302193946319375 
		54 -3.1355804548551509 61 -6.0285926967295236 68 -9.9846578614266335 82 -16.164714967485839 
		89 -14.915863433686081 95 -11.384311843271504 100 -8.4601333801151455 109 -8.809 
		120 -8.809 139 -18.013638433653927 150 -18.013638433653927 154 -16.860475375801073 
		159 -12.616894253314321 164 -7.7007838544940146 169 -4.2509420985343409 172 -2.7943167951801713 
		175 -4.2509420985343409 179 -18.014 190 -18.014 197 -11.470864068828583 200 -13.561709372420136 
		204 -17.332132939461772 207 -19.97644248161879 211 -15.793370162295247 215 -8.809 
		220 -8.809 225 -8.4215369234191186 229 33.820685147090607 232 46.868527637335028 
		234 33.820685147090607 237 -40.481992545091252 239 -63.806290516169661 242 -63.841040043063629 
		246 -50.50798839914362 250 -27.485754394151115 253 -8.809 300 -8.809 307 -8.809 312 
		-8.809 316 -6.2509645190634799 318 -6.2509645190634799 322 -36.63366602478245 328 
		13.178122841754504 330 6.0194726445154707 332 -4.2115794255823671 335 -14.396046139561994 
		339 -22.222623943717352 342 -26.462430020470098 354 -27.247571307009174 371 -8.809 
		400 -8.809 403 -8.4039890886351749 406 -10.091865428618753 410 -15.421705689285162 
		415 -14.842991406671196 419 -14.842991406671196 432 -14.842991406671196 436 -16.788268356287784 
		447 -8.809 459 -8.809 500 -8.809 542 -8.809 600 -8.809 605 -8.732264492361125 609 
		-9.8056397080273658 618 -9.5430096949592542 626 -8.809;
	setAttr -s 75 ".kit[3:74]"  9 3 3 9 3 9 9 9 
		3 9 9 3 10 3 3 3 9 9 9 9 3 9 3 3 9 
		9 9 3 9 10 3 3 9 3 9 9 3 9 9 9 3 10 
		3 3 3 3 3 3 9 9 9 9 9 3 10 3 3 9 3 
		3 3 3 3 3 10 10 10 3 3 3 9 3;
	setAttr -s 75 ".kot[0:74]"  5 3 3 9 3 3 9 3 
		9 9 9 3 9 9 3 5 3 5 3 9 9 9 9 3 9 
		3 3 9 9 9 3 9 5 3 3 9 3 9 9 3 9 9 
		9 3 5 3 3 3 3 3 3 9 9 9 9 9 5 5 3 
		3 9 3 3 3 3 3 3 5 5 5 3 3 3 9 3;
createNode animCurveTA -n "Cube_Hip_rotateY";
	setAttr ".tan" 3;
	setAttr -s 64 ".ktv[0:63]"  0 9.5931033777509089 1 -17.489555855740804 
		10 -11.507154764328714 21 -15.022138045758561 31 -17.489555855740804 40 -17.489555855740804 
		54 -17.41491192115225 68 -16.519107266300004 74 -15.560601057295226 78 -14.624967410130367 
		81 -13.632079989855121 89 -12.70057321341417 95 -13.982095920046829 100 -15.649661583414732 
		109 -17.489555855740804 120 -17.489555855740804 139 -21.098381105942593 150 -21.098381105942593 
		154 -5.8862121548298454 159 -3.0427175163908577 164 -7.0484371006148239 169 -25.857978913499654 
		172 -28.407073194369449 175 -25.857978913499654 179 -21.098 190 -21.098 207 -17.489555855740804 
		215 -17.489555855740804 220 -17.489555855740804 225 -4.1997156693102919 229 -6.4437445412751444 
		232 -6.4437445412751444 234 -6.4437445412751444 237 -6.4437445412751444 239 -6.4437445412751444 
		242 -6.4437445412751444 246 -6.4437445412751444 253 -17.489555855740804 300 -17.489555855740804 
		307 -17.489555855740804 312 -17.489555855740804 316 -23.638713386391927 318 -23.638713386391927 
		322 -23.638713386391927 328 -23.638713386391927 342 14.905905776875807 354 16.789919889662873 
		371 -17.489555855740804 400 -17.489555855740804 403 2.0140025191684074 406 24.653415501452688 
		410 20.074936850866596 415 -14.993373344807646 419 -14.993373344807646 432 -14.993373344807646 
		436 -12.763203611372472 447 -17.489555855740804 459 -17.489555855740804 500 -17.489555855740804 
		542 -17.489555855740804 600 -17.489555855740804 605 -18.329602407133589 618 -17.710598023712468 
		626 -17.489555855740804;
	setAttr -s 64 ".kit[3:63]"  9 3 3 3 9 9 9 9 
		3 9 9 10 3 3 3 9 3 9 9 3 9 3 3 3 10 
		3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 3 
		9 3 1 3 9 3 9 3 3 3 3 3 10 10 10 3 3 
		9 3;
	setAttr -s 64 ".kot[0:63]"  5 3 3 9 3 3 3 9 
		9 9 9 3 9 9 5 3 5 3 9 3 9 9 3 9 3 
		3 3 5 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 9 5 5 3 9 3 9 3 3 3 3 3 5 5 
		5 3 3 9 3;
	setAttr -s 64 ".kix[47:63]"  0.43333339691162109 0.96666622161865234 
		0.10000038146972656 0.10000038146972656 0.13333320617675781 0.16666603088378906 0.13333320617675781 
		0.43333339691162109 0.13333415985107422 0.36666584014892578 0.40000057220458984 1.3666658401489258 
		1.4000015258789062 1.9333324432373047 0.16666603088378906 0.4333343505859375 0.26666641235351563;
	setAttr -s 64 ".kiy[47:63]"  0 0 0.36776679754257202 0 -0.3075413703918457 
		0 0 0 0 0 0 0 0 0 0 0.0090762265026569366 0;
createNode animCurveTA -n "Cube_Hip_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 -2.0198827699945574 1 0 10 -0.60624942512561153 
		21 -0.28407262151454693 31 0 40 0 43 -11.852780272479229 45 -15.447806332873464 50 
		-16.946672470602195 54 -15.406291022876333 61 -10.998026693724045 68 -7.0623905658107757 
		74 -7.5338457987380174 81 -10.072140840308931 89 -12.728206911386922 95 -13.144480893725488 
		100 -5.2171681647705785 109 0 120 0 139 -3.3924318977177381 150 -3.3924318977177381 
		154 -8.288652290775941 159 6.4305486441844346 164 2.4248290599604698 169 -16.445069698541765 
		172 -18.99416397941156 175 -16.445069698541765 179 -3.392 190 -3.392 207 0 215 0 
		220 0 225 -2.0453254857166741 229 1.2978705086017646 232 1.2978705086017646 234 1.2978705086017646 
		237 1.2978705086017646 239 1.2978705086017646 242 1.2978705086017646 246 1.2978705086017646 
		253 0 300 0 307 0 312 0 316 -6.3773793108650461 318 -6.3773793108650461 322 -6.3773793108650461 
		328 -6.3773793108650461 330 42.435914511643745 332 42.435914511643745 333 42.435914511643745 
		335 42.435914511643745 342 61.623453017662563 354 63.574184270260666 371 0 400 0 
		403 -2.9639990780723489 406 -8.8019651478516501 410 -22.219357916798923 415 -12.529004504490597 
		419 -12.529004504490597 432 -12.529004504490597 436 -4.4332125700263489 447 0 459 
		0 500 0 542 0 600 0 605 -2.9663801088453261 618 -1.8112672881398939 626 0;
	setAttr -s 71 ".kit[3:70]"  9 3 1 1 9 3 9 9 
		3 9 9 9 3 9 10 3 3 3 3 3 9 9 3 9 3 
		3 3 10 3 3 3 3 3 3 3 3 3 3 10 3 3 3 
		3 3 3 3 3 3 3 9 3 10 3 9 9 3 3 3 3 
		9 3 10 10 10 3 3 9 3;
	setAttr -s 71 ".kot[3:70]"  9 3 1 1 9 3 9 9 
		3 9 9 9 3 9 5 3 5 3 3 3 9 9 3 9 3 
		3 3 5 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 9 5 5 3 9 9 3 3 3 3 
		9 3 5 5 5 3 3 9 3;
	setAttr -s 71 ".kix[5:70]"  0.30000007152557373 0.099999904632568359 
		0.066666722297668457 0.16666662693023682 0.13333332538604736 0.23333334922790527 
		0.23333334922790527 0.20000004768371582 0.23333334922790527 0.26666665077209473 0.20000004768371582 
		0.16666650772094727 0.30000019073486328 0.36666655540466309 0.63333320617675781 0.36666679382324219 
		0.13333320617675781 0.16666698455810547 0.16666650772094727 0.16666650772094727 0.099999904632568359 
		0.10000038146972656 0.13333320617675781 0.36666679382324219 0.56666660308837891 0.26666641235351563 
		0.16666698455810547 0.16666650772094727 0.13333320617675781 0.099999904632568359 
		0.066667079925537109 0.099999904632568359 0.066666603088378906 0.099999904632568359 
		0.13333320617675781 0.23333358764648438 1.5666666030883789 0.23333358764648438 0.16666603088378906 
		0.13333415985107422 0.066666603088378906 0.13333320617675781 0.19999980926513672 
		0.066666603088378906 0.066666603088378906 0.033333778381347656 0.066666603088378906 
		0.23333263397216797 0.40000057220458984 0.56666660308837891 0.96666622161865234 0.10000038146972656 
		0.10000038146972656 0.13333320617675781 0.16666603088378906 0.13333320617675781 0.43333339691162109 
		0.13333415985107422 0.36666584014892578 0.40000057220458984 1.3666658401489258 1.4000015258789062 
		1.9333324432373047 0.16666603088378906 0.4333343505859375 0.26666641235351563;
	setAttr -s 71 ".kiy[5:70]"  0 -0.20584304630756378 -0.025401502847671509 
		0 0.037753980606794357 0.072814270853996277 0 -0.0242446418851614 -0.042307399213314056 
		-0.030641395598649979 0 0.081933654844760895 0 0 0 0 0 0 -0.19962742924690247 -0.23364496231079102 
		0 0.11670423299074173 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.13592208921909332 
		0 0 0 -0.076811634004116058 -0.1440301388502121 0 0 0 0 0.058312997221946716 0 0 
		0 0 0 0 0.032050054520368576 0;
	setAttr -s 71 ".kox[5:70]"  0.099999904632568359 0.066666841506958008 
		0.16666662693023682 0.13333332538604736 0.23333334922790527 0.23333334922790527 0.20000004768371582 
		0.23333334922790527 0.26666665077209473 0.20000004768371582 0.16666650772094727 0.30000019073486328 
		0 0.63333320617675781 0 0.13333320617675781 0.16666698455810547 0.16666650772094727 
		0.16666650772094727 0.099999904632568359 0.10000038146972656 0.13333320617675781 
		0.36666679382324219 0.56666660308837891 0.26666641235351563 0 0.16666650772094727 
		0.13333320617675781 0.099999904632568359 0.066667079925537109 0.099999904632568359 
		0.066666603088378906 0.099999904632568359 0.13333320617675781 0.23333358764648438 
		1.5666666030883789 0 0.16666603088378906 0.13333415985107422 0.066666603088378906 
		0.13333320617675781 0.19999980926513672 0.066666603088378906 0.066666603088378906 
		0.033333778381347656 0.066666603088378906 0.23333263397216797 0.40000057220458984 
		0 0 0.10000038146972656 0.10000038146972656 0.13333320617675781 0.16666603088378906 
		0.13333320617675781 0.43333339691162109 0.13333415985107422 0.36666584014892578 0.40000057220458984 
		0 0 0 0.16666603088378906 0.4333343505859375 0.26666641235351563 0.26666641235351563;
	setAttr -s 71 ".koy[5:70]"  0 -0.13722892105579376 -0.0635036900639534 
		0 0.066069476306438446 0.072814270853996277 0 -0.02828541025519371 -0.048351306468248367 
		-0.022981053218245506 0 0.14748081564903259 0 0 0 0 0 0 -0.19962742924690247 -0.14018698036670685 
		0 0.15560489892959595 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.23301032185554504 
		0 0 0 -0.076811634004116058 -0.19203926622867584 0 0 0 0 0.16035938262939453 0 0 
		0 0 0 0 0.019723044708371162 0;
createNode animCurveTA -n "Cube_Root_rotateY";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 -9.9908461583696173 1 -4.1831419374904204 
		10 -4.1831419374904204 21 -4.1831419374904204 31 -4.1831419374904204 40 -4.1831419374904204 
		45 -3.8486447344108448 50 -3.8486447344108448 54 -3.8486447344108448 61 -3.8486447344108448 
		68 1.1877656880694021 74 1.1877656880694021 78 1.1877656880694021 81 1.1877656880694021 
		89 1.1877656880694021 95 1.1877656880694021 100 -1.4349670337647638 109 -4.1831419374904204 
		120 -4.1831419374904204 139 0 150 0 154 0 159 0 164 0 169 0 172 0 175 0 179 0 190 
		0 207 -4.1831419374904204 215 -4.1831419374904204 220 -4.1831419374904204 225 -4.1831419374904204 
		229 -4.1831419374904204 232 -4.1831419374904204 235 -4.1831419374904204 239 -4.1831419374904204 
		242 -4.1831419374904204 246 -4.1831419374904204 251 -4.1831419374904204 259 -4.1831419374904204 
		300 -4.1831419374904204 307 -4.1831419374904204 312 -2.9763988951246336 316 -2.6114702834569306 
		318 -2.6114702834569306 322 -2.6114702834569306 328 -2.4636866459205833 330 -4.9967250986600478 
		332 8.4535008742352886 333 8.4535008742352886 335 8.4535008742352886 360 8.4535008742352886 
		371 -4.1831419374904204 400 -4.1831419374904204 404 -4.0312536003120449 408 -3.7728425271769117 
		412 -3.4693711527981712 417 -3.3551015840191352 421 -3.3551015840191352 429 -3.4693711527981712 
		436 -3.8973951028531113 447 -4.1831419374904204 459 -4.1831419374904204 500 -4.1831419374904204 
		505 -3.59526730321114 542 -4.1831419374904204 600 -4.1831419374904204 607 -3.8422476034395885 
		619 -4.4550199206473557 626 -4.1831419374904204;
	setAttr -s 71 ".kit[2:70]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 9 3 3 3 3 3 3 3 3 3 3 
		3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 3 9 
		3 3 3 3 3 3 3 3 3 10 3 9 9 9 3 3 9 
		9 3 10 10 10 10 3 3 3 3;
	setAttr -s 71 ".kot[0:70]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 9 5 3 5 3 3 3 3 3 
		3 3 3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 
		3 9 3 3 3 3 3 3 3 5 3 5 3 9 9 9 3 
		3 9 9 3 5 5 5 5 3 3 3 3;
createNode animCurveTA -n "Cube_Root_rotateX";
	setAttr ".tan" 3;
	setAttr -s 74 ".ktv[0:73]"  0 0 1 -1.692 10 -1.692 21 -1.692 27 -1.692 
		31 -1.692 40 -1.692 45 -2.3564252874570091 50 -2.3564252874570091 54 -2.3564252874570091 
		61 -2.3564252874570091 68 -2.3516137558797179 74 -2.3516137558797179 78 -2.3516137558797179 
		81 -2.3516137558797179 89 -2.3516137558797179 95 -2.3516137558797179 100 -2.2750187725122939 
		109 -1.692 120 -1.692 131 2.9227275333236991 139 0 150 0 154 0 159 0 164 0 169 0 
		172 0 175 0 179 0 190 0 207 -1.692 215 -1.692 220 -1.692 225 0.20506672875357165 
		229 -13.140722075295715 232 -18.486571171345954 235 -2.3141385998320718 239 13.859488073654969 
		242 25.06319415726416 246 6.7482765628791235 251 0.23681647355316254 259 -1.692 300 
		-1.692 307 -1.692 312 -7.7265915960134741 316 -9.1499827966693879 318 -9.1499827966693879 
		322 -15.47616591069567 328 -42.495881085469478 330 -33.109379513824479 332 -22.572486205209753 
		333 -22.572486205209753 335 -22.572486205209753 360 -22.572486205209753 371 -1.692 
		400 -1.692 404 -1.9164549363991907 408 -2.2838977293930927 412 -2.8591479777337487 
		417 -3.0183045201519882 421 -3.0183045201519882 430 -2.8591479777337487 436 -2.5294576248490537 
		447 -1.692 459 -1.692 500 -1.692 505 -2.727686559353347 511 0.85270710659558946 542 
		-1.692 600 -1.692 607 -2.0212370064036844 619 -1.2805695247248443 626 -1.692;
	setAttr -s 74 ".kit[2:73]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 9 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 10 3 3 9 3 9 9 3 9 9 3 3 
		3 9 3 3 9 3 9 3 3 3 3 10 3 9 9 9 3 
		3 9 9 3 10 10 10 10 10 3 3 3 3;
	setAttr -s 74 ".kot[0:73]"  5 5 5 5 5 5 3 3 
		3 3 3 3 3 3 3 3 3 9 5 3 3 5 3 3 3 
		3 3 3 3 3 3 3 5 3 3 9 3 9 9 3 9 9 
		3 3 3 9 3 3 9 3 9 3 3 5 3 5 3 9 9 
		9 3 3 9 9 3 5 5 5 5 5 3 3 3 3;
createNode animCurveTA -n "Cube_Root_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 -5.6582165616072331 10 -5.6582165616072331 
		21 -5.6582165616072331 31 -5.6582165616072331 40 -5.6582165616072331 45 3.808 50 
		3.808 54 3.808 61 3.808 68 3.808 74 3.808 78 3.808 81 3.808 89 3.808 95 3.808 100 
		0.49616411461045773 109 -5.6582165616072331 120 -5.6582165616072331 139 0 150 0 154 
		0 159 -5.9497153962683162 164 -3.2287465870762735 169 2.5580373691550999 172 3.7122057519338365 
		175 2.5580373691550999 179 0 190 0 207 -5.6582165616072331 215 -5.6582165616072331 
		220 -5.6582165616072331 225 -5.6582165616072331 229 -5.6582165616072331 232 -5.6582165616072331 
		235 -5.6582165616072331 239 -5.6582165616072331 242 -5.6582165616072331 246 -5.6582165616072331 
		251 -5.6582165616072331 259 -5.6582165616072331 300 -5.6582165616072331 307 -3.6821801680217612 
		312 2.7330548939932999 316 4.4268003742094084 318 4.4268003742094084 322 -1.7835997199163474 
		328 -8.9973466381767846 330 -58.760670792279377 332 -68.404255275083571 333 -68.404255275083571 
		335 -68.404255275083571 360 -68.404255275083571 371 -5.6582165616072331 400 -5.6582165616072331 
		404 -0.97146689213228821 408 5.8266920519433505 412 11.677346599720725 417 14.313630398448016 
		421 14.313630398448016 430 10.838529027398407 436 2.5992539269516226 447 -5.6582165616072331 
		459 -5.6582165616072331 500 -5.6582165616072331 505 9.5220332433185852 542 -5.6582165616072331 
		600 -5.6582165616072331 607 -5.2678936906066225 619 -6.2303085231269986 626 -5.6582165616072331;
	setAttr -s 71 ".kit[2:70]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 9 3 3 3 3 3 3 9 9 3 9 
		3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 9 9 
		3 3 9 3 9 3 3 3 3 10 3 9 9 9 3 3 9 
		9 3 10 10 10 10 3 3 3 3;
	setAttr -s 71 ".kot[0:70]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 9 5 3 5 3 3 3 9 9 
		3 9 3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 
		9 9 3 3 9 3 9 3 3 5 3 5 3 9 9 9 3 
		3 9 9 3 5 5 5 5 3 3 3 3;
createNode animCurveTL -n "Cube_Root_translateX";
	setAttr ".tan" 3;
	setAttr -s 68 ".ktv[0:67]"  0 0 1 0 10 -0.00030789667302368127 21 -0.0021112914721623873 
		31 0 40 0 45 0 50 0 54 0 61 0 68 0 74 0.048187420124281177 78 0.064478836888769056 
		89 0.070394326511591901 100 0.055901376935675942 109 0 120 0 139 0 150 0 154 -0.016433821033615389 
		159 -0.10689386293937216 164 -0.094457457832852448 169 -0.0150013291545819 172 -0.0021207667228293004 
		175 -0.0016766093975964383 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 
		239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 
		0 333 0 335 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 607 -0.018048817436767117 619 0.034180967178319407 626 0;
	setAttr -s 68 ".kit[2:67]"  9 3 3 3 3 3 3 3 
		3 9 9 3 9 3 3 3 3 9 3 9 9 3 9 3 3 
		3 10 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 3 3 3 3 3 3 3 3 
		10 10 10 3 3 3 3;
	setAttr -s 68 ".kot[2:67]"  9 3 3 3 3 3 3 3 
		3 9 9 3 9 5 3 5 3 9 3 9 9 3 9 3 3 
		3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 5 3 5 3 3 3 3 3 3 3 3 3 
		5 5 5 3 3 3 3;
createNode animCurveTL -n "Cube_Root_translateY";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 -0.35016038711608588 10 -0.34223216091950293 
		21 -0.34468409210953865 31 -0.35016038711608588 40 -0.35016038711608588 45 -0.35739710351904785 
		50 -0.39487079748755155 54 -0.40934423029347528 61 -0.42019930489791812 68 -0.45969596192400547 
		74 -0.3955283132058855 78 -0.28879157928449262 81 -0.25984471367264494 89 -0.28879157928449262 
		95 -0.42806456363832046 100 -0.4588935625919015 109 -0.35016038711608588 120 -0.35016038711608588 
		139 -0.28924066015611821 150 -0.28924066015611821 154 -0.28924066015611821 159 -0.35072090288881291 
		164 -0.35072090288881291 169 -0.35072090288881291 172 -0.35072090288881291 175 -0.35072090288881291 
		179 -0.289 190 -0.289 197 -0.42414428988446462 207 -0.19296023049915023 215 -0.35016038711608588 
		220 -0.35016038711608588 225 -0.42797795472574118 229 -0.42143529084539982 232 -0.38652495464569386 
		239 -0.20769214191636429 242 -0.076128030494051938 246 -0.12157760779910573 251 -0.22189845396433935 
		259 -0.35016038711608588 300 -0.35016038711608588 307 -0.35016038711608588 312 -0.39415825276052974 
		316 -0.52823374718996896 319 -0.35152259384580115 321 0.050307731012815132 324 0.12395114186552823 
		327 -0.32052120248705218 332 -0.32052120248705218 333 -0.32052120248705218 335 -0.32052120248705218 
		360 -0.32052120248705218 371 -0.35016038711608588 400 -0.35016038711608588 404 -0.35016038711608588 
		408 -0.35016038711608588 412 -0.35016038711608588 417 -0.35016038711608588 421 -0.35016038711608588 
		432 -0.35016038711608588 436 -0.35016038711608588 447 -0.35016038711608588 459 -0.35016038711608588 
		500 -0.35016038711608588 505 -0.16851466791973166 514 -0.26657511774360276 542 -0.35016038711608588 
		600 -0.35016038711608588 614 -0.29927368442935598 626 -0.35016038711608588;
	setAttr -s 71 ".kit[3:70]"  9 3 3 9 9 9 9 3 
		9 9 3 9 9 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 10 3 3 9 9 9 3 9 9 3 3 3 9 3 
		9 9 3 3 3 3 3 3 10 3 3 3 3 3 3 3 3 
		3 10 10 10 10 10 3 3 3;
	setAttr -s 71 ".kot[0:70]"  5 3 3 9 3 3 9 9 
		9 9 3 9 9 3 9 9 3 5 3 5 3 3 3 3 3 
		3 3 3 3 3 3 5 3 3 9 9 9 3 9 9 3 3 
		3 9 3 9 9 3 3 3 3 5 3 5 3 3 3 3 3 
		3 3 3 3 5 5 5 5 5 3 3 3;
createNode animCurveTL -n "Cube_Root_translateZ";
	setAttr ".tan" 3;
	setAttr -s 67 ".ktv[0:66]"  0 0 1 0 10 0 21 0 31 0 40 0 45 0.03401609594385125 
		50 0.092304256648064256 54 0.11843594582759616 61 0.13197635333184787 68 0.10357571246436716 
		74 0.058656206364971153 78 0.020792964032549755 81 0 89 0 95 0 100 0 109 0 120 0 
		124 -0.21192983576976981 139 0 150 0 154 0 159 0 164 0 169 0 172 0 175 0 179 0 190 
		0 207 0 215 0 220 0 225 -0.052574509073247344 229 -0.13950389075500921 232 -0.17439809811682958 
		235 -0.17439809811682958 239 -0.13950389075500921 242 0 246 0 251 0 259 0 300 0 307 
		0 312 -0.1464775151117331 318 -0.19298914301871001 322 -0.19298914301871001 330 -0.080586042243516023 
		332 0.20934676852616824 333 0.20934676852616824 335 0.20934676852616824 360 0.20934676852616824 
		371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 
		0 626 0;
	setAttr -s 67 ".kit[2:66]"  10 10 10 3 9 9 9 3 
		9 9 9 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 10 3 9 9 3 3 9 3 3 3 3 3 3 
		9 3 3 9 3 3 3 3 10 3 3 3 3 3 3 3 3 
		3 10 10 10 3 3;
	setAttr -s 67 ".kot[0:66]"  5 5 5 5 5 3 9 9 
		9 3 9 9 9 3 3 3 3 5 3 3 5 3 3 3 3 
		3 3 3 3 3 3 5 3 9 9 3 3 9 3 3 3 3 
		3 3 9 3 3 9 3 3 5 3 5 3 3 3 3 3 3 
		3 3 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_Waist_rotateY";
	setAttr ".tan" 3;
	setAttr -s 72 ".ktv[0:71]"  0 7.048960159738388 1 10.707472893059494 
		10 10.921604339153319 31 10.707472893059494 40 10.707472893059494 45 9.2258905373387528 
		50 4.9318203054344796 54 4.1910291275741134 61 4.1910291275741134 68 4.1910291275741134 
		74 4.1910291275741134 78 4.1910291275741134 81 4.1910291275741134 89 4.1910291275741134 
		95 2.7094467718533704 100 -3.0151988184472485 109 10.707472893059494 120 10.707472893059494 
		139 9.4345397222343319 150 9.4345397222343319 154 14.776101227763213 159 12.295565836284373 
		164 9.7911613802050272 169 6.8849888546471751 172 5.3438168816752647 175 3.7070844734934529 
		179 9.4345397222343319 190 9.4345397222343319 207 10.707472893059494 215 10.707472893059494 
		220 10.707472893059494 225 10.83881984159976 229 10.83881984159976 232 10.83881984159976 
		235 10.83881984159976 239 10.83881984159976 242 10.83881984159976 246 12.06544719957486 
		251 12.06544719957486 259 10.707472893059494 300 10.707472893059494 307 10.707472893059494 
		312 10.707472893059494 316 6.0857547892188233 318 2.2179914571023494 322 -9.0629849282373449 
		328 -16.391645193760731 330 -32.444348807157688 332 -19.451388573129499 333 18.985723103293154 
		335 18.985723103293154 344 18.985723103293154 348 18.985723103293154 360 18.985723103293154 
		371 10.707472893059494 400 10.707472893059494 404 10.707472893059494 408 10.707472893059494 
		412 9.6522378266198725 417 2.264319536230242 421 -2.2666635923764678 432 -4.482657231899684 
		436 -2.2666635923764678 447 14.687446475086888 459 10.707472893059494 500 10.707472893059494 
		505 4.4504376180303877 542 10.707472893059494 600 10.707472893059494 607 9.2111497765966153 
		614 8.8244821260930735 626 10.707472893059494;
	setAttr -s 72 ".kit[5:71]"  9 9 3 3 3 3 3 3 
		3 9 3 10 3 3 3 3 9 9 9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 9 9 9 9 
		3 9 3 3 3 3 10 10 3 3 3 9 9 9 3 9 3 
		10 10 10 10 3 9 3 3;
	setAttr -s 72 ".kot[5:71]"  9 9 3 3 3 3 3 3 
		3 9 3 5 3 5 3 3 9 9 9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 9 9 9 9 
		3 9 3 3 3 3 5 5 3 3 3 9 9 9 3 9 3 
		5 5 5 5 3 9 3 3;
createNode animCurveTA -n "Cube_Waist_rotateX";
	setAttr ".tan" 3;
	setAttr -s 76 ".ktv[0:75]"  0 0 1 -40.450164772422703 10 -41.525448961136405 
		21 -38.879528129216681 31 -40.450164772422703 40 -40.450164772422703 45 -40.450164772422703 
		50 -40.283371618880636 54 -38.554858870539761 61 -32.383287318922719 68 -31.111241391276138 
		74 -31.111241391276138 78 -32.383287318922719 81 -33.913335525820216 89 -39.330895412625921 
		95 -41.337820128930666 100 -41.022144610479195 109 -40.450164772422703 120 -40.450164772422703 
		124 -22.546957082272293 131 -10.011553347233637 139 -9.7374183234596945 150 -9.7374183234596945 
		154 -9.0802761765623661 159 -6.873412224807085 164 -7.3627118980325132 169 -8.5252274192356428 
		175 -9.7319515738511679 179 -9.7374183234596945 190 -9.7374183234596945 207 -45.409276737668733 
		215 -40.450164772422703 220 -40.450164772422703 225 -52.292986587218955 229 -60.671125900450193 
		232 -44.992372529689334 235 -51.851274652859651 239 -60.320211228576753 242 -56.57345697867131 
		246 -29.251542659421471 251 -30.954612773014855 259 -40.450164772422703 300 -40.450164772422703 
		307 -40.450164772422703 312 -58.872314814520024 316 -58.010362516752046 318 -58.010362516752046 
		322 -52.531031129587042 328 -35.846240624298169 330 -41.737605486731709 332 -23.904698103221865 
		333 -22.674407069089082 335 -22.674407069089082 344 -22.674407069089082 348 -22.674407069089082 
		360 -22.674407069089082 371 -40.450164772422703 400 -40.450164772422703 404 -49.187511399711028 
		408 -46.093369902675306 412 -28.841451209548929 417 -23.46910980411846 421 -22.629463550154632 
		432 -25.568897972338561 436 -29.842936133458441 447 -38.14529650781963 459 -40.450164772422703 
		500 -40.450164772422703 505 -49.155807103501871 508 -27.200564730587821 511 -3.6776726999574305 
		542 -40.450164772422703 600 -40.450164772422703 607 -39.302403750073488 614 -39.478341191549504 
		626 -40.450164772422703;
	setAttr -s 76 ".kit[8:75]"  9 9 3 3 9 9 9 3 
		9 3 3 9 3 3 3 9 3 9 9 9 3 3 3 3 3 
		9 3 3 9 3 9 3 9 3 3 3 3 3 3 9 3 3 
		3 3 3 3 3 10 10 3 3 9 9 9 3 9 9 9 10 
		10 10 10 10 10 3 3 9 3;
	setAttr -s 76 ".kot[8:75]"  9 9 3 3 9 9 9 3 
		9 3 3 9 3 5 3 9 3 9 9 9 3 3 3 3 3 
		9 3 3 9 3 9 3 9 3 3 3 3 3 3 9 3 3 
		3 3 3 3 3 5 5 3 3 9 9 9 3 9 9 9 5 
		5 5 5 5 5 3 3 9 3;
createNode animCurveTA -n "Cube_Waist_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  0 0 1 -4.4927411745131245 31 -4.4927411745131245 
		40 -4.4927411745131245 45 -4.4927411745131245 50 -4.6284741262098201 54 -4.6284741262098201 
		61 -4.6284741262098201 68 -4.6284741262098201 74 -4.6284741262098201 78 -4.6284741262098201 
		81 -4.6284741262098201 89 -4.6284741262098201 95 -3.3938221631091987 100 2.0504433806083284 
		109 -4.4927411745131245 120 -4.4927411745131245 139 -4.3756697077147404 150 -4.3756697077147404 
		154 -0.32714570818355387 159 16.841513002988737 164 15.756114448853028 169 9.6452193520856593 
		179 -4.3756697077147404 190 -4.3756697077147404 207 -4.4927411745131245 215 -4.4927411745131245 
		220 -4.4927411745131245 225 -3.2363902042176815 229 -3.2363902042176815 232 -3.2363902042176815 
		235 -3.2363902042176815 239 -3.2363902042176815 242 -3.2363902042176815 246 8.4964630406412365 
		251 8.4964630406412365 259 -4.4927411745131245 300 -4.4927411745131245 307 -4.4927411745131245 
		312 -5.1373683965325263 316 -6.8202917039998354 318 -6.8202917039998354 322 -4.2417828159221953 
		328 6.5483906613082192 330 20.601681985884984 332 -8.9199270760833542 333 -25.037950055969379 
		335 -27.616458944047018 344 -27.616458944047018 348 -27.616458944047018 360 -27.616458944047018 
		371 -4.4927411745131245 400 -4.4927411745131245 404 -4.4927411745131245 408 -4.4927411745131245 
		412 -3.9231460779569893 417 -0.77080511352037329 421 -10.78618556129908 432 -13.420562882871208 
		436 -12.637369625106523 447 -8.0171698373984501 459 -4.4927411745131245 500 -4.4927411745131245 
		505 -11.758475516882733 542 -4.4927411745131245 600 -4.4927411745131245 607 -1.409552719320412 
		614 -1.8412223709205291 626 -4.4927411745131245;
	setAttr -s 69 ".kit[13:68]"  9 3 10 3 3 3 9 3 
		9 9 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 9 9 3 9 9 3 3 9 3 3 3 10 10 3 3 3 
		9 3 9 3 9 9 10 10 10 10 3 3 9 3;
	setAttr -s 69 ".kot[13:68]"  9 3 5 3 5 3 9 3 
		9 9 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 9 9 3 9 9 3 3 9 3 3 3 5 5 3 3 3 
		9 3 9 3 9 9 5 5 5 5 3 3 9 3;
createNode animCurveTA -n "Cube_Chest_rotateX";
	setAttr ".tan" 3;
	setAttr -s 73 ".ktv[0:72]"  0 0 1 -32.220985908869544 10 -31.633384016040544 
		21 -31.812517497489605 31 -32.220985908869544 40 -32.220985908869544 45 -32.220985908869544 
		50 -32.220985908869544 54 -34.443359442450657 61 -47.059166582750635 68 -46.071445012270139 
		74 -42.546783919711409 78 -38.441731521230295 81 -35.241739257547188 89 -35.886253882454085 
		95 -41.833541774892751 100 -43.366546648742784 109 -32.220985908869544 120 -32.220985908869544 
		124 -41.391522658890374 131 -23.171755068326593 139 -32.220985908869544 150 -32.220985908869544 
		154 -31.529917673838149 159 -27.680949791959804 164 -25.089443910592067 169 -28.84479174802528 
		179 -32.220985908869544 190 -32.220985908869544 197 -38.50258903309409 207 -32.220985908869544 
		215 -32.220985908869544 220 -32.220985908869544 225 -50.439098692633941 229 -34.011626567345679 
		232 -18.285174278360849 235 -22.495008091224033 239 -47.914494521673539 242 -79.118608615026218 
		246 -66.621195091765628 251 -50.278643130210149 259 -32.220985908869544 300 -32.220985908869544 
		307 -47.122226711829299 312 -54.646785802928257 317 -39.649776816557434 321 -4.573809567040815 
		328 -5.7455381225653701 330 -6.942174483584906 332 -6.942174483584906 333 -6.942174483584906 
		335 -6.942174483584906 344 -6.942174483584906 348 -6.942174483584906 360 -6.942174483584906 
		371 -32.220985908869544 400 -32.220985908869544 404 -21.849966725519256 408 -31.475225430125601 
		412 -34.262026805283064 417 -34.262026805283064 421 -34.412417346359668 432 -35.069291611077958 
		436 -35.069291611077958 447 -32.220985908869544 459 -32.220985908869544 500 -32.220985908869544 
		505 -32.520772409173595 514 -2.2569711125950183 542 -32.220985908869544 600 -32.220985908869544 
		619 -32.787334623326551 626 -32.220985908869544;
	setAttr -s 73 ".kit[3:72]"  9 3 3 3 3 9 3 9 
		9 9 3 9 9 3 10 3 3 3 3 3 9 9 9 9 3 
		3 3 3 3 3 3 9 3 9 9 3 9 9 3 3 9 3 
		9 3 9 3 3 3 3 3 3 10 10 3 3 9 3 3 9 
		3 3 3 10 10 10 10 10 3 3 3;
	setAttr -s 73 ".kot[3:72]"  9 3 3 3 3 9 3 9 
		9 9 3 9 9 3 5 3 3 3 5 3 9 9 9 9 3 
		3 3 3 3 3 3 9 3 9 9 3 9 9 3 3 9 3 
		9 3 9 3 3 3 3 3 3 5 5 3 3 9 3 3 9 
		3 3 3 5 5 5 5 5 3 3 3;
createNode animCurveTA -n "Cube_Chest_rotateY";
	setAttr ".tan" 3;
	setAttr -s 68 ".ktv[0:67]"  0 0 1 3.0112000944582857 31 3.0112000944582857 
		40 3.0112000944582857 45 3.0112000944582857 50 3.0112000944582857 54 3.0112000944582857 
		61 3.0112000944582857 68 4.2458520575589027 74 9.5952217151557626 78 16.006139247681279 
		81 16.006139247681279 89 16.006139247681279 95 16.006139247681279 100 14.524556891960531 
		109 3.0112000944582857 120 3.0112000944582857 139 3.0112000944582857 150 3.0112000944582857 
		154 -0.26800339439004639 159 -13.890293321232488 164 -12.691585744292604 169 -9.0147260901607371 
		179 3.0112000944582857 190 3.0112000944582857 207 3.0112000944582857 215 3.0112000944582857 
		220 3.0112000944582857 225 3.0112000944582857 229 3.0112000944582857 232 3.0112000944582857 
		235 3.0112000944582857 239 3.0112000944582857 242 3.0112000944582857 246 9.523983686523863 
		251 8.120705748902795 259 3.0112000944582857 300 3.0112000944582857 307 3.0112000944582857 
		312 3.0112000944582857 316 3.0112000944582857 318 3.0112000944582857 322 0.57536831697865232 
		328 -9.3578357600513673 332 -23.258898740129052 333 -23.258898740129052 335 -23.258898740129052 
		344 -23.258898740129052 348 -23.258898740129052 360 -23.258898740129052 371 3.0112000944582857 
		400 3.0112000944582857 404 3.0112000944582857 408 3.0112000944582857 412 7.5141626714008201 
		417 8.7197613476074025 421 8.5651974147604069 430 7.8509224891796681 436 6.4598470935566921 
		447 3.0112000944582857 459 3.0112000944582857 500 3.0112000944582857 505 7.9411288810463656 
		514 -6.5557000768771241 542 3.0112000944582857 600 3.0112000944582857 619 0.60730925717459538 
		626 3.0112000944582857;
	setAttr -s 68 ".kit[8:67]"  9 9 3 3 3 3 9 10 
		3 3 3 9 3 9 9 3 3 3 3 3 3 3 3 3 3 
		3 3 9 3 3 3 3 3 3 9 9 3 3 3 3 3 10 
		10 3 3 3 9 3 9 9 9 3 10 10 10 10 10 3 3 
		3;
	setAttr -s 68 ".kot[8:67]"  9 9 3 3 3 3 9 5 
		3 5 3 9 3 9 9 3 3 3 3 3 3 3 3 3 3 
		3 3 9 3 3 3 3 3 3 9 9 3 3 3 3 3 5 
		5 3 3 3 9 3 9 9 9 3 5 5 5 5 5 3 3 
		3;
createNode animCurveTA -n "Cube_Chest_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 68 ".ktv[0:67]"  0 0 1 -1.8962284192950536 31 -1.8962284192950536 
		40 -1.8962284192950536 45 -1.8962284192950536 50 -1.8962284192950536 54 -1.8962284192950536 
		61 -1.8962284192950536 68 -0.66157645619443595 74 3.3369863998750362 78 7.8890105765346847 
		81 7.8890105765346847 89 7.8890105765346847 95 7.8890105765346847 100 6.4074282208139417 
		109 -1.8962284192950536 120 -1.8962284192950536 139 -1.8962284192950536 150 -1.8962284192950536 
		154 -2.9735924255534316 159 -7.6745245730750842 164 -6.9140323333632878 169 -4.2235751862541946 
		179 -1.8962284192950536 190 -1.8962284192950536 207 -1.8962284192950536 215 -1.8962284192950536 
		220 -1.8962284192950536 225 -1.8962284192950536 229 -1.8962284192950536 232 -1.8962284192950536 
		235 -1.8962284192950536 239 -1.8962284192950536 242 -1.8962284192950536 246 -10.666490794309977 
		251 -9.6140323410941928 259 -1.8962284192950536 300 -1.8962284192950536 307 -1.8962284192950536 
		312 -1.8962284192950536 316 -1.8962284192950536 325 -1.7027904804946286 328 -1.0963897939619474 
		330 0.78985780794394012 332 1.1932877725377939 333 1.1932877725377939 335 1.1932877725377939 
		344 1.1932877725377939 348 1.1932877725377939 360 1.1932877725377939 371 -1.8962284192950536 
		400 -1.8962284192950536 404 -1.8962284192950536 408 -1.8962284192950536 412 -11.55266688110664 
		417 -13.705214777246827 421 -11.55266688110664 432 -2.9874707378066407 436 -1.0290993888657542 
		447 -1.8962284192950536 459 -1.8962284192950536 500 -1.8962284192950536 505 -5.0339184141846491 
		514 -4.4631767237253941 542 -1.8962284192950536 600 -1.8962284192950536 619 -0.86396049588765989 
		626 -1.8962284192950536;
	setAttr -s 68 ".kit[8:67]"  9 9 3 3 3 3 9 10 
		3 3 3 9 3 9 9 3 3 3 3 3 3 3 3 3 3 
		3 3 9 3 3 3 3 3 9 9 9 3 3 3 3 3 10 
		10 3 3 3 9 3 9 9 9 3 10 10 10 10 10 3 3 
		3;
	setAttr -s 68 ".kot[8:67]"  9 9 3 3 3 3 9 5 
		3 5 3 9 3 9 9 3 3 3 3 3 3 3 3 3 3 
		3 3 9 3 3 3 3 3 9 9 9 3 3 3 3 3 5 
		5 3 3 3 9 3 9 9 9 3 5 5 5 5 5 3 3 
		3;
createNode animCurveTA -n "Cube_Chest2_rotateY";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  0 15.17749628388512 1 -14.937755099576336 
		10 -13.482002832365543 21 -14.344139006945193 31 -14.937755099576336 40 -14.937755099576336 
		45 -2.6952626124419941 50 -0.9667498641011345 54 -0.9667498641011345 61 -0.9667498641011345 
		68 1.00869327685986 74 8.953488421377914 89 6.6303913277314148 95 0.18268056639060312 
		100 -7.5039319423968216 109 -14.937755099576336 120 -14.937755099576336 139 -12.599 
		150 -12.599 154 -10.552970480552062 159 1.5429202115459191 164 5.1080721636186714 
		169 2.7625210601544157 179 -12.598549806006089 190 -12.598549806006089 207 -14.937755099576336 
		215 -14.937755099576336 220 -14.937755099576336 225 -14.937755099576336 229 -14.937755099576336 
		232 -14.937755099576336 235 -14.937755099576336 239 -14.937755099576336 242 -14.937755099576336 
		246 -4.1328110855405376 251 -5.3121051410069304 259 -14.937755099576336 300 -14.937755099576336 
		307 -14.937755099576336 312 4.6768495229763474 316 3.5914124674819874 318 3.5914124674819874 
		322 3.5914124674819874 328 -21.468639846454966 330 -21.468639846454966 332 -30.723344831579336 
		333 -27.665366942603267 335 -14.243117698322688 344 -14.243117698322688 348 -14.243117698322688 
		360 -14.243117698322688 371 -14.937755099576336 400 -14.937755099576336 404 -11.416144378170117 
		408 8.6335873613756622 412 20.306869139634173 417 8.7862402740594749 422 -3.0057806129805096 
		432 -14.951837243215612 436 -16.774957549170811 447 -16.495191820506143 459 -14.937755099576336 
		500 -14.937755099576336 505 1.3710437351122504 542 -14.937755099576336 600 -14.937755099576336 
		607 -11.779117590355437 614 -12.511102278289831 620 -13.970506695458667 626 -14.937755099576336;
	setAttr -s 70 ".kit[3:69]"  9 3 3 9 3 3 3 9 
		3 9 9 9 10 3 3 3 9 9 9 9 3 3 3 10 3 
		3 3 3 3 3 3 3 9 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 10 10 3 9 9 3 9 9 9 3 9 10 
		10 10 10 3 3 9 9 3;
	setAttr -s 70 ".kot[3:69]"  9 3 3 9 3 3 3 9 
		3 9 9 9 5 3 5 3 9 9 9 9 3 3 3 5 3 
		3 3 3 3 3 3 3 9 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 5 5 3 9 9 3 9 9 9 3 9 5 
		5 5 5 3 3 9 9 3;
createNode animCurveTU -n "Cube_Chest2_visibility";
	setAttr ".tan" 3;
	setAttr -s 68 ".ktv[0:67]"  0 1 1 1 10 1 21 1 31 1 40 1 45 1 50 1 54 
		1 61 1 68 1 74 1 78 1 81 1 89 1 95 1 100 1 109 1 120 1 139 1 150 1 154 1 159 1 164 
		1 169 1 179 1 190 1 207 1 215 1 220 1 225 1 229 1 232 1 235 1 239 1 242 1 246 1 251 
		1 259 1 300 1 307 1 312 1 316 1 318 1 322 1 328 1 330 1 332 1 333 1 335 1 344 1 348 
		1 360 1 371 1 400 1 404 1 408 1 412 1 417 1 421 1 432 1 436 1 447 1 459 1 500 1 542 
		1 600 1 626 1;
	setAttr -s 68 ".kit[17:67]"  9 3 3 3 3 3 3 3 
		3 3 3 9 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 9 9 3 3 3 3 3 
		3 3 3 3 9 9 9 3 3;
	setAttr -s 68 ".kot[17:67]"  5 3 5 3 3 3 3 3 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 5 5 3 3 3 3 3 
		3 3 3 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_Chest3_rotateY";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 -9.5963038113901558 1 -11.957158930869619 
		22 -11.87026857204487 31 -11.957158930869619 40 -11.957158930869619 45 -12.944880501350111 
		50 -17.851194508506051 54 -19.085846471606686 61 -17.851194508506051 68 -9.102739524586152 
		74 -5.828046564510915 78 -6.3219073497511626 81 -7.0378520842580139 89 -7.2847824768781395 
		95 -7.2847824768781395 100 -9.2602256178391258 109 -11.957158930869619 120 -11.957158930869619 
		139 -11.701454481443717 150 -11.701454481443717 154 -7.7073405501977037 159 -3.1896277793638141 
		164 -4.117431264349567 179 -11.701454481443717 190 -11.701454481443717 207 -11.957158930869619 
		215 -11.957158930869619 220 -11.957158930869619 225 -11.957158930869619 229 -11.957158930869619 
		232 -11.957158930869619 235 -11.957158930869619 239 -11.957158930869619 242 -11.957158930869619 
		246 -11.957158930869619 251 -11.957158930869619 259 -11.957158930869619 300 -11.957158930869619 
		307 -11.957158930869619 312 -11.957158930869619 316 -11.957158930869619 318 -11.957158930869619 
		322 -10.261619769390631 328 -3.5741940391992424 330 -11.345415195977962 332 -38.426943469600779 
		333 -36.16622458762879 335 -19.670759700800101 344 -19.670759700800101 348 -19.670759700800101 
		360 -19.670759700800101 371 -11.957158930869619 400 -11.957158930869619 404 -11.957158930869619 
		408 11.413379814878967 412 12.352380016524142 417 12.352380016524142 421 10.656187687334617 
		432 6.1129499884441207 436 3.1324878422817219 447 -11.957158930869619 459 -11.957158930869619 
		500 -11.957158930869619 505 7.7417105207629584 508 13.041343814228199 511 13.644740046857217 
		542 -11.957158930869619 600 -11.957158930869619 607 -10.001138577746742 619 -11.376966769084682 
		626 -11.957158930869619;
	setAttr -s 71 ".kit[5:70]"  9 9 3 9 9 3 9 9 
		3 3 9 3 3 3 3 9 3 9 3 3 3 10 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 9 3 9 3 9 
		3 3 3 10 10 3 3 3 3 3 9 3 9 3 10 10 10 
		10 10 10 3 3 9 3;
	setAttr -s 71 ".kot[5:70]"  9 9 3 9 9 3 9 9 
		3 3 9 5 3 5 3 9 3 9 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 9 3 9 3 9 
		3 3 3 5 5 3 3 3 3 3 9 3 9 3 5 5 5 
		5 5 5 3 3 9 3;
createNode animCurveTU -n "Cube_Chest3_visibility";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  0 1 1 1 10 1 21 1 31 1 40 1 45 1 50 1 54 
		1 61 1 68 1 74 1 78 1 81 1 89 1 95 1 100 1 109 1 120 1 139 1 150 1 154 1 159 1 164 
		1 169 1 172 1 175 1 179 1 190 1 207 1 215 1 220 1 225 1 229 1 232 1 235 1 239 1 242 
		1 246 1 251 1 259 1 300 1 307 1 312 1 316 1 318 1 322 1 328 1 330 1 332 1 333 1 335 
		1 344 1 348 1 360 1 371 1 400 1 404 1 408 1 412 1 417 1 421 1 432 1 436 1 447 1 459 
		1 500 1 542 1 600 1 626 1;
	setAttr -s 70 ".kit[30:69]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 9 
		9 3 3 3 3 3 3 3 9 3 9 9 9 3 3;
	setAttr -s 70 ".kot[17:69]"  5 3 5 3 3 3 3 3 
		3 3 3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 5 3 3 3 
		3 3 3 3 9 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_Neck1_rotateX";
	setAttr ".tan" 3;
	setAttr -s 66 ".ktv[0:65]"  0 11.791594842441954 1 23.043 10 26.94781289765703 
		17 28.570796911859894 31 23.043 40 23.043 45 23.478284779571908 50 23.478284779571908 
		54 23.478284779571908 61 23.478284779571908 68 23.478284779571908 74 13.916038938036062 
		78 5.6280728150962354 81 5.6280728150962354 89 5.6280728150962354 95 16.225799364093259 
		100 21.427879681897075 109 23.043 120 23.043 139 39.762045149939162 150 39.762045149939162 
		161 39.762045149939162 179 39.762045149939162 190 39.762045149939162 207 23.043 215 
		23.043 220 23.043 225 21.605688862421388 229 18.025207379069009 232 9.272919308652094 
		235 -9.5404406955762155 239 -17.099234938208983 242 -9.5404406955762155 246 11.024805888432903 
		251 19.777093958849804 259 23.043 300 23.043 307 23.043 312 23.043 316 36.607819564156102 
		318 36.607819564156102 322 36.607819564156102 328 6.7364677368906349 330 7.1411317918234358 
		332 7.1411317918234358 333 5.8180641843014032 335 58.596431367269631 344 3.6360514558970083 
		348 3.6360514558970083 360 3.6360514558970083 371 23.043 400 23.043 404 23.043 408 
		23.043 412 -1.4957425115137055 417 -6.7781556158124427 421 -6.7781556158124427 432 
		1.1188742114340373 436 6.3649101627762548 447 23.043 459 23.043 500 23.043 505 4.143222663659766 
		542 23.043 600 23.043 626 23.043;
	setAttr -s 66 ".kit[2:65]"  9 3 3 3 3 3 3 3 
		3 9 3 3 3 9 9 10 3 3 3 10 3 3 3 10 3 
		9 9 9 9 3 9 9 9 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 10 10 3 3 3 9 3 3 9 9 3 10 
		10 10 10 10 10;
	setAttr -s 66 ".kot[2:65]"  9 3 3 3 3 3 3 3 
		3 9 3 3 3 9 9 5 3 5 3 5 3 3 3 5 3 
		9 9 9 9 3 9 9 9 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 5 5 3 3 3 9 3 3 9 9 3 5 
		5 5 5 5 5;
createNode animCurveTA -n "Cube_Neck1_rotateY";
	setAttr ".tan" 3;
	setAttr -s 66 ".ktv[0:65]"  0 -13.86222283391016 1 -6.342 10 -6.342 
		21 -6.342 31 -6.342 40 -6.342 45 -12.45428414010075 50 -13.148948994165801 54 -14.075168799585873 
		61 -15.46449850771597 68 -15.46449850771597 74 8.8004827684403466 78 11.579142184700556 
		81 11.579142184700556 89 8.5689278170853278 95 -11.731879153585908 100 0.47210248352260842 
		109 -6.342 120 -6.342 139 4.4980196060685129 150 4.4980196060685129 161 4.4980196060685129 
		179 4.4980196060685129 190 4.4980196060685129 207 -6.342 215 -6.342 220 -6.342 225 
		-6.342 229 -6.342 232 -6.342 235 -6.342 239 -6.342 242 -6.342 246 -6.342 251 -6.342 
		259 -6.342 300 -6.342 307 -6.342 312 -6.342 316 -6.342 318 -6.342 322 -6.342 328 
		11.892487896721212 330 -7.7441322033114917 332 -7.7441322033114917 333 -8.7790511237313495 
		335 -11.779183879915601 344 16.467158289721496 348 16.467158289721496 360 16.467158289721496 
		371 -6.342 400 -6.342 404 -6.342 408 -6.342 412 16.435729371015618 417 15.08085669055591 
		421 15.08085669055591 432 3.2527855824926952 436 -0.41943958344684601 447 -6.342 
		459 -6.342 500 -6.342 505 3.6511937790730475 542 -6.342 600 -6.342 626 -6.342;
	setAttr -s 66 ".kit[4:65]"  10 3 3 9 9 3 3 9 
		3 3 9 3 3 10 3 3 3 10 3 3 3 10 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 10 10 3 3 3 3 3 3 9 9 3 10 10 10 
		10 10 10;
	setAttr -s 66 ".kot[0:65]"  5 3 3 3 5 3 3 9 
		9 3 3 9 3 3 9 3 3 5 3 5 3 5 3 3 3 
		5 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 5 3 3 3 3 3 3 9 9 
		3 5 5 5 5 5 5;
createNode animCurveTA -n "Cube_Neck1_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 66 ".ktv[0:65]"  0 -8.4792853431889945 1 -11.479 10 -11.479 
		21 -11.479 31 -11.479 40 -11.479 45 -14.140394284813658 50 -14.140394284813658 54 
		-14.140394284813658 61 -14.140394284813658 68 -14.603504187523686 74 -16.480631181004906 
		78 -17.175296035069959 81 -17.175296035069959 89 -17.175296035069959 95 -25.765734875261696 
		100 -14.563765254848422 109 -11.479 120 -11.479 139 -6.8851065157161333 150 -6.8851065157161333 
		161 -6.8851065157161333 179 -6.8851065157161333 190 -6.8851065157161333 207 -11.479 
		215 -11.479 220 -11.479 225 -11.479 229 -11.479 232 -11.479 235 -11.479 239 -11.479 
		242 -11.479 246 -11.479 251 -11.479 259 -11.479 300 -11.479 307 -11.479 312 -11.479 
		316 -11.479 318 -11.479 322 -11.479 328 -3.4226666627084059 330 -1.1606456810454933 
		332 -1.1606456810454933 333 8.027258203994208 335 15.180167463372182 344 -22.311654825588068 
		348 -22.311654825588068 360 -22.311654825588068 371 -11.479 400 -11.479 404 -11.479 
		408 -11.479 412 -12.061773772972076 417 -31.34090602891435 421 -31.34090602891435 
		432 -29.762290675609243 437 -27.139272699938129 447 -14.10201797567111 459 -11.479 
		500 -11.479 505 -7.9211435799397982 542 -11.479 600 -11.479 626 -11.479;
	setAttr -s 66 ".kit[4:65]"  10 3 3 3 3 3 9 9 
		3 3 3 3 9 10 3 3 3 10 3 3 3 10 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 10 10 3 3 3 3 3 3 3 9 9 10 10 10 
		10 10 10;
	setAttr -s 66 ".kot[0:65]"  5 3 3 3 5 3 3 3 
		3 3 9 9 3 3 3 3 9 5 3 5 3 5 3 3 3 
		5 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 5 3 3 3 3 3 3 3 9 
		9 5 5 5 5 5 5;
createNode animCurveTU -n "Cube_Neck1_visibility";
	setAttr ".tan" 3;
	setAttr -s 65 ".ktv[0:64]"  0 1 1 1 10 1 21 1 31 1 40 1 45 1 50 1 54 
		1 61 1 68 1 74 1 78 1 81 1 89 1 95 1 100 1 109 1 120 1 139 1 150 1 161 1 179 1 190 
		1 207 1 215 1 220 1 225 1 229 1 232 1 235 1 239 1 242 1 246 1 251 1 259 1 300 1 307 
		1 312 1 316 1 318 1 322 1 328 1 330 1 332 1 333 1 335 1 344 1 348 1 360 1 371 1 400 
		1 404 1 408 1 412 1 417 1 421 1 432 1 436 1 447 1 459 1 500 1 542 1 600 1 626 1;
	setAttr -s 65 ".kit[2:64]"  9 9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 9 3 3 3 9 3 3 3 9 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 9 9 3 3 3 3 3 3 3 3 3 9 
		9 9 9 9;
	setAttr -s 65 ".kot[0:64]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 3 5 3 3 3 
		5 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 5 3 3 3 3 3 3 3 3 
		3 5 5 5 5 5;
createNode animCurveTA -n "Cube_Head_rotateX";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 -18.583 9 -17.956518041597651 16 
		-17.455226528773572 31 -18.583 40 -18.583 45 -18.141995088062018 50 -17.671223575952652 
		54 -18.141995088062018 61 -21.542529758890268 68 -12.023871186995454 74 -9.9053993825033437 
		78 -12.61456647031169 81 -13.226319149526374 89 -13.226319149526374 95 -13.975898183197502 
		100 -15.761866958465715 109 -18.583 120 -18.583 139 -8.4254273818479053 150 -8.4254273818479053 
		157 -8.4254273818479053 165 -9.3848050854498304 168 -10.166907695594254 175 -9.1304216089926129 
		179 -8.4254273818479053 190 -8.4254273818479053 207 -7.101199544990374 215 -18.583 
		220 -18.583 225 0.33312805823926256 229 7.4940910249439963 232 0.33312805823926256 
		235 -25.729791402765393 239 -26.176040586827988 242 -26.243490014822065 246 -26.243490014822065 
		251 -26.243490014822065 259 -18.583 300 -18.583 307 -18.583 312 -16.678757283546332 
		316 -7.5602048492381106 318 -4.8096320365828245 322 -11.157107758095009 328 -51.075677295604976 
		330 -59.538978257621196 332 -56.788405444965903 333 -47.937081809196997 335 -44.462941390997692 
		344 -51.01838405769346 348 -53.134209298197469 356 -53.795677238544926 368 -18.583 
		400 -18.583 404 -9.7886298570398207 408 -9.7886298570398207 412 -36.703428597487104 
		417 -68.075384797449288 421 -68.075384797449288 432 11.996431547046377 436 11.996431547046377 
		447 -18.583 459 -18.583 500 -18.583 505 -4.6944517181674836 542 -18.583 600 -18.583 
		608 -14.273263271057711 623 -17.928446604815214 629 -18.583;
	setAttr -s 71 ".kit[2:70]"  9 3 3 3 9 3 9 3 
		9 3 9 3 3 9 9 3 3 3 3 3 9 3 9 3 3 
		3 3 3 9 3 9 3 9 3 3 3 3 3 3 9 9 3 
		9 9 3 9 9 3 9 3 3 3 3 3 3 9 3 3 3 
		3 3 10 10 10 10 3 3 9 3;
	setAttr -s 71 ".kot[2:70]"  9 3 3 3 9 3 9 3 
		9 3 9 3 3 9 9 5 3 5 3 3 9 3 9 3 3 
		3 3 3 9 3 9 3 9 3 3 3 3 3 3 9 9 3 
		9 9 3 9 9 3 9 3 5 5 3 3 3 9 3 3 3 
		3 3 5 5 5 5 3 3 9 3;
createNode animCurveTA -n "Cube_Head_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 5.609 1 5.609 10 6.1252281836039897 21 
		7.1213570839841109 31 5.609 40 5.609 45 9.8475351339126043 50 11.314415090468056 
		54 12.455321723344522 61 16.673983375992329 68 17.76056112158896 74 16.673983375992329 
		78 14.694668451648999 81 14.314366240690179 89 14.314366240690179 95 14.314366240690179 
		100 13.227788495093543 109 5.609 120 5.609 139 5.609 150 5.609 157 5.609 165 2.9477673619198299 
		168 1.6274716161103335 175 3.2209972350813461 179 5.609 190 5.609 207 5.609 215 5.609 
		220 5.609 225 5.609 229 5.609 232 5.609 235 5.609 239 5.609 242 5.609 246 5.609 251 
		5.609 259 5.609 300 5.609 307 5.609 312 5.609 316 5.609 318 5.609 322 4.1746473689690529 
		328 -2.0235250815898227 330 -4.6531715718132123 332 -2.2625838534283131 333 29.253249509978964 
		335 49.698429021803399 344 31.435255350701457 348 20.438551846130895 356 19.889533570036757 
		368 5.609 400 5.609 404 5.609 408 5.609 412 -11.784636979052129 417 -11.784636979052129 
		421 -11.784636979052129 432 10.303960626615314 436 10.303960626615314 447 5.609 459 
		5.609 500 5.609 505 -11.376195830716497 542 5.609 600 5.609 608 7.6780743419190278 
		623 5.0145975747861318 629 5.609;
	setAttr -s 71 ".kit[2:70]"  9 3 10 3 9 9 9 9 
		3 9 9 3 3 3 9 3 3 3 3 3 9 3 9 3 3 
		3 10 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		9 9 3 9 9 3 9 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 10 10 3 3 3 3;
	setAttr -s 71 ".kot[2:70]"  9 3 5 3 9 9 9 9 
		3 9 9 3 3 3 9 5 3 5 3 3 9 3 9 3 3 
		3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		9 9 3 9 9 3 9 3 5 5 3 3 3 3 3 3 3 
		3 3 5 5 5 5 3 3 3 3;
createNode animCurveTA -n "Cube_Head_rotateY";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 1.8920000000000001 10 1.5979926708618912 
		21 2.7089188764321204 31 1.8920000000000001 40 1.8920000000000001 45 -18.516266036747922 
		50 -21.622045522886538 54 -18.516266036747922 61 -14.42144199484154 68 -11.435115565862118 
		74 -6.1791810508583245 78 4.020544080616868 81 5.9317929951637094 89 5.9317929951637094 
		95 5.9317929951637094 100 5.3345277093678254 109 1.8920000000000001 120 1.8920000000000001 
		139 1.8920000000000001 150 1.8920000000000001 157 1.8920000000000001 165 9.2964558064101031 
		168 11.248448607426054 175 9.1797918683960695 179 1.8920000000000001 190 1.8920000000000001 
		207 1.8920000000000001 215 1.8920000000000001 220 1.8920000000000001 225 1.8920000000000001 
		229 1.8920000000000001 232 1.8920000000000001 235 1.8920000000000001 239 1.8920000000000001 
		242 1.8920000000000001 246 1.8920000000000001 251 1.8920000000000001 259 1.8920000000000001 
		300 1.8920000000000001 307 1.8920000000000001 312 1.8920000000000001 316 1.8920000000000001 
		318 1.8920000000000001 322 4.0435289465464175 328 14.75437997809995 330 17.144967696484862 
		332 14.75437997809995 333 9.8476843587152665 335 -7.8532987277252504 344 11.424637807818954 
		348 37.003926394537437 356 37.47361234244341 368 1.8920000000000001 400 1.8920000000000001 
		404 1.8920000000000001 408 1.8920000000000001 412 26.814981233595006 417 26.814981233595006 
		421 26.814981233595006 432 16.63477725059715 436 16.63477725059715 447 1.8920000000000001 
		459 1.8920000000000001 500 1.8920000000000001 505 5.9997238817596621 542 1.8920000000000001 
		600 1.8920000000000001 608 2.6382528650091159 623 1.7662235059057703 629 1.8920000000000001;
	setAttr -s 71 ".kit[4:70]"  10 3 9 3 9 9 9 9 
		9 3 3 3 9 3 3 3 3 3 9 3 9 3 3 3 10 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 9 9 
		3 9 9 3 9 3 3 3 3 3 3 3 3 3 3 3 3 
		10 10 10 10 3 3 3 3;
	setAttr -s 71 ".kot[0:70]"  5 3 3 3 5 3 9 3 
		9 9 9 9 9 3 3 3 9 5 3 5 3 3 9 3 9 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 9 9 3 9 9 3 9 3 5 5 3 3 3 3 3 
		3 3 3 3 5 5 5 5 3 3 3 3;
createNode animCurveTA -n "Cube_R_Leg_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Cube_R_Leg_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Cube_R_Leg_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Cube_R_Knee_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Cube_R_Knee_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Cube_R_Knee_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Cube_R_Ankle_rotateX";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Cube_R_Ankle_rotateY";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTA -n "Cube_R_Ankle_rotateZ";
	setAttr ".tan" 10;
	setAttr ".ktv[0]"  0 0;
	setAttr ".kot[0]"  5;
createNode animCurveTU -n "Const_Joint_R_Ankle_IK_IK_Blend";
	setAttr ".tan" 3;
	setAttr -s 78 ".ktv[0:77]"  0 1 1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 
		0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 324 0 329 0 330 0 331 0 332 0 337 0 339 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 78 ".kit[2:77]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 78 ".kot[0:77]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 
		5 5;
createNode animCurveTU -n "Const_Joint_R_Ankle_IK_Toe";
	setAttr ".tan" 3;
	setAttr -s 78 ".ktv[0:77]"  0 0 1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 
		0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 324 0 329 0 330 0 331 0 332 0 337 0 339 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 78 ".kit[2:77]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 78 ".kot[0:77]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 
		5 5;
createNode animCurveTU -n "Const_Joint_R_Ankle_IK_Roll";
	setAttr ".tan" 3;
	setAttr -s 78 ".ktv[0:77]"  0 -5 1 -5 10 -5 21 -5 31 -5 40 -5 45 -5 
		50 -5 54 -5 61 -5 68 -5 74 -5 78 -5 81 -5 89 -5 95 -5 100 -5 109 -5 120 -5 134 -5 
		139 -5 150 -5 153 -5 154 -5 158 -5 159 -5 163 -5 164 -5 168 -5 169 -5 171 -5 172 
		-5 174 -5 175 -5 178 -5 179 -5 190 -5 207 -5 215 -5 220 -5 225 -5 229 -5 232 -5 235 
		-5 239 -5 242 -5 246 -5 251 -5 259 -5 300 -5 307 -5 312 -5 316 -5 318 -5 322 -5 324 
		-5 329 -5 330 -5 331 -5 332 -5 337 -5 339 -5 360 -5 371 -5 400 -5 404 -5 408 -5 412 
		-5 417 -5 421 -5 432 -5 436 -5 447 -5 459 -5 500 -5 542 -5 600 -5 626 -5;
	setAttr -s 78 ".kit[2:77]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10 10 10 10 10 10 10 10 
		10 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 78 ".kot[0:77]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 5 5 5 5 5 5 5 5 5 5 
		5 5 5 5 5 3 3 3 3 3 3 3 3 3 5 5 5 
		5 5;
createNode animCurveTL -n "Const_Joint_R_Ankle_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 75 ".ktv[0:74]"  0 0 1 0.12915293945576406 10 0.12915293945576406 
		21 0.12915293945576406 31 0.12915293945576406 40 0.12915293945576406 45 0.12915293945576406 
		50 0.12915293945576406 54 0.12915293945576406 61 0.12915293945576406 68 0.12915293945576406 
		74 0.12915293945576406 78 0.12915293945576406 81 0.12915293945576406 89 0.12915293945576406 
		95 0.12915293945576406 100 0.12915293945576406 109 0.12915293945576406 120 0.12915293945576406 
		134 0.11877062932685946 139 0.11513679404806282 150 0.11513679404806282 153 0.11513679404806282 
		154 0.11513679404806282 158 0.11513679404806282 159 0.11513679404806282 163 0.11513679404806282 
		164 0.11513679404806282 168 0.11513679404806282 169 0.074136379387356954 171 0.041326050380672025 
		174 0.028775971666517634 176 0.041326050380672025 178 0.075253734247293022 179 0.11513679404806282 
		190 0.11513679404806282 207 0.12915293945576406 215 0.12915293945576406 220 0.12915293945576406 
		225 0.12915293945576406 229 0.12915293945576406 232 0.12915293945576406 235 0.12915293945576406 
		239 0.12915293945576406 242 0.12915293945576406 246 0.12915293945576406 251 0.12915293945576406 
		259 0.12915293945576406 300 0.12915293945576406 307 0.12915293945576406 312 0.12915293945576406 
		316 0.12915293945576406 318 0.12915293945576406 322 0.12915293945576406 324 0.12915293945576406 
		329 -0.2354510856028546 332 -1.3600504490603009 337 -1.7774396340769147 339 -1.7774396340769147 
		360 -1.7774396340769147 371 0.12915293945576406 400 0.12915293945576406 404 0.12915293945576406 
		408 0.12915293945576406 412 0.12915293945576406 417 0.12915293945576406 421 0.12915293945576406 
		432 0.12915293945576406 436 0.12915293945576406 447 0.12915293945576406 459 0.12915293945576406 
		500 0.12915293945576406 542 0.12915293945576406 600 0.12915293945576406 626 0.12915293945576406;
	setAttr -s 75 ".kit[2:74]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 
		3 3 9 9 3 9 9 3 3 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 9 9 3 3 10 10 
		3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 75 ".kot[0:74]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 
		3 3 3 3 9 9 3 9 9 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 9 9 3 3 
		5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_R_Ankle_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 75 ".ktv[0:74]"  0 0 1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 
		0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 137 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0.19738757302255958 172 0.30435058599579745 177 
		0.22760798831183504 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 324 0 329 0.10247025580164471 
		330 0.11248726624980275 331 -0.088708378755177161 332 -0.53315555378391277 337 -1.3183119973181392 
		339 -1.4834042200375173 360 -1.4834042200375173 371 0 400 0 404 0 408 0 412 0 417 
		0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 75 ".kit[2:74]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 3 3 3 3 3 3 3 3 
		3 3 9 3 9 3 3 3 10 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 9 3 9 9 9 3 10 10 
		3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 75 ".kot[0:74]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 3 5 3 3 3 3 
		3 3 3 3 9 3 9 3 3 3 5 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 9 3 9 9 9 3 
		5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_R_Ankle_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 76 ".ktv[0:75]"  0 0 1 -0.11292715305805007 10 -0.11292715305805007 
		21 -0.11292715305805007 31 -0.11292715305805007 40 -0.11292715305805007 45 -0.11292715305805007 
		50 -0.11292715305805007 54 -0.11292715305805007 61 -0.11292715305805007 68 -0.11292715305805007 
		74 -0.11292715305805007 78 -0.11292715305805007 81 -0.11292715305805007 89 -0.11292715305805007 
		95 -0.11292715305805007 100 -0.11292715305805007 109 -0.11292715305805007 120 -0.11292715305805007 
		134 -0.11292715305805007 139 -0.11292715305805007 150 -0.11292715305805007 153 -0.11292715305805007 
		154 -0.11292715305805007 158 -0.11292715305805007 159 -0.11292715305805007 163 -0.11292715305805007 
		164 -0.11292715305805007 168 -0.11292715305805007 169 -0.11292715305805007 171 -0.11292715305805007 
		172 -0.074571764009959587 174 -0.049443724979344676 175 -0.049443724979344676 178 
		-0.074571764009959587 179 -0.11292715305805007 190 -0.11292715305805007 207 -0.11292715305805007 
		215 -0.11292715305805007 220 -0.11292715305805007 225 -0.11292715305805007 229 -0.11292715305805007 
		232 -0.11292715305805007 235 -0.11292715305805007 239 -0.11292715305805007 242 -0.11292715305805007 
		246 -0.11292715305805007 251 -0.11292715305805007 259 -0.11292715305805007 300 -0.11292715305805007 
		307 -0.11292715305805007 312 -0.11292715305805007 316 -0.11292715305805007 318 -0.11292715305805007 
		322 -0.11292715305805007 330 -0.35286818245442197 331 -0.35286818245442197 332 -0.35286818245442197 
		337 -0.35286818245442197 339 -0.35286818245442197 360 -0.35286818245442197 371 -0.11292715305805007 
		400 -0.11292715305805007 404 -0.11292715305805007 408 -0.11292715305805007 412 -0.11292715305805007 
		417 -0.11292715305805007 421 -0.11292715305805007 432 -0.11292715305805007 436 -0.11292715305805007 
		447 -0.11292715305805007 459 -0.11292715305805007 500 -0.11292715305805007 542 -0.11292715305805007 
		600 -0.11292715305805007 626 -0.11292715305805007;
	setAttr -s 76 ".kit[2:75]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 
		3 3 3 3 9 3 3 9 3 3 3 10 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 10 
		10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 76 ".kot[0:75]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 
		3 3 3 3 3 3 9 3 3 9 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Const_Joint_R_Ankle_IK_rotateX";
	setAttr ".tan" 3;
	setAttr -s 78 ".ktv[0:77]"  0 0 1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 
		0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 324 0 329 0 330 0 331 0 332 0 337 0 339 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 78 ".kit[2:77]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 78 ".kot[0:77]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 
		5 5;
createNode animCurveTA -n "Const_Joint_R_Ankle_IK_rotateY";
	setAttr ".tan" 3;
	setAttr -s 78 ".ktv[0:77]"  0 0 1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 
		0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 324 0 329 0 330 0 331 0 332 0 337 0 339 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 78 ".kit[2:77]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 78 ".kot[0:77]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 
		5 5;
createNode animCurveTA -n "Const_Joint_R_Ankle_IK_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 78 ".ktv[0:77]"  0 0 1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 
		0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 324 0 329 0 330 0 331 0 332 0 337 0 339 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 78 ".kit[2:77]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 78 ".kot[0:77]"  5 5 5 5 5 3 3 3 
		3 3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 
		5 5;
createNode animCurveTU -n "Const_Joint_L_Ankle_IK_IK_Blend";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTU -n "Const_Joint_L_Ankle_IK_Toe";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTU -n "Const_Joint_L_Ankle_IK_Roll";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 -5 10 -5 21 -5 31 -5 40 -5 45 -5 50 -5 
		54 -5 61 -5 68 -5 74 -5 78 -5 81 -5 89 -5 95 -5 100 -5 109 -5 120 -5 134 -5 139 -5 
		150 -5 153 -5 154 -5 158 -5 159 -5 163 -5 164 -5 168 -5 169 -5 171 -5 172 -5 174 
		-5 175 -5 178 -5 179 -5 190 -5 207 -5 215 -5 220 -5 225 -5 229 -5 232 -5 235 -5 239 
		-5 242 -5 246 -5 251 -5 259 -5 300 -5 307 -5 312 -5 316 -5 318 -5 322 -5 328 -5 330 
		-5 332 -5 333 -5 335 -5 344 -5 348 -5 360 -5 371 -5 400 -5 404 -5 408 -5 412 -5 417 
		-5 421 -5 432 -5 436 -5 447 -5 459 -5 500 -5 542 -5 600 -5 626 -5;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTL -n "Const_Joint_L_Ankle_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0.047980749743980027 10 0.047980749743980027 
		21 0.047980749743980027 31 0.047980749743980027 40 0.047980749743980027 45 0.047980749743980027 
		50 0.047980749743980027 54 0.047980749743980027 61 0.047980749743980027 68 0.047980749743980027 
		74 0.047980749743980027 78 0.047980749743980027 81 0.047980749743980027 89 0.047980749743980027 
		95 0.047980749743980027 100 0.047980749743980027 109 0.047980749743980027 120 0.047980749743980027 
		134 0.047980749743980027 139 0.047980749743980027 150 0.047980749743980027 153 0.047980749743980027 
		154 0.047980749743980027 158 0.047980749743980027 159 0.047980749743980027 162 -0.015547833514834427 
		163 -0.023800000000000002 164 -0.023800000000000002 168 -0.023800000000000002 169 
		-0.023800000000000002 171 -0.023800000000000002 172 -0.023800000000000002 174 -0.0076886273384862494 
		175 0.047980749743980027 178 0.047980749743980027 179 0.047980749743980027 190 0.047980749743980027 
		207 0.047980749743980027 215 0.047980749743980027 220 0.047980749743980027 225 0.047980749743980027 
		229 0.047980749743980027 232 0.047980749743980027 235 0.047980749743980027 239 0.047980749743980027 
		242 0.047980749743980027 246 0.047980749743980027 251 0.047980749743980027 259 0.047980749743980027 
		300 0.047980749743980027 307 0.047980749743980027 312 0.047980749743980027 316 0.047980749743980027 
		318 0.047980749743980027 322 0.047980749743980027 328 0.047980749743980027 330 0.048 
		332 0.28764315669956503 335 0.22044220425770714 344 0.048 348 0.048 360 0.048 371 
		0.047980749743980027 400 0.047980749743980027 404 0.047980749743980027 408 0.047980749743980027 
		412 0.047980749743980027 417 0.047980749743980027 421 0.047980749743980027 432 0.047980749743980027 
		436 0.047980749743980027 447 0.047980749743980027 459 0.047980749743980027 500 0.047980749743980027 
		542 0.047980749743980027 600 0.047980749743980027 626 0.047980749743980027;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		9 3 3 3 3 3 3 9 3 3 3 3 3 10 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 9 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		9 3 3 3 3 3 3 9 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 9 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTL -n "Const_Joint_L_Ankle_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 137 0 139 0.28597097550667311 
		150 0.28597097550667311 157 0.22021852493397082 159 0 163 0 164 0 168 0 169 0 171 
		0 172 0 174 0 176 0 177 0.18033445285747102 179 0.28597097550667311 190 0.28597097550667311 
		197 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 
		0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 331 -0.15661344968895224 333 -0.49 335 
		-0.49 344 -0.49 345 -0.49 348 -0.49 360 -0.49 371 0 400 0 404 0 408 0 412 0 417 0 
		421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 3 3 3 9 3 3 3 
		3 3 3 3 3 3 9 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 9 3 3 3 
		10 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 3 5 3 9 3 3 3 
		3 3 3 3 3 3 9 3 3 3 3 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 9 3 3 3 
		5 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTL -n "Const_Joint_L_Ankle_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  1 -0.0034711454936656103 10 -0.0034711454936656103 
		21 -0.0034711454936656103 31 -0.0034711454936656103 40 -0.0034711454936656103 45 
		-0.0034711454936656103 50 -0.0034711454936656103 54 -0.0034711454936656103 61 -0.0034711454936656103 
		68 -0.0034711454936656103 74 -0.0034711454936656103 78 -0.0034711454936656103 81 
		-0.0034711454936656103 89 -0.0034711454936656103 95 -0.0034711454936656103 100 -0.0034711454936656103 
		109 -0.0034711454936656103 120 -0.0034711454936656103 134 -0.0034711454936656103 
		139 -0.0034711454936656103 150 -0.0034711454936656103 153 -0.0034711454936656103 
		154 0.074962873409796668 163 0.11566677138337426 164 0.11566677138337426 168 0.11566677138337426 
		169 0.11566677138337426 178 0.074962873409796668 179 -0.0034711454936656103 190 -0.0034711454936656103 
		207 -0.0034711454936656103 215 -0.0034711454936656103 220 -0.0034711454936656103 
		225 -0.0034711454936656103 229 -0.0034711454936656103 232 -0.0034711454936656103 
		235 -0.0034711454936656103 239 -0.0034711454936656103 242 -0.0034711454936656103 
		246 -0.0034711454936656103 251 -0.0034711454936656103 259 -0.0034711454936656103 
		300 -0.0034711454936656103 307 -0.0034711454936656103 312 -0.0034711454936656103 
		316 -0.0034711454936656103 318 -0.0034711454936656103 322 -0.0034711454936656103 
		328 -0.0034711454936656103 330 -0.0034711454936656103 332 -0.0034711454936656103 
		333 -0.0034711454936656103 335 -0.0034711454936656103 344 -0.0034711454936656103 
		348 -0.0034711454936656103 360 -0.0034711454936656103 371 -0.0034711454936656103 
		400 -0.0034711454936656103 404 -0.0034711454936656103 408 -0.0034711454936656103 
		412 -0.0034711454936656103 417 -0.0034711454936656103 421 -0.0034711454936656103 
		432 -0.0034711454936656103 436 -0.0034711454936656103 447 -0.0034711454936656103 
		459 -0.0034711454936656103 500 -0.0034711454936656103 542 -0.0034711454936656103 
		600 -0.0034711454936656103 626 -0.0034711454936656103;
	setAttr -s 71 ".kit[0:70]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 9 3 3 
		3 3 9 3 3 3 10 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 10 10 3 3 
		3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 71 ".kot[0:70]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 9 3 3 
		3 3 9 3 3 3 5 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 5 5 3 3 
		3 3 3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Const_Joint_L_Ankle_IK_rotateX";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_L_Ankle_IK_rotateY";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_L_Ankle_IK_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 -60.967609844044226 333 -69.762348310111577 335 
		-69.762348310111577 344 -69.762348310111577 348 -69.762348310111577 360 -69.762348310111577 
		371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 
		0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 9 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 9 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Cube_R_Arm_rotateX";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  0 32.943 1 30.219224560132652 5 30.219224560132652 
		16 28.901398427913527 22 29.100113542763914 30 30.219224560132652 40 30.219224560132652 
		45 30.219224560132652 50 30.219224560132652 54 30.219224560132652 61 27.937478963241723 
		68 27.937478963241723 74 27.937478963241723 78 27.937478963241723 81 27.937478963241723 
		89 27.937478963241723 95 27.937478963241723 100 27.937478963241723 109 30.219224560132652 
		120 30.219224560132652 139 33.729 150 33.729 160 36.119558130728045 162 35.792697119900708 
		167 33.929175418630336 179 33.729 190 33.729 207 25.232679224699915 215 30.219224560132652 
		220 30.219224560132652 225 3.6413875759777827 229 17.984683376643734 232 40.101154265915206 
		235 63.427396340489686 239 11.755070750149246 242 -94.63164894817055 246 -36.603172868574688 
		251 4.9757924032556957 259 30.219224560132652 300 30.219224560132652 307 21.36259229373082 
		312 -21.593987222221855 316 -31.764451006194779 318 -27.201943475018069 322 7.2803127401796273 
		328 -1.5763195262222129 330 -39.202458659340344 332 -39.202458659340344 333 -39.063139967744583 
		344 -25.85778138543505 348 -23.120681454755879 360 -23.120681454755879 371 30.219224560132652 
		400 30.219224560132652 404 30.219224560132652 408 33.791534540160505 412 33.791534540160505 
		417 33.791534540160505 421 32.573722851484611 432 43.323377021067408 436 40.990112984189331 
		447 30.219224560132652 459 30.219224560132652 500 30.219224560132652 505 -31.813018961297722 
		508 -45.679254905896599 542 30.219224560132652 600 30.219224560132652 614 25.951224215348585 
		629 30.219224560132652;
	setAttr -s 70 ".kit[4:69]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 3 3 3 9 9 3 3 3 10 
		3 3 9 9 3 9 3 9 9 3 3 9 9 3 9 3 9 
		3 3 9 9 3 3 3 3 3 3 3 3 3 9 9 3 10 
		10 10 10 10 3 3 3;
	setAttr -s 70 ".kot[4:69]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 3 3 9 9 3 3 3 5 
		3 3 9 9 3 9 3 9 9 3 3 9 9 3 9 3 9 
		3 3 9 9 3 3 3 3 3 3 3 3 3 9 9 3 5 
		5 5 5 5 3 3 3;
createNode animCurveTA -n "Cube_R_Arm_rotateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  0 -5.336694292103914 1 16.064707197534339 
		5 16.064707197534339 16 13.196750143613064 22 13.602367193297406 30 16.064707197534339 
		40 16.064707197534339 45 16.064707197534339 50 16.064707197534339 54 16.064707197534339 
		61 12.084967713546495 68 12.084967713546495 74 12.084967713546495 78 12.084967713546495 
		81 12.084967713546495 89 12.084967713546495 95 12.084967713546495 100 12.084967713546495 
		109 16.064707197534339 120 16.064707197534339 139 22.25 150 22.25 160 26.538645004257553 
		179 22.25 190 22.25 207 18.812269267410606 215 16.064707197534339 220 16.064707197534339 
		225 12.700593211718488 229 10.119301730233031 232 8.9720610717950482 235 8.1529000016960733 
		239 11.223364595585783 242 21.532200845991131 246 50.404424083347003 251 47.536322437252053 
		259 16.064707197534339 300 16.064707197534339 307 16.064707197534339 312 7.9932545710827005 
		316 42.16725371876025 318 51.035746010632664 322 54.332216920930918 328 54.332216920930918 
		330 49.347288938671895 332 34.196947940056617 333 18.738229237988339 335 15.043024116374843 
		345 -1.0780683925919552 348 -41.250422224804687 360 -41.250422224804687 371 16.064707197534339 
		400 16.064707197534339 404 16.064707197534339 408 2.3588358082685503 412 2.3588358082685503 
		417 2.3588358082685503 421 -9.8160412716047976 432 10.492805012565292 436 14.770455746841762 
		447 16.064707197534339 459 16.064707197534339 500 16.064707197534339 505 41.588008379206308 
		508 24.53754078991642 542 16.064707197534339 600 16.064707197534339 614 11.44770542755885 
		629 16.064707197534339;
	setAttr -s 69 ".kit[4:68]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 3 3 9 3 3 3 10 3 9 
		9 9 3 9 9 3 9 3 3 3 3 9 9 3 3 9 9 
		9 3 9 3 3 3 3 3 3 3 3 3 9 9 3 10 10 
		10 10 10 3 3 3;
	setAttr -s 69 ".kot[4:68]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 3 9 3 3 3 5 3 9 
		9 9 3 9 9 3 9 3 3 3 3 9 9 3 3 9 9 
		9 3 9 3 3 3 3 3 3 3 3 3 9 9 3 5 5 
		5 5 5 3 3 3;
createNode animCurveTA -n "Cube_R_Arm_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 72 ".ktv[0:71]"  0 56.772 1 30.458010426157248 5 30.458010426157248 
		16 27.814130013417927 22 28.737792678649523 30 30.458010426157248 40 30.458010426157248 
		45 30.458010426157248 50 30.458010426157248 54 30.458010426157248 61 22.382201960546645 
		68 22.382201960546645 74 22.382201960546645 78 22.382201960546645 81 22.382201960546645 
		89 22.382201960546645 95 22.382201960546645 100 22.382201960546645 109 30.458010426157248 
		120 30.458010426157248 139 42.024 150 42.024 154 39.473364490245842 162 44.832572239495107 
		169 46.323204083169337 172 45.020949640606602 179 42.024 190 42.024 207 15.597804506331137 
		215 30.458010426157248 220 30.458010426157248 225 9.294111037053435 229 4.7853030020739817 
		232 9.294111037053435 235 32.09298729490633 239 12.156390530783527 242 -48.464382930059891 
		246 -6.9430400364664395 251 19.208046566414378 259 30.458010426157248 300 30.458010426157248 
		307 30.458010426157248 312 9.175963527764333 316 -9.982547209901119 318 -9.982547209901119 
		322 -7.9049252665863179 328 -13.411389030532762 330 -31.030233140840448 332 -29.653617199853837 
		333 -25.854443243204379 335 -22.757057375984498 344 -30.328445051410892 348 -58.563153757643796 
		360 -58.563153757643796 371 30.458010426157248 400 30.458010426157248 404 30.458010426157248 
		408 52.350678967483866 412 52.350678967483866 417 52.350678967483866 421 70.811193780515381 
		432 58.784519429797641 436 51.784727319163402 447 30.458010426157248 459 30.458010426157248 
		500 30.458010426157248 505 -25.947254527178021 508 -50.808880086812259 542 30.458010426157248 
		600 30.458010426157248 614 25.591084328475944 629 30.458010426157248;
	setAttr -s 72 ".kit[4:71]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 3 3 9 9 3 9 3 3 3 
		10 3 9 3 9 3 9 3 9 9 3 3 3 9 3 3 3 
		9 3 9 9 3 9 3 3 3 3 3 3 3 3 3 9 9 
		3 10 10 10 10 10 3 3 3;
	setAttr -s 72 ".kot[4:71]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 3 9 9 3 9 3 3 3 
		5 3 9 3 9 3 9 3 9 9 3 3 3 9 3 3 3 
		9 3 9 9 3 9 3 3 3 3 3 3 3 3 3 9 9 
		3 5 5 5 5 5 3 3 3;
createNode animCurveTA -n "Cube_R_Elbow_rotateX";
	setAttr ".tan" 3;
	setAttr -s 72 ".ktv[0:71]"  0 1.948 1 0 5 0 16 0 22 0 30 0 40 0 45 
		0 50 0 54 0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 
		0 159 0 164 0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 
		0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 
		0 333 -6.465467949857703 335 -6.465467949857703 344 -6.465467949857703 348 -11.501623374373555 
		360 -11.501623374373555 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 
		0 459 0 500 0 508 -14.769548578890459 542 0 600 0 629 0;
	setAttr -s 72 ".kit[3:71]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 10 
		3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 10 10 10 10 3 3;
	setAttr -s 72 ".kot[3:71]"  5 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 5 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 3 
		3 3 3 3 5 5 5 5 3 3;
createNode animCurveTA -n "Cube_R_Elbow_rotateY";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  0 30.487887444780633 1 31.922936220023946 
		5 31.922936220023946 16 28.75487598435889 22 28.15066042897659 30 31.922936220023946 
		40 31.922936220023946 45 31.922936220023946 50 31.922936220023946 54 31.922936220023946 
		61 31.922936220023946 68 31.922936220023946 74 31.922936220023946 78 31.922936220023946 
		81 31.922936220023946 89 31.922936220023946 95 31.922936220023946 100 31.922936220023946 
		109 31.922936220023946 120 31.922936220023946 139 31.922936220023946 150 31.922936220023946 
		154 28.936900343152061 159 18.466795547448566 169 14.506120179671642 175 18.466795547448566 
		179 31.922936220023946 190 31.922936220023946 207 31.922936220023946 215 31.922936220023946 
		220 31.922936220023946 225 31.922936220023946 229 31.922936220023946 232 31.922936220023946 
		235 31.922936220023946 239 31.922936220023946 242 29.268959713311375 246 18.353323477068571 
		251 19.237982312639421 259 31.922936220023946 300 31.922936220023946 307 31.922936220023946 
		312 31.922936220023946 316 31.922936220023946 318 31.922936220023946 322 31.922936220023946 
		328 31.922936220023946 330 31.922936220023946 332 19.18923876589778 333 -15.230758709473118 
		335 -26.243686237366031 344 -34.159227898039063 348 -28.610957209773364 360 -28.610957209773364 
		371 31.922936220023946 400 31.922936220023946 404 31.922936220023946 408 31.922936220023946 
		412 9.3741854260509303 417 9.3741854260509303 421 9.3741854260509303 432 9.3741854260509303 
		436 10.929694783969653 447 28.423040164706826 459 31.922936220023946 500 31.922936220023946 
		508 16.938936558124453 542 31.922936220023946 600 31.922936220023946 629 31.922936220023946;
	setAttr -s 70 ".kit[3:69]"  9 3 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 3 3 9 9 3 9 3 3 
		3 10 3 3 3 3 3 3 9 3 9 3 3 3 3 3 3 
		3 3 3 9 9 9 3 3 3 10 3 3 3 3 3 3 3 
		9 9 10 10 10 10 3 3;
	setAttr -s 70 ".kot[3:69]"  9 3 5 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 9 9 3 9 3 3 
		3 5 3 3 3 3 3 3 9 3 9 3 3 3 3 3 3 
		3 3 3 9 9 9 3 3 3 5 3 3 3 3 3 3 3 
		9 9 5 5 5 5 3 3;
createNode animCurveTA -n "Cube_R_Elbow_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 72 ".ktv[0:71]"  0 6.287 1 0 5 0 16 0 22 0 30 0 40 0 45 
		0 50 0 54 0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 
		0 159 0 164 0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 
		0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 
		2.7532318819732335 333 9.6620031139319966 335 12.759388981151863 344 12.759388981151863 
		348 23.022087755894152 360 23.022087755894152 371 0 400 0 404 0 408 0 412 0 417 0 
		421 0 432 0 436 0 447 0 459 0 500 0 508 -28.197982099116047 542 0 600 0 629 0;
	setAttr -s 72 ".kit[3:71]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 10 
		3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 9 9 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 10 10 10 10 3 3;
	setAttr -s 72 ".kot[3:71]"  5 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 5 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 9 9 3 3 3 3 5 3 3 3 3 3 
		3 3 3 3 5 5 5 5 3 3;
createNode animCurveTA -n "Cube_R_Hand_rotateX";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 0 5 0 16 -0.57806787532453541 22 
		-2.4799591634351463 30 0 40 0 45 0 50 0 54 0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 
		0 109 0 120 0 139 0 150 0 154 0 159 0 164 0 169 0 172 0 175 0 179 0 190 0 207 0 215 
		0 220 0 225 -11.920125201158779 229 -15.879391222794819 232 -15.879391222794819 235 
		-15.879391222794819 239 -15.879391222794819 242 -15.879391222794819 246 -15.879391222794819 
		251 -12.280058475852957 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 
		0.33576590410678198 333 1.32270438384457 335 1.6304897959424529 344 1.6304897959424529 
		348 2.4125401998783587 360 2.4125401998783587 371 0 400 0 404 0 408 0 412 0 417 0 
		421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 629 0;
	setAttr -s 71 ".kit[3:70]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 10 
		3 3 3 10 3 9 3 3 3 3 3 3 9 3 3 3 3 
		3 3 3 3 3 9 9 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 10 10 10 3 3;
	setAttr -s 71 ".kot[3:70]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 5 
		3 3 3 5 3 9 3 3 3 3 3 3 9 3 3 3 3 
		3 3 3 3 3 9 9 3 3 3 3 5 3 3 3 3 3 
		3 3 3 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_R_Hand_rotateY";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  0 52.741418414745702 1 39.831429919111734 
		5 39.831429919111734 16 42.891895715244068 22 41.538614295325438 30 39.831429919111734 
		40 39.831429919111734 45 39.831429919111734 50 39.831429919111734 54 39.831429919111734 
		61 39.831429919111734 68 39.831429919111734 74 39.831429919111734 78 39.831429919111734 
		81 39.831429919111734 89 39.831429919111734 95 39.831429919111734 100 39.831429919111734 
		109 39.831429919111734 120 39.831429919111734 139 39.831429919111734 150 39.831429919111734 
		154 39.831429919111734 159 39.831429919111734 164 39.831429919111734 169 39.831429919111734 
		172 39.831429919111734 175 39.831429919111734 179 39.831429919111734 190 39.831429919111734 
		207 39.831429919111734 215 39.831429919111734 220 39.831429919111734 225 37.742343246915411 
		229 37.022476697527033 232 37.022476697527033 235 37.022476697527033 239 37.022476697527033 
		242 37.022476697527033 246 37.022476697527033 251 37.742343246915411 259 39.831429919111734 
		300 39.831429919111734 307 39.831429919111734 312 39.831429919111734 316 39.831429919111734 
		318 39.831429919111734 322 39.831429919111734 328 39.831429919111734 330 39.831429919111734 
		332 33.135065148188467 333 17.165757081017411 335 10.123028615046366 344 10.007574050030449 
		360 9.9671947578950117 371 39.831429919111734 400 39.831429919111734 404 39.831429919111734 
		408 39.831429919111734 412 39.831429919111734 417 39.831429919111734 421 39.831429919111734 
		432 39.831429919111734 436 39.831429919111734 447 39.831429919111734 459 39.831429919111734 
		500 39.831429919111734 542 39.831429919111734 600 39.831429919111734 629 39.831429919111734;
	setAttr -s 70 ".kit[4:69]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 10 3 
		3 3 10 3 9 3 3 3 3 3 3 9 3 3 3 3 3 
		3 3 3 3 9 9 3 9 3 10 3 3 3 3 3 3 3 
		3 3 10 10 10 3 3;
	setAttr -s 70 ".kot[4:69]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 5 3 
		3 3 5 3 9 3 3 3 3 3 3 9 3 3 3 3 3 
		3 3 3 3 9 9 3 9 3 5 3 3 3 3 3 3 3 
		3 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_R_Hand_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 4.5575608291367589 5 4.5575608291367589 
		16 3.9794929538122239 22 0.77005098155643092 30 4.5575608291367589 40 4.5575608291367589 
		45 4.5575608291367589 50 4.5575608291367589 54 4.5575608291367589 61 4.5575608291367589 
		68 4.5575608291367589 74 4.5575608291367589 78 4.5575608291367589 81 4.5575608291367589 
		89 4.5575608291367589 95 4.5575608291367589 100 4.5575608291367589 109 4.5575608291367589 
		120 4.5575608291367589 139 4.5575608291367589 150 4.5575608291367589 154 4.5575608291367589 
		159 4.5575608291367589 164 4.5575608291367589 169 4.5575608291367589 172 4.5575608291367589 
		175 4.5575608291367589 179 4.5575608291367589 190 4.5575608291367589 207 4.5575608291367589 
		215 4.5575608291367589 220 4.5575608291367589 225 -16.771032818447001 229 -20.730298840083044 
		232 -20.730298840083044 235 -20.730298840083044 239 -20.730298840083044 242 -20.730298840083044 
		246 -20.730298840083044 251 -17.130966093141183 259 4.5575608291367589 300 4.5575608291367589 
		307 4.5575608291367589 312 4.5575608291367589 316 4.5575608291367589 318 4.5575608291367589 
		322 4.5575608291367589 328 4.5575608291367589 330 4.5575608291367589 332 6.4086879027252168 
		333 12.117292707709678 335 13.756862401459474 344 13.756862401459474 348 18.238271392038154 
		359 16.598701698288394 371 4.5575608291367589 400 4.5575608291367589 404 4.5575608291367589 
		408 4.5575608291367589 412 4.5575608291367589 417 4.5575608291367589 421 4.5575608291367589 
		432 4.5575608291367589 436 4.5575608291367589 447 4.5575608291367589 459 4.5575608291367589 
		500 4.5575608291367589 542 4.5575608291367589 600 4.5575608291367589 629 4.5575608291367589;
	setAttr -s 71 ".kit[3:70]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 10 
		3 3 3 10 3 9 3 3 3 3 3 3 9 3 3 3 3 
		3 3 3 3 3 9 9 3 3 3 3 10 3 3 3 3 3 
		3 3 3 3 10 10 10 3 3;
	setAttr -s 71 ".kot[3:70]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 5 
		3 3 3 5 3 9 3 3 3 3 3 3 9 3 3 3 3 
		3 3 3 3 3 9 9 3 3 3 3 5 3 3 3 3 3 
		3 3 3 3 5 5 5 3 3;
createNode animCurveTU -n "Cube_R_Hand_visibility";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 1 1 1 5 1 16 1 22 1 30 1 40 1 45 1 50 
		1 54 1 61 1 68 1 74 1 78 1 81 1 89 1 95 1 100 1 109 1 120 1 139 1 150 1 154 1 159 
		1 164 1 169 1 172 1 175 1 179 1 190 1 207 1 215 1 220 1 225 1 229 1 232 1 235 1 239 
		1 242 1 246 1 251 1 259 1 300 1 307 1 312 1 316 1 318 1 322 1 328 1 330 1 332 1 333 
		1 335 1 344 1 348 1 360 1 371 1 400 1 404 1 408 1 412 1 417 1 421 1 432 1 436 1 447 
		1 459 1 500 1 542 1 600 1 629 1;
	setAttr -s 71 ".kit[18:70]"  9 3 9 3 9 9 9 9 
		9 9 3 3 3 9 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 9 3 3 3 
		3 3 3 3 3 3 9 9 9 3 3;
	setAttr -s 71 ".kot[18:70]"  5 3 5 3 5 5 5 5 
		5 5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_L_Arm_rotateX";
	setAttr ".tan" 3;
	setAttr -s 73 ".ktv[0:72]"  0 43.632327554989104 1 11.281331754195357 
		3 11.081918872973226 10 10.005089421347144 20 10.206015774046731 28 11.281331754195357 
		40 11.281331754195357 45 11.281331754195357 50 11.281331754195357 54 11.281331754195357 
		61 7.6562770302672485 68 7.6562770302672485 74 7.6562770302672485 78 7.6562770302672485 
		81 7.6562770302672485 89 7.6562770302672485 95 7.6562770302672485 100 7.6562770302672485 
		109 11.281331754195357 120 11.281331754195357 139 35.434435282722639 150 35.434435282722639 
		154 35.393845179674472 159 35.141480625940346 169 35.021475103884896 175 35.141480625940353 
		179 35.434435282722639 190 35.434435282722639 207 7.1608399173375075 215 11.281331754195357 
		220 11.281331754195357 225 16.02892020681352 229 26.029825656725183 232 41.586789689921112 
		235 55.478120029255962 239 27.551750484041182 242 -38.007857976207667 244 -49.15554371766715 
		245 -15.862589153653301 246 -40.762497246353014 251 -24.261210118610933 259 11.281331754195357 
		300 11.281331754195357 307 11.281331754195357 312 -22.999564942631743 316 -35.325629459620167 
		318 -35.325629459620167 322 42.780193686775071 328 -12.997449582672086 330 -20.919052925041381 
		332 -20.919052925041381 333 -71.114128410967226 335 -69.844818507446874 344 -69.844818507446874 
		348 -69.844818507446874 360 -69.844818507446874 371 11.281331754195357 400 11.281331754195357 
		404 11.281331754195357 408 45.347093793946158 412 23.880218054745125 417 17.983661777399668 
		421 20.556596488442974 432 11.529780410663012 436 11.529780410663012 447 11.281331754195357 
		459 11.281331754195357 500 11.281331754195357 505 -17.358023077963733 542 11.281331754195357 
		600 11.281331754195357 614 7.1247142323490937 629 11.281331754195357;
	setAttr -s 73 ".kit[4:72]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 3 3 9 9 3 9 3 3 3 
		10 3 9 9 9 3 9 9 3 3 9 9 3 3 3 9 3 
		3 3 9 3 3 3 3 3 3 10 10 3 3 3 9 3 3 
		3 3 3 10 10 10 10 3 3 3;
	setAttr -s 73 ".kot[0:72]"  5 3 3 3 9 3 3 3 
		3 3 3 3 3 3 3 3 3 3 5 3 5 3 9 9 3 
		9 3 3 3 5 3 9 9 9 3 9 9 3 3 9 9 3 
		3 3 9 3 3 3 9 3 3 3 3 3 3 5 5 3 3 
		3 9 3 3 3 3 3 5 5 5 5 3 3 3;
createNode animCurveTA -n "Cube_L_Arm_rotateY";
	setAttr ".tan" 3;
	setAttr -s 72 ".ktv[0:71]"  0 -22.77533981832801 1 -23.066038465627997 
		3 -23.241823214896606 10 -24.191060766648825 20 -23.928491877038798 28 -23.066038465627997 
		40 -23.066038465627997 45 -23.066038465627997 50 -23.066038465627997 54 -23.066038465627997 
		61 -22.144598376867975 68 -22.144598376867975 74 -22.144598376867975 78 -22.144598376867975 
		81 -22.144598376867975 89 -22.144598376867975 95 -22.144598376867975 100 -22.144598376867975 
		109 -23.066038465627997 120 -23.066038465627997 139 -21.777845022779189 150 -21.777845022779189 
		158 -18.544189433331084 163 -14.265390120097031 169 -12.313548494760335 175 -15.882217914821075 
		179 -21.777845022779189 190 -21.777845022779189 207 -19.585082642870507 215 -23.066038465627997 
		220 -23.066038465627997 225 -25.014877910231267 229 -15.013972460319604 232 0.54299157287631172 
		235 13.330502022794724 239 9.9217681143917709 242 -41.992608444028498 244 -60.91685977250873 
		245 -63.008871208061457 246 -51.495859293855709 251 -35.725408460784259 259 -23.066038465627997 
		300 -23.066038465627997 307 -23.066038465627997 312 -31.168294654901054 316 -52.416218602349026 
		318 -63.75839175731091 322 -78.029425480526555 328 -52.277267904930085 330 -36.134597854349146 
		333 -12.405379459686593 335 -8.0418671027049573 344 -8.0418671027049573 348 -8.0418671027049573 
		360 -8.0418671027049573 371 -23.066038465627997 400 -23.066038465627997 404 -23.066038465627997 
		408 -27.814963385769214 412 -41.619856267770061 415 -18.304067316202463 421 -11.433272531776243 
		432 -15.180514950742719 436 -17.632809954440472 447 -23.066038465627997 459 -23.066038465627997 
		500 -23.066038465627997 505 -19.033500503905508 542 -23.066038465627997 600 -23.066038465627997 
		614 -19.852200172509683 629 -23.066038465627997;
	setAttr -s 72 ".kit[4:71]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 3 3 9 9 3 9 3 3 3 
		10 3 3 9 9 3 9 9 9 3 9 9 3 3 3 9 9 
		9 3 9 9 9 3 3 3 10 10 3 3 9 3 9 3 9 
		9 3 10 10 10 10 3 3 3;
	setAttr -s 72 ".kot[4:71]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 3 9 9 3 9 3 3 3 
		5 3 3 9 9 3 9 9 9 3 9 9 3 3 3 9 9 
		9 3 9 9 9 3 3 3 5 5 3 3 9 3 9 3 9 
		9 3 5 5 5 5 3 3 3;
createNode animCurveTA -n "Cube_L_Arm_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 73 ".ktv[0:72]"  0 -84.320884343422406 1 -43.790126658756044 
		3 -43.687040379214352 10 -43.130374524988994 20 -43.567010507469817 28 -43.790126658756044 
		40 -43.790126658756044 45 -43.790126658756044 50 -43.790126658756044 54 -43.790126658756044 
		61 -34.791819211550717 68 -34.791819211550717 74 -34.791819211550717 78 -34.791819211550717 
		81 -34.791819211550717 89 -34.791819211550717 95 -34.791819211550717 100 -34.791819211550717 
		109 -43.790126658756044 120 -43.790126658756044 139 -35.761506341759237 150 -35.761506341759237 
		154 -35.691512121727342 159 -35.465432837638907 169 -35.240970379101022 175 -35.488764244316222 
		179 -35.761506341759237 190 -35.761506341759237 207 -33.547426059698473 215 -43.790126658756044 
		220 -43.790126658756044 225 -38.031911167966648 229 -29.253476516118944 232 -20.475041864271233 
		235 -4.2959954886674092 239 24.233917129837653 242 25.324658460231344 244 44.780886994564291 
		245 7.0821234103155675 246 12.047287066890537 251 -26.156687210489174 259 -43.790126658756044 
		300 -43.790126658756044 307 -43.790126658756044 312 -16.760310884257553 316 5.749081809241992 
		318 -0.6308905904240667 322 -49.106235168835475 328 32.206414437757957 330 54.154982778385019 
		332 64.788270111161822 333 67.514938390920307 335 3.7915228408464463 344 3.7915228408464463 
		348 3.7915228408464463 360 3.7915228408464463 371 -43.790126658756044 400 -43.790126658756044 
		404 -43.790126658756044 408 -49.650815878213351 412 7.267322744344856 417 19.976455387699826 
		421 2.4414307749703719 432 -29.644358578822914 437 -37.351571447587347 447 -43.790126658756044 
		459 -43.790126658756044 500 -43.790126658756044 505 26.977961463907342 542 -43.790126658756044 
		600 -43.790126658756044 614 -37.150405073165985 629 -43.790126658756044;
	setAttr -s 73 ".kit[4:72]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 3 3 9 1 3 1 3 3 3 
		10 3 9 9 9 9 9 3 3 3 9 9 3 3 3 1 3 
		9 3 9 9 9 3 3 3 3 10 10 3 3 3 9 3 9 
		9 9 3 10 10 10 10 3 3 3;
	setAttr -s 73 ".kot[0:72]"  5 3 3 3 9 3 3 3 
		3 3 3 3 3 3 3 3 3 3 5 3 5 3 9 1 3 
		1 3 3 3 5 3 9 9 9 9 9 3 3 3 9 9 3 
		3 3 1 3 9 3 9 9 9 3 3 3 3 5 5 3 3 
		3 9 3 9 9 9 3 5 5 5 5 3 3 3;
	setAttr -s 73 ".kix[23:72]"  0.13546007871627808 0.33333301544189453 
		0.18334493041038513 0.13333320617675781 0.36666679382324219 0.56666660308837891 0.26666641235351563 
		0.16666698455810547 0.16666650772094727 0.13333320617675781 0.099999904632568359 
		0.10000038146972656 0.13333320617675781 0.099999904632568359 0.066666603088378906 
		0.033333778381347656 0.03333282470703125 0.16666698455810547 0.26666641235351563 
		1.3666667938232422 0.23333358764648438 0.14529512822628021 0.13333415985107422 0.066666603088378906 
		0.13333320617675781 0.19999980926513672 0.066666603088378906 0.066666603088378906 
		0.033333778381347656 0.066666603088378906 0.29999923706054688 0.13333415985107422 
		0.39999961853027344 0.36666679382324219 0.96666622161865234 0.13333320617675781 0.13333415985107422 
		0.13333320617675781 0.16666603088378906 0.13333415985107422 0.36666584014892578 0.16666698455810547 
		0.33333301544189453 0.40000057220458984 1.3666658401489258 0.16666793823242188 1.2333335876464844 
		1.9333324432373047 0.46666717529296875 0.5;
	setAttr -s 73 ".kiy[23:72]"  0.004178706556558609 0 -0.0074307643808424473 
		0 0 0 0 0 0.14095133543014526 0.17510010302066803 0.21779458224773407 0.33442315459251404 
		0.2954159677028656 0 0 0 -0.096686400473117828 -0.37482631206512451 0 0 0 0.66659057140350342 
		0 -0.31913530826568604 0 1.3516862392425537 0.2843303382396698 0.15544940531253815 
		0 0 0 0 0 0 0 0 0 0.54010093212127686 0 -0.23094718158245087 -0.47748112678527832 
		-0.082296900451183319 0 0 0 0 0 0 0 0;
	setAttr -s 73 ".kox[23:72]"  0.30210626125335693 0.20000028610229492 
		0.11668556928634644 0.36666679382324219 0.56666660308837891 0.26666641235351563 0 
		0.16666650772094727 0.13333320617675781 0.099999904632568359 0.10000038146972656 
		0.13333320617675781 0.099999904632568359 0.066666603088378906 0.033333778381347656 
		0.03333282470703125 0.16666698455810547 0.26666641235351563 1.3666667938232422 0.23333358764648438 
		0.16666603088378906 0.11196620762348175 0.066666603088378906 0.13333320617675781 
		0.19999980926513672 0.066666603088378906 0.066666603088378906 0.033333778381347656 
		0.066666603088378906 0.29999923706054688 0.13333415985107422 0.39999961853027344 
		0 0 0.13333320617675781 0.13333415985107422 0.13333320617675781 0.16666603088378906 
		0.13333415985107422 0.36666584014892578 0.16666698455810547 0.33333301544189453 0.40000057220458984 
		0 0 0 0 0.46666717529296875 0.5 0.5;
	setAttr -s 73 ".koy[23:72]"  0.009319450706243515 0 -0.0047291354276239872 
		0 0 0 0 0 0.11276107281446457 0.13132508099079132 0.21779562532901764 0.44589540362358093 
		0.2215619683265686 0 0 0 -0.48344027996063232 -0.59972041845321655 0 0 0 0.51368266344070435 
		0 -0.63827061653137207 0 0.45056205987930298 0.2843303382396698 0.077725812792778015 
		0 0 0 0 0 0 0 0 0 0.67512422800064087 0 -0.63509941101074219 -0.21703778207302094 
		-0.16459332406520844 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Cube_L_Elbow_rotateX";
	setAttr ".tan" 3;
	setAttr -s 72 ".ktv[0:71]"  0 0 1 0 3 0 10 0 20 0 28 0 40 0 45 0 50 
		0 54 0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 
		0 164 0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 
		0 242 0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 
		0 335 0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 
		0 459 0 500 0 508 -7.7222113779911563 542 0 600 0 629 0;
	setAttr -s 72 ".kit[3:71]"  10 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 3 3 3 3 3 3 3 3 
		3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 10 10 3 3 3 3 3 
		3 3 3 3 10 10 10 10 3 3;
	setAttr -s 72 ".kot[3:71]"  5 5 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 3 3 3 3 3 3 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 5 5 3 3 3 3 3 
		3 3 3 3 5 5 5 5 3 3;
createNode animCurveTA -n "Cube_L_Elbow_rotateY";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  0 -18 1 -24.60075448093777 3 -23.581352278436253 
		10 -20.090480245959203 20 -18.975439625394721 28 -24.60075448093777 40 -24.60075448093777 
		45 -24.60075448093777 50 -24.60075448093777 54 -24.60075448093777 61 -24.60075448093777 
		68 -24.60075448093777 74 -24.60075448093777 78 -24.60075448093777 81 -24.60075448093777 
		89 -24.60075448093777 95 -24.60075448093777 100 -24.60075448093777 109 -24.60075448093777 
		120 -24.60075448093777 139 -35.243491083937499 150 -35.243491083937499 154 -33.702622107669917 
		161 -27.674574863604143 169 -24.850790476835442 175 -30.295696703658447 179 -35.243491083937499 
		190 -35.243491083937499 207 -24.60075448093777 215 -24.60075448093777 220 -24.60075448093777 
		225 -51.089525026465367 229 -51.089525026465367 232 -51.089525026465367 235 -51.089525026465367 
		239 -38.590834028987977 242 -19.797658583023789 246 5.382169832023572 251 -2.5715426209165568 
		259 -24.60075448093777 300 -24.60075448093777 307 -24.60075448093777 312 -24.60075448093777 
		316 -24.60075448093777 318 -24.60075448093777 322 -24.60075448093777 328 -24.60075448093777 
		330 -24.60075448093777 332 -24.60075448093777 333 -20.87354433042006 341 -1.768867740193268 
		344 1.664088977388845 348 1.664088977388845 360 1.664088977388845 371 -24.60075448093777 
		400 -24.60075448093777 404 -24.60075448093777 408 -24.60075448093777 412 -24.60075448093777 
		417 3.5459932019454521 427 -37.640492979941776 432 -34.632452067431245 438 -28.945662567351238 
		447 -24.60075448093777 459 -24.60075448093777 500 -24.60075448093777 508 -23.429253369978444 
		542 -24.60075448093777 600 -24.60075448093777 629 -24.60075448093777;
	setAttr -s 70 ".kit[3:69]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 3 3 9 9 3 9 3 3 
		3 10 3 3 3 3 3 9 9 3 9 3 3 3 3 3 3 
		3 3 3 3 9 9 3 3 10 10 3 3 3 3 3 3 9 
		9 3 10 10 10 10 3 3;
	setAttr -s 70 ".kot[3:69]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 9 9 3 9 3 3 
		3 5 3 3 3 3 3 9 9 3 9 3 3 3 3 3 3 
		3 3 3 3 9 9 3 3 5 5 3 3 3 3 3 3 9 
		9 3 5 5 5 5 3 3;
createNode animCurveTA -n "Cube_L_Elbow_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 72 ".ktv[0:71]"  0 0 1 0 3 0 10 0 20 0 28 0 40 0 45 0 50 
		0 54 0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 
		0 164 0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 
		0 242 0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 
		0 335 0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 
		0 459 0 500 0 508 18.831038426044465 542 0 600 0 629 0;
	setAttr -s 72 ".kit[3:71]"  10 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 3 3 3 3 3 3 3 3 
		3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 10 10 3 3 3 3 3 
		3 3 3 3 10 10 10 10 3 3;
	setAttr -s 72 ".kot[3:71]"  5 5 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 3 3 3 3 3 3 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 5 5 3 3 3 3 3 
		3 3 3 3 5 5 5 5 3 3;
createNode animCurveTA -n "Cube_L_Hand_rotateX";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 1.30067216895028 3 1.30067216895028 
		10 1.3452632402224469 20 1.2125056404934409 28 1.30067216895028 40 1.30067216895028 
		45 1.30067216895028 50 1.30067216895028 54 1.30067216895028 61 1.30067216895028 68 
		1.30067216895028 74 1.30067216895028 78 1.30067216895028 81 1.30067216895028 89 1.30067216895028 
		95 1.30067216895028 100 1.30067216895028 109 1.30067216895028 120 1.30067216895028 
		139 1.30067216895028 150 1.30067216895028 154 1.30067216895028 159 1.30067216895028 
		164 1.30067216895028 169 1.30067216895028 172 1.30067216895028 175 1.30067216895028 
		179 1.30067216895028 190 1.30067216895028 207 1.30067216895028 215 1.30067216895028 
		220 1.30067216895028 225 1.30067216895028 229 1.30067216895028 232 1.30067216895028 
		235 1.30067216895028 239 1.30067216895028 242 1.30067216895028 246 1.30067216895028 
		251 1.30067216895028 259 1.30067216895028 300 1.30067216895028 307 1.30067216895028 
		312 1.30067216895028 316 1.30067216895028 318 1.30067216895028 322 1.30067216895028 
		328 1.30067216895028 330 1.30067216895028 332 1.30067216895028 333 3.8443864724890857 
		335 11.855841611091416 344 -6.7209810299041122 348 -6.7209810299041122 360 -6.7209810299041122 
		371 1.30067216895028 400 1.30067216895028 404 1.30067216895028 408 1.30067216895028 
		412 1.30067216895028 417 1.1498555883338268 421 1.1498555883338268 432 1.2956407111971309 
		436 1.2956407111971309 447 1.30067216895028 459 1.30067216895028 500 1.30067216895028 
		542 1.30067216895028 600 1.30067216895028 629 1.30067216895028;
	setAttr -s 71 ".kit[18:70]"  10 3 10 3 10 10 10 10 
		10 10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 3 3 3 3 10 3 3 3 
		3 3 3 3 3 3 10 10 10 3 3;
	setAttr -s 71 ".kot[18:70]"  5 3 5 3 5 5 5 5 
		5 5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_L_Hand_rotateY";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 -48.716213845316425 1 -31.9462432160697 
		3 -32.085894800801071 10 -32.529362164817137 20 -30.491348219704346 28 -31.9462432160697 
		40 -31.9462432160697 45 -31.9462432160697 50 -31.9462432160697 54 -31.9462432160697 
		61 -31.9462432160697 68 -31.9462432160697 74 -31.9462432160697 78 -31.9462432160697 
		81 -31.9462432160697 89 -31.9462432160697 95 -31.9462432160697 100 -31.9462432160697 
		109 -31.9462432160697 120 -31.9462432160697 139 -31.9462432160697 150 -31.9462432160697 
		154 -31.9462432160697 159 -31.9462432160697 164 -31.9462432160697 169 -31.9462432160697 
		172 -31.9462432160697 175 -31.9462432160697 179 -31.9462432160697 190 -31.9462432160697 
		207 -31.9462432160697 215 -31.9462432160697 220 -31.9462432160697 225 -31.9462432160697 
		229 -31.9462432160697 232 -31.9462432160697 235 -31.9462432160697 239 -31.9462432160697 
		242 -31.9462432160697 246 -31.9462432160697 251 -31.9462432160697 259 -31.9462432160697 
		300 -31.9462432160697 307 -31.9462432160697 312 -31.9462432160697 316 -31.9462432160697 
		318 -31.9462432160697 322 -31.9462432160697 328 -31.9462432160697 330 -31.9462432160697 
		332 -31.9462432160697 333 -31.616581134378116 335 -29.909100608693869 344 -31.328926555500662 
		348 -31.328926555500662 360 -31.328926555500662 371 -31.9462432160697 400 -31.9462432160697 
		404 -31.9462432160697 408 -31.9462432160697 412 -31.9462432160697 417 -16.296349221221757 
		421 -17.758277778429512 430 -28.835062690731469 436 -31.587682332769397 447 -31.9462432160697 
		459 -31.9462432160697 500 -31.9462432160697 542 -31.9462432160697 600 -31.9462432160697 
		629 -31.9462432160697;
	setAttr -s 71 ".kit[18:70]"  10 3 10 3 3 3 3 3 
		3 3 3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 3 3 3 3 10 3 3 3 
		3 3 9 9 9 3 10 10 10 3 3;
	setAttr -s 71 ".kot[18:70]"  5 3 5 3 3 3 3 3 
		3 3 3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 3 3 3 3 5 3 3 3 
		3 3 9 9 9 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_L_Hand_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 0 1 0.35274945107783912 3 0.35274945107783912 
		10 0.30961070847801209 20 0.45257202160648191 28 0.35274945107783912 40 0.35274945107783912 
		45 0.35274945107783912 50 0.35274945107783912 54 0.35274945107783912 61 0.35274945107783912 
		68 0.35274945107783912 74 0.35274945107783912 78 0.35274945107783912 81 0.35274945107783912 
		89 0.35274945107783912 95 0.35274945107783912 100 0.35274945107783912 109 0.35274945107783912 
		120 0.35274945107783912 139 0.35274945107783912 150 0.35274945107783912 154 0.35274945107783912 
		159 0.35274945107783912 164 0.35274945107783912 169 0.35274945107783912 172 0.35274945107783912 
		175 0.35274945107783912 179 0.35274945107783912 190 0.35274945107783912 207 0.35274945107783912 
		215 0.35274945107783912 220 0.35274945107783912 225 0.35274945107783912 229 0.35274945107783912 
		232 0.35274945107783912 235 0.35274945107783912 239 0.35274945107783912 242 0.35274945107783912 
		246 0.35274945107783912 251 0.35274945107783912 259 0.35274945107783912 300 0.35274945107783912 
		307 0.35274945107783912 312 0.35274945107783912 316 0.35274945107783912 318 0.35274945107783912 
		322 0.35274945107783912 328 0.35274945107783912 330 0.35274945107783912 332 0.35274945107783912 
		333 -7.6244267530606393 335 -20.021941576161424 344 15.579900371938104 348 15.579900371938104 
		360 15.579900371938104 371 0.35274945107783912 400 0.35274945107783912 404 0.35274945107783912 
		408 0.35274945107783912 412 0.35274945107783912 417 0.71835484437587838 421 0.71835484437587838 
		432 0.36230645273197709 436 0.36230645273197709 447 0.35274945107783912 459 0.35274945107783912 
		500 0.35274945107783912 542 0.35274945107783912 600 0.35274945107783912 629 0.35274945107783912;
	setAttr -s 71 ".kit[18:70]"  10 3 10 3 10 10 10 10 
		10 10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 3 3 3 3 10 3 3 3 
		3 3 3 3 3 3 10 10 10 3 3;
	setAttr -s 71 ".kot[18:70]"  5 3 5 3 5 5 5 5 
		5 5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 3 3 3 3 5 3 3 3 
		3 3 3 3 3 3 5 5 5 3 3;
createNode animCurveTU -n "Cube_L_Hand_visibility";
	setAttr ".tan" 3;
	setAttr -s 71 ".ktv[0:70]"  0 1 1 1 3 1 10 1 20 1 28 1 40 1 45 1 50 
		1 54 1 61 1 68 1 74 1 78 1 81 1 89 1 95 1 100 1 109 1 120 1 139 1 150 1 154 1 159 
		1 164 1 169 1 172 1 175 1 179 1 190 1 207 1 215 1 220 1 225 1 229 1 232 1 235 1 239 
		1 242 1 246 1 251 1 259 1 300 1 307 1 312 1 316 1 318 1 322 1 328 1 330 1 332 1 333 
		1 335 1 344 1 348 1 360 1 371 1 400 1 404 1 408 1 412 1 417 1 421 1 432 1 436 1 447 
		1 459 1 500 1 542 1 600 1 629 1;
	setAttr -s 71 ".kit[3:70]"  9 9 3 3 3 3 3 3 
		3 3 3 3 3 3 3 9 3 9 3 9 9 9 9 9 9 
		3 3 3 9 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 9 3 3 3 3 3 
		3 3 3 3 9 9 9 3 3;
	setAttr -s 71 ".kot[3:70]"  5 5 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 5 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 3 
		3 3 3 3 5 5 5 3 3;
createNode animCurveTL -n "Const_Joint_L_Front_Ankle_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 80 ".ktv[0:79]"  1 -0.24062196079385464 10 -0.24790230192565046 
		21 -0.25422847678249044 31 -0.24062196079385464 40 -0.24062196079385464 45 -0.3276436745241203 
		50 -0.3276436745241203 54 -0.3276436745241203 61 -0.3276436745241203 68 -0.3276436745241203 
		74 -0.3276436745241203 78 -0.3276436745241203 81 -0.3276436745241203 89 -0.3276436745241203 
		95 -0.3276436745241203 100 -0.3276436745241203 109 -0.24062196079385464 120 -0.24062196079385464 
		134 -0.062383811279918516 139 0 150 0 153 0 154 0 158 0.046561180871120357 159 0.20701886582674056 
		163 0.15310591955491701 164 -0.011049655234920819 168 -0.011049655234920819 169 0 
		171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 -0.24062196079385464 215 -0.24062196079385464 
		220 -0.24062196079385464 225 -0.39012465669232588 229 -0.40790822132421134 232 -0.40790822132421134 
		235 -0.40790822132421134 239 -0.40790822132421134 242 -0.34620757254601803 246 -0.28396509633441908 
		251 -0.26618153170253367 259 -0.24062196079385464 300 -0.24062196079385464 307 -0.24062196079385464 
		312 -0.24062196079385464 316 -0.67430832854567024 318 -0.67430832854567024 322 -0.67430832854567024 
		328 -0.3849008527719433 330 -0.88550085040750137 332 -1.0315942695599605 333 -3.7463882215635791 
		335 -3.7463882215635791 344 -3.7463882215635791 348 -3.7463882215635791 360 -3.7463882215635791 
		371 -0.24062196079385464 400 -0.24062196079385464 404 -0.24062196079385464 412 0.044365378805502731 
		417 -0.39306042854932988 421 -0.56375588656706055 431 -0.63151932501433405 436 -0.52569186616989227 
		447 -0.24062196079385464 459 -0.24062196079385464 500 -0.24062196079385464 505 -0.54967392872209031 
		542 -0.24062196079385464 600 -0.24062196079385464 607 -0.2143005552891219 615 -0.2806164103927149 
		619 -0.25705161628182066 626 -0.24062196079385464;
	setAttr -s 80 ".kit[1:79]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 3 3 3 9 3 9 
		3 3 3 3 3 3 3 3 3 3 3 10 3 9 3 3 3 
		3 9 9 9 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 10 10 3 3 3 9 9 3 9 3 10 10 10 10 3 3 
		3 9 3;
	setAttr -s 80 ".kot[1:79]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 5 3 3 3 9 3 9 
		3 3 3 3 3 3 3 3 3 3 3 5 3 9 3 3 3 
		3 9 9 9 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 5 5 3 3 3 9 9 3 9 3 5 5 5 5 3 3 
		3 9 3;
createNode animCurveTL -n "Const_Joint_L_Front_Ankle_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 75 ".ktv[0:74]"  1 0.38642433223333589 10 0.40364680900396388 
		21 0.35905302019983759 31 0.38642433223333589 44 0.38642433223333589 49 0.24284426529373063 
		54 0 61 0 68 0 74 0 100 0 109 0.38642433223333589 120 0.38642433223333589 128 0 137 
		0 139 0 150 0 153 0 154 0 158 0 159 0.25616270578122502 164 0.35091809968262994 168 
		0.25294279082963284 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 -0.017122014772641758 
		215 0.38642433223333589 220 0.38642433223333589 225 0.38642433223333589 229 0.39976200570724996 
		232 0.4442209172869635 235 0.46645037307682014 239 0.35530309412753669 242 0.078700721735415757 
		246 0.10509444652479152 251 0.21624172547407502 259 0.38642433223333589 300 0.38642433223333589 
		307 0.38642433223333589 312 0.53401602003400117 316 0.53401602003400117 318 0.53401602003400117 
		322 0.91386586688093385 328 1.3868178616393148 330 1.3868178616393148 332 0.6116324695112374 
		333 0.46572916714241785 335 0.46572916714241785 344 0.46572916714241785 348 0.46572916714241785 
		360 0.46572916714241785 371 0.38642433223333589 400 0.38642433223333589 404 0.38642433223333589 
		408 0.38642433223333589 412 0.52692457739361565 417 0.34576216035690077 421 0.31399255068866749 
		432 0.32760809768933885 436 0.34576216035690077 447 0.38642433223333589 459 0.38642433223333589 
		500 0.38642433223333589 505 0.6746024176003006 542 0.38642433223333589 600 0.38642433223333589 
		607 0.37366394570261285 619 0.34908151373513613 626 0.38642433223333589;
	setAttr -s 75 ".kit[5:74]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 9 3 9 3 3 3 3 3 3 3 
		3 3 10 3 3 9 9 3 9 3 9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 10 10 3 3 3 3 9 3 
		10 9 3 10 10 10 10 3 9 3 3;
	setAttr -s 75 ".kot[5:74]"  9 3 3 3 3 3 3 3 
		3 3 5 3 3 3 3 9 3 9 3 3 3 3 3 3 3 
		3 3 5 3 3 9 9 3 9 3 9 9 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 5 5 3 3 3 3 9 3 
		10 9 3 5 5 5 5 3 9 3 3;
createNode animCurveTL -n "Const_Joint_L_Front_Ankle_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 -0.040298224937952924 10 -0.065400457500915068 
		21 -0.058523777263133306 31 -0.040298224937952924 40 -0.040298224937952924 45 -0.040298224937952924 
		50 -0.040298224937952924 54 -0.040298224937952924 61 -0.040298224937952924 68 -0.040298224937952924 
		74 -0.040298224937952924 78 -0.040298224937952924 81 -0.040298224937952924 89 -0.040298224937952924 
		95 -0.040298224937952924 100 -0.040298224937952924 109 -0.040298224937952924 120 
		-0.040298224937952924 134 -0.13705461586636905 139 -0.17091960183185892 150 -0.17091960183185892 
		153 -0.17091960183185892 154 -0.17091960183185892 158 -0.17091960183185892 159 -0.17091960183185892 
		163 -0.16329194351196197 164 -0.14689686183586165 168 -0.14689686183586165 169 -0.16329194351196197 
		171 -0.17091960183185892 172 -0.17091960183185892 174 -0.17091960183185892 175 -0.17091960183185892 
		178 -0.17091960183185892 179 -0.17091960183185892 190 -0.17091960183185892 207 -0.040298224937952924 
		215 -0.040298224937952924 220 -0.040298224937952924 225 -0.066973571885781014 229 
		-0.20322684104723837 232 -0.20322684104723837 235 -0.20322684104723837 239 -0.20322684104723837 
		242 -0.20322684104723837 246 -0.20322684104723837 251 -0.20322684104723837 259 -0.040298224937952924 
		300 -0.040298224937952924 307 -0.040298224937952924 312 -0.31430156256851688 316 
		-0.31430156256851688 318 -0.31430156256851688 322 -0.20270547000820899 328 -0.20270547000820899 
		330 -0.20270547000820899 332 0.30890839685568683 333 0.30890839685568683 335 0.30890839685568683 
		344 0.30890839685568683 348 0.30890839685568683 360 0.30890839685568683 371 -0.040298224937952924 
		400 -0.040298224937952924 404 -0.040298224937952924 408 -0.19881274842423918 412 
		-0.27132786440354223 417 0.082396609482861913 421 0.22794233567294628 432 0.13957528762896651 
		436 0.082396609482861913 447 -0.040298224937952924 459 -0.040298224937952924 500 
		-0.040298224937952924 542 -0.040298224937952924 600 -0.040298224937952924 626 -0.040298224937952924;
	setAttr -s 77 ".kit[2:76]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 9 3 
		3 9 3 3 3 3 3 3 3 3 10 3 9 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		10 10 3 3 9 3 9 3 9 9 3 10 10 10 3 3;
	setAttr -s 77 ".kot[2:76]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 9 3 
		3 9 3 3 3 3 3 3 3 3 5 3 9 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		5 5 3 3 9 3 9 3 9 9 3 5 5 5 3 3;
createNode animCurveTL -n "Const_Joint_L_Middle_Ankle_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 76 ".ktv[0:75]"  1 0.15400423582807893 10 0.13453826823394094 
		21 0.13906616633295374 31 0.15400423582807893 40 0.15400423582807893 45 0.15400423582807893 
		50 0.15400423582807893 54 0.15400423582807893 61 0.15400423582807893 68 0.15400423582807893 
		74 0.15400423582807893 78 0.15400423582807893 81 0.15400423582807893 89 0.15400423582807893 
		95 0.15400423582807893 100 0.15400423582807893 109 0.15400423582807893 120 0.15400423582807893 
		134 0.15400423582807893 139 0.15400423582807893 150 0.15400423582807893 153 0.15400423582807893 
		154 0.15400423582807893 158 0.15400423582807893 159 0.15400423582807893 163 0.15400423582807893 
		164 0.15400423582807893 168 0.15400423582807893 169 0.15400423582807893 171 0.15400423582807893 
		172 0.12874126508743416 174 0.11275069479522468 175 0.11275069479522468 178 0.12874126508743416 
		179 0.15400423582807893 190 0.15400423582807893 207 0.15400423582807893 215 0.15400423582807893 
		220 0.15400423582807893 225 -0.04488714057319821 229 -0.04488714057319821 232 -0.04488714057319821 
		235 -0.04488714057319821 239 -0.04488714057319821 242 -0.04488714057319821 246 -0.04488714057319821 
		251 -0.04488714057319821 259 0.15400423582807893 300 0.15400423582807893 307 0.15400423582807893 
		312 0.15400423582807893 316 0.15400423582807893 318 0.15400423582807893 322 -0.031289084660332478 
		328 -0.41831996987257958 330 -1.2933438137476221 332 -1.7926962889242237 335 -2.2293765139836457 
		344 -2.5345655124351465 348 -2.5345655124351465 360 -2.5345655124351465 371 0.15400423582807893 
		400 0.15400423582807893 404 0.15400423582807893 408 0.15400423582807893 412 0.15400423582807893 
		417 0.15400423582807893 421 0.15400423582807893 432 0.15400423582807893 436 0.15400423582807893 
		447 0.15400423582807893 459 0.15400423582807893 500 0.15400423582807893 542 0.15400423582807893 
		600 0.15400423582807893 626 0.15400423582807893;
	setAttr -s 76 ".kit[2:75]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 3 3 
		3 3 3 9 3 3 9 3 3 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 9 9 9 9 9 3 3 10 
		10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 76 ".kot[2:75]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 3 3 
		3 3 3 9 3 3 9 3 3 3 5 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 9 9 9 9 9 3 3 5 
		5 3 3 3 3 3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_L_Middle_Ankle_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 74 ".ktv[0:73]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 137 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0.33879349683171922 172 0.47951051540316253 177 
		0.33879349683171922 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0.14819177056883207 328 0.27104441949100061 
		330 0.28657872961015513 332 0.21972571641879457 333 0.0049047006972235251 335 -0.043229468800555906 
		344 -0.043229468800555906 348 -0.043229468800555906 360 -0.043229468800555906 371 
		0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 
		0;
	setAttr -s 74 ".kit[0:73]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 3 3 3 3 3 3 3 
		3 3 3 9 3 9 3 3 3 10 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 9 3 9 9 3 3 3 10 
		10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 74 ".kot[0:73]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 3 5 3 3 3 3 3 
		3 3 3 9 3 9 3 3 3 5 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 9 9 3 9 9 3 3 3 5 
		5 3 3 3 3 3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_L_Middle_Ankle_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0.07614494709922788 10 0.07614494709922788 
		21 0.07614494709922788 31 0.07614494709922788 40 0.07614494709922788 45 0.07614494709922788 
		50 0.07614494709922788 54 0.07614494709922788 61 0.07614494709922788 68 0.07614494709922788 
		74 0.07614494709922788 78 0.07614494709922788 81 0.07614494709922788 89 0.07614494709922788 
		95 0.07614494709922788 100 0.07614494709922788 109 0.07614494709922788 120 0.07614494709922788 
		134 -0.034125553435312886 139 -0.072720512560778258 150 -0.072720512560778258 153 
		-0.072720512560778258 154 -0.072720512560778258 158 -0.072720512560778258 159 -0.072720512560778258 
		163 -0.072720512560778258 164 -0.072720512560778258 168 -0.072720512560778258 169 
		-0.072720512560778258 171 -0.072720512560778258 172 -0.031989896741791084 174 -0.016639162136645201 
		175 -0.016639162136645201 178 -0.031989896741791084 179 -0.072720512560778258 190 
		-0.072720512560778258 207 0.07614494709922788 215 0.07614494709922788 220 0.07614494709922788 
		225 -0.11210724089490615 229 -0.11210724089490615 232 -0.11210724089490615 235 -0.11210724089490615 
		239 -0.11210724089490615 242 -0.11210724089490615 246 -0.11210724089490615 251 -0.11210724089490615 
		259 0.07614494709922788 300 0.07614494709922788 307 0.07614494709922788 312 0.07614494709922788 
		316 0.07614494709922788 318 0.07614494709922788 322 0.07614494709922788 328 0.07614494709922788 
		330 0.07614494709922788 332 0.07614494709922788 333 0.07614494709922788 335 0.07614494709922788 
		344 0.07614494709922788 348 0.07614494709922788 360 0.07614494709922788 371 0.07614494709922788 
		400 0.07614494709922788 404 0.07614494709922788 408 0.07614494709922788 412 0.07614494709922788 
		417 0.07614494709922788 421 0.07614494709922788 432 0.07614494709922788 436 0.07614494709922788 
		447 0.07614494709922788 459 0.07614494709922788 500 0.07614494709922788 542 0.07614494709922788 
		600 0.07614494709922788 626 0.07614494709922788;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 9 3 3 9 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 9 3 3 9 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTL -n "Const_Joint_R_Front_Ankle_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 68 ".ktv[0:67]"  1 0.43486125759194566 21 0.46057253040353507 
		31 0.43486125759194566 40 0.43486125759194566 45 0.43486125759194566 50 0.43486125759194566 
		54 0.43486125759194566 61 0.43486125759194566 68 0.43486125759194566 74 0.43486125759194566 
		78 0.43486125759194566 81 0.43486125759194566 89 0.43486125759194566 95 0.43486125759194566 
		100 0.43486125759194566 109 0.43486125759194566 120 0.43486125759194566 134 0.11274242191802801 
		139 0 150 0 153 0 154 0.013108976502546124 164 0.20580432753682157 168 0.20580432753682157 
		178 0.013108976502546124 179 0 190 0 207 0.43486125759194566 215 0.43486125759194566 
		220 0.43486125759194566 225 0.60015105498252797 232 0.6392607288829929 239 0.60015105498252797 
		242 0.48289169677586219 246 0.44867073211295533 251 0.44867073211295533 259 0.43486125759194566 
		300 0.43486125759194566 307 0.43486125759194566 312 0.48353029247635537 316 0.81894596913749174 
		318 0.87065681870217693 322 0.83111322785859409 328 0.73124226144651827 330 0.83002737530070048 
		332 0.94865814783144897 333 1.1425901398694049 335 1.1851755453932649 344 1.1851755453932649 
		348 1.1851755453932649 360 1.1851755453932649 371 0.43486125759194566 400 0.43486125759194566 
		404 0.34526388495715515 412 -0.11436687635235063 420 0.0099064408074058061 432 0.32182012379129132 
		436 0.40315535928486296 447 0.43486125759194566 459 0.43486125759194566 500 0.43486125759194566 
		505 0.60206532404904134 508 0.12839603274209443 542 0.43486125759194566 600 0.43486125759194566 
		607 0.24749596945340915 619 0.34568316757648587 626 0.43486125759194566;
	setAttr -s 68 ".kit[2:67]"  10 3 3 3 3 3 3 3 
		3 3 3 3 3 10 3 10 3 3 3 9 3 3 9 3 3 
		3 10 3 9 3 9 9 3 3 3 3 3 9 9 3 9 3 
		9 9 9 3 3 3 10 10 3 9 3 9 9 9 3 10 10 
		10 10 10 3 3 9 3;
	setAttr -s 68 ".kot[2:67]"  5 3 3 3 3 3 3 3 
		3 3 3 3 3 5 3 5 5 3 3 9 3 3 9 3 3 
		3 5 3 9 3 9 9 3 3 3 3 3 9 9 3 9 3 
		9 9 9 3 3 3 5 5 3 9 3 9 9 9 3 5 5 
		5 5 5 3 3 9 3;
createNode animCurveTL -n "Const_Joint_R_Front_Ankle_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 82 ".ktv[0:81]"  1 0.44196105567322597 10 0.41743246102239157 
		21 0.40778595599520184 31 0.44196105567322597 40 0.442 45 0.076892910940012646 50 
		0 54 0 61 0 68 0 74 0 78 0 81 0 86 0 92 0.026915082612608731 97 0.10796436711694625 
		106 0.442 120 0.44196105567322597 128 0 137 0 139 0.3983563802335276 150 0.3983563802335276 
		156 0.28048824211010931 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 
		0.2860200016516033 179 0.3983563802335276 190 0.3983563802335276 197 0 207 -0.025556545742003618 
		215 0.44196105567322597 220 0.44196105567322597 225 0.44196105567322597 229 0.57358732000098867 
		232 0.69091634170238347 235 0.74469214331552258 239 0.18249058099633961 242 0.08387629734607191 
		246 0.16948361323835387 251 0.3601432735031202 259 0.44196105567322597 300 0.44196105567322597 
		307 0.45762149725425877 312 0.50786022443711132 316 0.56528184356756461 318 0.62792360989169582 
		322 0.92425110163978696 328 1.6308901905949909 330 1.1179535510594218 332 0.74020426048270083 
		333 0.41633594353268133 335 0.34325388282119546 344 0.34325388282119546 348 0.34325388282119546 
		360 0.34325388282119546 371 0.44196105567322597 400 0.44196105567322597 404 0.44196105567322597 
		408 0.73678010033769548 412 0.81205129186203351 417 0.2164808709197609 426 0.06288537497440537 
		432 0.10768406129180061 436 0.2164808709197609 447 0.44196105567322597 459 0.44196105567322597 
		500 0.44196105567322597 505 0.73552103738102115 508 0.53130325484800578 511 0 542 
		0.44196105567322597 600 0.44196105567322597 607 0.3963412812781687 619 0.49295480796819485 
		626 0.44196105567322597;
	setAttr -s 82 ".kit[1:81]"  9 3 3 3 9 3 3 3 
		3 3 3 3 3 9 9 10 3 3 3 3 3 9 3 3 3 
		3 3 3 3 3 3 9 3 3 3 3 10 3 3 9 9 3 
		9 3 9 9 3 3 9 9 9 9 9 3 9 9 9 3 3 
		3 10 10 3 3 9 3 9 3 9 9 3 10 10 10 10 10 
		10 3 3 3 3;
	setAttr -s 82 ".kot[1:81]"  9 3 3 3 9 3 3 3 
		3 3 3 3 3 9 9 5 3 3 3 5 3 9 3 3 3 
		3 3 3 3 3 3 9 3 3 3 3 5 3 3 9 9 3 
		9 3 9 9 3 3 9 9 9 9 9 3 9 9 9 3 3 
		3 5 5 3 3 9 3 9 3 9 9 3 5 5 5 5 5 
		5 3 3 3 3;
createNode animCurveTL -n "Const_Joint_R_Front_Ankle_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 62 ".ktv[0:61]"  1 0.22987371621942196 10 0.22987371621942196 
		21 0.22987371621942196 31 0.22987371621942196 40 0.22987371621942196 45 0.22987371621942196 
		50 0.22987371621942196 54 0.22987371621942196 61 0.22987371621942196 68 0.22987371621942196 
		74 0.22987371621942196 78 0.22987371621942196 81 0.22987371621942196 89 0.22987371621942196 
		95 0.22987371621942196 100 0.22987371621942196 109 0.22987371621942196 120 0.22987371621942196 
		134 -0.061485360662457578 139 -0.16346178779917042 150 -0.16346178779917042 153 -0.16346178779917042 
		154 -0.15064404035036635 164 -0.012115602624553513 168 -0.012115602624553513 178 
		-0.15064404035036635 179 -0.16346178779917042 190 -0.16346178779917042 207 0.22987371621942196 
		215 0.22987371621942196 220 0.22987371621942196 225 -0.21463381794382422 232 -0.39551605973347442 
		240 -0.043411153560487505 252 0.15690808411059237 259 0.22987371621942196 300 0.22987371621942196 
		307 0.15486845045681757 312 -0.22030001690899062 316 -0.28346234597223652 318 -0.26767176370642504 
		322 -0.1718662534119286 328 -0.24292387360808021 330 -0.74387885683895361 332 -0.27999592183122057 
		333 -0.013860402560515735 335 0.029563698670465932 344 0.029563698670465932 348 0.029563698670465932 
		360 0.029563698670465932 371 0.22987371621942196 400 0.22987371621942196 404 0.22987371621942196 
		407 0.17617883430440587 421 -0.18746837987007833 435 0.073154202679215324 447 0.22987371621942196 
		459 0.22987371621942196 500 0.22987371621942196 542 0.22987371621942196 600 0.22987371621942196 
		626 0.22987371621942196;
	setAttr -s 62 ".kit[0:61]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 9 3 3 
		9 3 3 3 10 3 9 1 1 9 3 3 9 9 3 9 3 
		9 3 9 9 3 3 3 10 10 3 3 9 3 9 3 10 10 
		10 3 3;
	setAttr -s 62 ".kot[0:61]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 9 3 3 
		9 3 3 3 5 3 9 1 1 9 3 3 9 9 3 9 3 
		9 3 9 9 3 3 3 5 5 3 3 9 3 9 3 5 5 
		5 3 3;
	setAttr -s 62 ".kix[32:61]"  0.23333311080932617 0.26666736602783203 
		0.39999961853027344 0.23333358764648438 1.3666667938232422 0.23333358764648438 0.16666603088378906 
		0.13333415985107422 0.066666603088378906 0.13333320617675781 0.19999980926513672 
		0.066666603088378906 0.066666603088378906 0.033333778381347656 0.066666603088378906 
		0.29999923706054688 0.13333415985107422 0.39999961853027344 0.36666679382324219 0.96666622161865234 
		0.13333320617675781 0.10000038146972656 0.46666717529296875 0.46666622161865234 0.39999961853027344 
		0.40000057220458984 1.3666658401489258 1.4000015258789062 1.9333324432373047 0.86666679382324219;
	setAttr -s 62 ".kiy[32:61]"  0 8.981318473815918 5.2608737945556641 
		0 0 -8.0041055679321289 -7.4223685264587402 0 1.1338162422180176 0 -13.076208114624023 
		0 14.833904266357422 3.145155668258667 0 0 0 0 0 0 0 -2.2448146343231201 0 6.8495469093322754 
		0 0 0 0 0 0;
	setAttr -s 62 ".kox[32:61]"  0.26666736602783203 0.26666736602783203 
		0.23333358764648438 1.3666667938232422 0.23333358764648438 0.16666603088378906 0.13333415985107422 
		0.066666603088378906 0.13333320617675781 0.19999980926513672 0.066666603088378906 
		0.066666603088378906 0.033333778381347656 0.066666603088378906 0.29999923706054688 
		0.13333415985107422 0.39999961853027344 0 0 0.13333320617675781 0.10000038146972656 
		0.46666717529296875 0.46666622161865234 0.39999961853027344 0.40000057220458984 0 
		0 0 0.86666679382324219 0.86666679382324219;
	setAttr -s 62 ".koy[32:61]"  0 8.9813022613525391 3.0688493251800537 
		0 0 -5.7171902656555176 -5.9379544258117676 0 2.2676324844360352 0 -4.3587360382080078 
		0 7.417057991027832 6.2902216911315918 0 0 0 0 0 0 0 -10.475772857666016 0 5.8710403442382812 
		0 0 0 0 0 0;
createNode animCurveTL -n "Const_Joint_R_Middle_Ankle_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0.14489949359688462 10 0.16005802635233635 
		21 0.15502432587232937 31 0.14489949359688462 40 0.14489949359688462 45 0.14489949359688462 
		50 0.14489949359688462 54 0.14489949359688462 61 0.14489949359688462 68 0.14489949359688462 
		74 0.14489949359688462 78 0.14489949359688462 81 0.14489949359688462 89 0.14489949359688462 
		95 0.14489949359688462 100 0.14489949359688462 109 0.14489949359688462 120 0.14489949359688462 
		134 0.14489949359688462 139 0.14489949359688462 150 0.14489949359688462 153 0.14489949359688462 
		154 0.12380432316298896 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 
		0 178 0.12380432316298896 179 0.14489949359688462 190 0.14489949359688462 207 0.14489949359688462 
		215 0.14489949359688462 220 0.14489949359688462 225 0.14489949359688462 229 0.14489949359688462 
		232 0.14489949359688462 235 0.14489949359688462 239 0.14489949359688462 242 0.14489949359688462 
		246 0.14489949359688462 251 0.14489949359688462 259 0.14489949359688462 300 0.14489949359688462 
		307 0.14489949359688462 312 0.14489949359688462 316 0.14489949359688462 318 0.14489949359688462 
		322 0.17088092075380443 328 0.25391307531050666 330 0.27789593114766331 332 0.34784592733937031 
		333 0.59391185010365022 335 0.63788041913843752 344 0.63788041913843752 348 0.63788041913843752 
		360 0.63788041913843752 371 0.14489949359688462 400 0.14489949359688462 404 0.14489949359688462 
		408 0.14489949359688462 412 0.14489949359688462 417 0.14489949359688462 421 0.14489949359688462 
		432 0.14489949359688462 436 0.14489949359688462 447 0.14489949359688462 459 0.14489949359688462 
		500 0.14489949359688462 542 0.14489949359688462 600 0.14489949359688462 626 0.14489949359688462;
	setAttr -s 77 ".kit[2:76]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 10 3 10 3 3 3 9 3 3 3 3 
		3 3 3 3 3 3 9 3 3 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 9 9 3 9 9 3 3 3 
		10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 77 ".kot[2:76]"  9 3 3 3 3 3 3 3 
		3 3 3 3 3 3 5 3 5 5 3 3 9 3 3 3 3 
		3 3 3 3 3 3 9 3 3 3 5 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 9 9 3 9 9 3 3 3 
		5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_R_Middle_Ankle_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 1.1655884772967523e-016 10 1.1655884772967523e-016 
		21 1.1655884772967523e-016 31 1.1655884772967523e-016 40 1.1655884772967523e-016 
		45 0 50 0 54 0 61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 1.1655884772967523e-016 
		120 1.1655884772967523e-016 137 0 139 0 150 0 153 1.1655884772967523e-016 154 0 158 
		0 159 0.20070056388311183 163 0.37691538385176621 164 0.37691538385176621 168 0.20070056388311183 
		169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 0 215 0 220 1.1655884772967523e-016 
		225 1.1655884772967523e-016 229 1.1655884772967523e-016 232 1.1655884772967523e-016 
		235 1.1655884772967523e-016 239 1.1655884772967523e-016 242 1.1655884772967523e-016 
		246 1.1655884772967523e-016 251 1.1655884772967523e-016 259 1.1655884772967523e-016 
		300 1.1655884772967523e-016 307 0 312 0 316 0 318 0 322 0.10114257819166465 328 0.68552191885461422 
		330 0.78666449704627983 332 0.68552191885461422 333 0.50522200323141297 335 0.45311825082964685 
		344 0.45311825082964685 348 0.45311825082964685 360 0.45311825082964685 371 0 400 
		1.1655884772967523e-016 404 1.1655884772967523e-016 408 1.1655884772967523e-016 412 
		1.1655884772967523e-016 417 1.1655884772967523e-016 421 1.1655884772967523e-016 432 
		1.1655884772967523e-016 436 1.1655884772967523e-016 447 0 459 0 500 1.1655884772967523e-016 
		542 1.1655884772967523e-016 600 1.1655884772967523e-016 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 3 3 3 3 3 3 9 
		3 3 9 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 9 9 3 9 9 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 3 5 3 3 3 3 9 
		3 3 9 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 9 9 3 9 9 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTL -n "Const_Joint_R_Middle_Ankle_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  1 -0.25452163905825026 10 -0.25452163905825026 
		21 -0.25452163905825026 31 -0.25452163905825026 40 -0.25452163905825026 45 -0.25452163905825026 
		50 -0.25452163905825026 54 -0.25452163905825026 61 -0.25452163905825026 68 -0.25452163905825026 
		74 -0.25452163905825026 78 -0.25452163905825026 81 -0.25452163905825026 89 -0.25452163905825026 
		95 -0.25452163905825026 100 -0.25452163905825026 109 -0.25452163905825026 120 -0.25452163905825026 
		134 -0.25452163905825026 139 -0.25452163905825026 150 -0.25452163905825026 153 -0.25452163905825026 
		154 -0.22121904369041751 160 -0.04885999972124079 164 0.0052487393065033137 166 0.012118779926755245 
		168 -0.044320853958176407 174 -0.25452163905825026 190 -0.25452163905825026 207 -0.25452163905825026 
		215 -0.25452163905825026 220 -0.25452163905825026 225 -0.33718368864931764 229 -0.33718368864931764 
		232 -0.33718368864931764 235 -0.33718368864931764 239 -0.33718368864931764 242 -0.33718368864931764 
		246 -0.33718368864931764 251 -0.33718368864931764 259 -0.25452163905825026 300 -0.25452163905825026 
		307 -0.25452163905825026 312 -0.25452163905825026 316 -0.25452163905825026 318 -0.25452163905825026 
		322 -0.25452163905825026 328 -0.25452163905825026 330 -0.25452163905825026 332 -0.19571780468283362 
		333 0.023380926360386085 335 0.067810490110700949 344 0.067810490110700949 348 0.067810490110700949 
		360 0.067810490110700949 371 -0.25452163905825026 400 -0.25452163905825026 404 -0.25452163905825026 
		408 -0.25452163905825026 412 -0.25452163905825026 417 -0.25452163905825026 421 -0.25452163905825026 
		432 -0.25452163905825026 436 -0.25452163905825026 447 -0.25452163905825026 459 -0.25452163905825026 
		500 -0.25452163905825026 542 -0.25452163905825026 600 -0.25452163905825026 626 -0.25452163905825026;
	setAttr -s 70 ".kit[0:69]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 9 9 9 
		1 9 10 3 3 10 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 9 9 3 3 3 10 10 3 3 3 
		3 3 3 3 3 3 10 10 10 10 10;
	setAttr -s 70 ".kot[0:69]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 9 9 9 
		1 9 5 3 3 5 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 9 9 3 3 3 5 5 3 3 3 
		3 3 3 3 3 3 5 5 5 5 5;
	setAttr -s 70 ".kix[25:69]"  0.066666126251220703 0.066666603088378906 
		0.20000028610229492 0.53333330154418945 0.56666660308837891 0.26666641235351563 0.16666698455810547 
		0.16666650772094727 0.13333320617675781 0.099999904632568359 0.10000038146972656 
		0.13333320617675781 0.099999904632568359 0.13333320617675781 0.16666698455810547 
		0.26666641235351563 1.3666667938232422 0.23333358764648438 0.16666603088378906 0.13333415985107422 
		0.066666603088378906 0.13333320617675781 0.19999980926513672 0.066666603088378906 
		0.066666603088378906 0.033333778381347656 0.066666603088378906 0.29999923706054688 
		0.13333415985107422 0.39999961853027344 0.36666679382324219 0.96666622161865234 0.13333320617675781 
		0.13333415985107422 0.13333320617675781 0.16666603088378906 0.13333415985107422 0.36666584014892578 
		0.13333415985107422 0.36666584014892578 0.40000057220458984 1.3666658401489258 1.4000015258789062 
		1.9333324432373047 0.86666679382324219;
	setAttr -s 70 ".kiy[25:69]"  0 -2.0317964553833008 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 5.6469531059265137 2.6774730682373047 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
	setAttr -s 70 ".kox[25:69]"  0.066666126251220703 0.20000028610229492 
		0 0.56666660308837891 0.26666641235351563 0 0.16666650772094727 0.13333320617675781 
		0.099999904632568359 0.10000038146972656 0.13333320617675781 0.099999904632568359 
		0.13333320617675781 0.16666698455810547 0.26666641235351563 1.3666667938232422 0.23333358764648438 
		0.16666603088378906 0.13333415985107422 0.066666603088378906 0.13333320617675781 
		0.19999980926513672 0.066666603088378906 0.066666603088378906 0.033333778381347656 
		0.066666603088378906 0.29999923706054688 0.13333415985107422 0.39999961853027344 
		0 0 0.13333320617675781 0.13333415985107422 0.13333320617675781 0.16666603088378906 
		0.13333415985107422 0.36666584014892578 0.13333415985107422 0.36666584014892578 0.40000057220458984 
		0 0 0 0 0;
	setAttr -s 70 ".koy[25:69]"  0 -6.0954036712646484 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0 0 0 0 2.8235170841217041 5.3548693656921387 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Const_Joint_L_Middle_Ankle_IK_rotateX";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_L_Middle_Ankle_IK_rotateY";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_L_Middle_Ankle_IK_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_L_Front_Ankle_IK_rotateX";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 3 
		3;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 3 
		3;
createNode animCurveTA -n "Const_Joint_L_Front_Ankle_IK_rotateY";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 -9.5430852368533436 10 -9.5430852368533436 
		21 -9.5430852368533436 31 -9.5430852368533436 40 -9.5430852368533436 45 -9.5430852368533436 
		50 -9.5430852368533436 54 -9.5430852368533436 61 -9.5430852368533436 68 -9.5430852368533436 
		74 -9.5430852368533436 78 -9.5430852368533436 81 -9.5430852368533436 89 -9.5430852368533436 
		95 -9.5430852368533436 100 -9.5430852368533436 109 -9.5430852368533436 120 -9.5430852368533436 
		134 -2.474146692512698 139 0 150 0 153 0 154 0 158 0 159 0 163 0 164 0 168 0 169 
		0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 -9.5430852368533436 215 -9.5430852368533436 
		220 -9.5430852368533436 225 -9.5430852368533436 229 -9.5430852368533436 232 -9.5430852368533436 
		235 -9.5430852368533436 239 -9.5430852368533436 242 -9.5430852368533436 246 -9.5430852368533436 
		251 -9.5430852368533436 259 -9.5430852368533436 300 -9.5430852368533436 307 -9.5430852368533436 
		312 -9.5430852368533436 316 -9.5430852368533436 318 -9.5430852368533436 322 -9.5430852368533436 
		328 -9.5430852368533436 330 -9.5430852368533436 332 -9.5430852368533436 333 -9.5430852368533436 
		335 -9.5430852368533436 344 -9.5430852368533436 348 -9.5430852368533436 360 -9.5430852368533436 
		371 -9.5430852368533436 400 -9.5430852368533436 404 -9.5430852368533436 408 -9.5430852368533436 
		412 -9.5430852368533436 417 -9.5430852368533436 421 -9.5430852368533436 432 -9.5430852368533436 
		436 -9.5430852368533436 447 -9.5430852368533436 459 -9.5430852368533436 500 -9.5430852368533436 
		542 -9.5430852368533436 600 -9.5430852368533436 626 -9.5430852368533436;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_L_Front_Ankle_IK_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 3 
		3;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 3 
		3;
createNode animCurveTA -n "Const_Joint_R_Front_Ankle_IK_rotateX";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 3 
		3;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 3 
		3;
createNode animCurveTA -n "Const_Joint_R_Front_Ankle_IK_rotateY";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 -4.3020090794504897 10 -4.3020090794504897 
		21 -4.3020090794504897 31 -4.3020090794504897 40 -4.3020090794504897 45 -4.3020090794504897 
		50 -4.3020090794504897 54 -4.3020090794504897 61 -4.3020090794504897 68 -4.3020090794504897 
		74 -4.3020090794504897 78 -4.3020090794504897 81 -4.3020090794504897 89 -4.3020090794504897 
		95 -4.3020090794504897 100 -4.3020090794504897 109 -4.3020090794504897 120 -4.3020090794504897 
		134 -1.1153417653630457 139 0 150 0 153 0 154 0 158 0 159 0 163 0 164 0 168 0 169 
		0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 -4.3020090794504897 215 -4.3020090794504897 
		220 -4.3020090794504897 225 -4.3020090794504897 229 -4.3020090794504897 232 -4.3020090794504897 
		235 -4.3020090794504897 239 -4.3020090794504897 242 -4.3020090794504897 246 -4.3020090794504897 
		251 -4.3020090794504897 259 -4.3020090794504897 300 -4.3020090794504897 307 -4.3020090794504897 
		312 -4.3020090794504897 316 -4.3020090794504897 318 -4.3020090794504897 322 -4.3020090794504897 
		328 -4.3020090794504897 330 -4.3020090794504897 332 -4.3020090794504897 333 -4.3020090794504897 
		335 -4.3020090794504897 344 -4.3020090794504897 348 -4.3020090794504897 360 -4.3020090794504897 
		371 -4.3020090794504897 400 -4.3020090794504897 404 -4.3020090794504897 408 -4.3020090794504897 
		412 -4.3020090794504897 417 -4.3020090794504897 421 -4.3020090794504897 432 -4.3020090794504897 
		436 -4.3020090794504897 447 -4.3020090794504897 459 -4.3020090794504897 500 -4.3020090794504897 
		542 -4.3020090794504897 600 -4.3020090794504897 626 -4.3020090794504897;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_R_Front_Ankle_IK_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 3 
		3;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 3 
		3;
createNode animCurveTA -n "Const_Joint_R_Middle_Ankle_IK_rotateX";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_R_Middle_Ankle_IK_rotateY";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 -7.7913142069711885 10 -7.7913142069711885 
		21 -7.7913142069711885 31 -7.7913142069711885 40 -7.7913142069711885 45 -7.7913142069711885 
		50 -7.7913142069711885 54 -7.7913142069711885 61 -7.7913142069711885 68 -7.7913142069711885 
		74 -7.7913142069711885 78 -7.7913142069711885 81 -7.7913142069711885 89 -7.7913142069711885 
		95 -7.7913142069711885 100 -7.7913142069711885 109 -7.7913142069711885 120 -7.7913142069711885 
		134 -7.7913142069711885 139 -7.7913142069711885 150 -7.7913142069711885 153 -7.7913142069711885 
		154 -7.7913142069711885 158 -7.7913142069711885 159 -7.7913142069711885 163 -7.7913142069711885 
		164 -7.7913142069711885 168 -7.7913142069711885 169 -7.7913142069711885 171 -7.7913142069711885 
		172 -7.7913142069711885 174 -7.7913142069711885 175 -7.7913142069711885 178 -7.7913142069711885 
		179 -7.7913142069711885 190 -7.7913142069711885 207 -7.7913142069711885 215 -7.7913142069711885 
		220 -7.7913142069711885 225 -7.7913142069711885 229 -7.7913142069711885 232 -7.7913142069711885 
		235 -7.7913142069711885 239 -7.7913142069711885 242 -7.7913142069711885 246 -7.7913142069711885 
		251 -7.7913142069711885 259 -7.7913142069711885 300 -7.7913142069711885 307 -7.7913142069711885 
		312 -7.7913142069711885 316 -7.7913142069711885 318 -7.7913142069711885 322 -7.7913142069711885 
		328 -7.7913142069711885 330 -7.7913142069711885 332 -7.7913142069711885 333 -7.7913142069711885 
		335 -7.7913142069711885 344 -7.7913142069711885 348 -7.7913142069711885 360 -7.7913142069711885 
		371 -7.7913142069711885 400 -7.7913142069711885 404 -7.7913142069711885 408 -7.7913142069711885 
		412 -7.7913142069711885 417 -7.7913142069711885 421 -7.7913142069711885 432 -7.7913142069711885 
		436 -7.7913142069711885 447 -7.7913142069711885 459 -7.7913142069711885 500 -7.7913142069711885 
		542 -7.7913142069711885 600 -7.7913142069711885 626 -7.7913142069711885;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTA -n "Const_Joint_R_Middle_Ankle_IK_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 77 ".ktv[0:76]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 134 0 139 0 150 0 153 0 154 
		0 158 0 159 0 163 0 164 0 168 0 169 0 171 0 172 0 174 0 175 0 178 0 179 0 190 0 207 
		0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 0 246 0 251 0 259 0 300 0 307 0 312 
		0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 0 344 0 348 0 360 0 371 0 400 0 404 
		0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 0 500 0 542 0 600 0 626 0;
	setAttr -s 77 ".kit[0:76]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 10 10 3 3 3 3 3 3 3 3 3 10 10 10 10 
		10;
	setAttr -s 77 ".kot[0:76]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 5 5 3 3 3 3 3 3 3 3 3 5 5 5 5 
		5;
createNode animCurveTL -n "Const_Joint_R_Wrist_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_R_Wrist_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_R_Wrist_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Const_Joint_R_Wrist_IK_rotateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Const_Joint_R_Wrist_IK_rotateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Const_Joint_R_Wrist_IK_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTU -n "Const_Joint_R_Wrist_IK_IK_Blend";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 1 16 1 22 1 30 1 40 1 45 1 50 1 54 1 
		61 1 68 1 74 1 78 1 81 1 89 1 95 1 100 1 109 1 120 1 139 1 150 1 154 1 159 1 164 
		1 169 1 172 1 175 1 179 1 190 1 207 1 215 1 220 1 225 1 229 1 232 1 235 1 239 1 242 
		1 246 1 251 1 259 1 300 1 307 1 312 1 316 1 318 1 322 1 328 1 330 1 332 1 333 1 335 
		1 344 1 348 1 360 1 371 1 400 1 404 1 408 1 412 1 417 1 421 1 432 1 436 1 447 1 459 
		1 500 1 542 1 600 1 626 1;
	setAttr -s 69 ".kit[1:68]"  10 10 10 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 10 
		3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 10 10 10 3 3;
	setAttr -s 69 ".kot[1:68]"  5 5 5 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 5 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 5 5 5 3 3;
createNode animCurveTL -n "Const_Joint_L_Wrist_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_L_Wrist_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Const_Joint_L_Wrist_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Const_Joint_L_Wrist_IK_rotateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Const_Joint_L_Wrist_IK_rotateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Const_Joint_L_Wrist_IK_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Pole_Joint_R_Ankle_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Pole_Joint_R_Ankle_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0.73235366893786702 10 0.73235366893786702 
		21 0.73235366893786702 31 0.73235366893786702 40 0.73235366893786702 45 0.73235366893786702 
		50 0.73235366893786702 54 0.73235366893786702 61 0.73235366893786702 68 0.73235366893786702 
		74 0.73235366893786702 78 0.73235366893786702 81 0.73235366893786702 89 0.73235366893786702 
		95 0.73235366893786702 100 0.73235366893786702 109 0.73235366893786702 120 0.73235366893786702 
		139 0.73235366893786702 150 0.73235366893786702 154 0.73235366893786702 159 0.73235366893786702 
		164 0.73235366893786702 169 0.73235366893786702 172 0.73235366893786702 175 0.73235366893786702 
		179 0.73235366893786702 190 0.73235366893786702 207 0.73235366893786702 215 0.73235366893786702 
		220 0.73235366893786702 225 0.73235366893786702 229 0.73235366893786702 232 0.73235366893786702 
		235 0.73235366893786702 239 0.73235366893786702 242 0.73235366893786702 246 0.73235366893786702 
		251 0.73235366893786702 259 0.73235366893786702 300 0.73235366893786702 307 0.73235366893786702 
		312 0.73235366893786702 316 0.73235366893786702 318 0.73235366893786702 322 0.73235366893786702 
		328 0.73235366893786702 330 0.73235366893786702 332 0.73235366893786702 333 0.73235366893786702 
		335 0.73235366893786702 344 0.73235366893786702 348 0.73235366893786702 360 0.73235366893786702 
		371 0.73235366893786702 400 0.73235366893786702 404 0.73235366893786702 408 0.73235366893786702 
		412 0.73235366893786702 417 0.73235366893786702 421 0.73235366893786702 432 0.73235366893786702 
		436 0.73235366893786702 447 0.73235366893786702 459 0.73235366893786702 500 0.73235366893786702 
		542 0.73235366893786702 600 0.73235366893786702 626 0.73235366893786702;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Pole_Joint_R_Ankle_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 -0.63312379205235958 10 -0.63312379205235958 
		21 -0.63312379205235958 31 -0.63312379205235958 40 -0.63312379205235958 45 -0.63312379205235958 
		50 -0.63312379205235958 54 -0.63312379205235958 61 -0.63312379205235958 68 -0.63312379205235958 
		74 -0.63312379205235958 78 -0.63312379205235958 81 -0.63312379205235958 89 -0.63312379205235958 
		95 -0.63312379205235958 100 -0.63312379205235958 109 -0.63312379205235958 120 -0.63312379205235958 
		139 -0.63312379205235958 150 -0.63312379205235958 154 -0.63312379205235958 159 -0.63312379205235958 
		164 -0.63312379205235958 169 -0.63312379205235958 172 -0.63312379205235958 175 -0.63312379205235958 
		179 -0.63312379205235958 190 -0.63312379205235958 207 -0.63312379205235958 215 -0.63312379205235958 
		220 -0.63312379205235958 225 -0.63312379205235958 229 -0.63312379205235958 232 -0.63312379205235958 
		235 -0.63312379205235958 239 -0.63312379205235958 242 -0.63312379205235958 246 -0.63312379205235958 
		251 -0.63312379205235958 259 -0.63312379205235958 300 -0.63312379205235958 307 -0.63312379205235958 
		312 -0.63312379205235958 316 -0.63312379205235958 318 -0.63312379205235958 322 -0.63312379205235958 
		328 -0.63312379205235958 330 -0.63312379205235958 332 -0.63312379205235958 333 -0.63312379205235958 
		335 -0.63312379205235958 344 -0.63312379205235958 348 -0.63312379205235958 360 -0.63312379205235958 
		371 -0.63312379205235958 400 -0.63312379205235958 404 -0.63312379205235958 408 -0.63312379205235958 
		412 -0.63312379205235958 417 -0.63312379205235958 421 -0.63312379205235958 432 -0.63312379205235958 
		436 -0.63312379205235958 447 -0.63312379205235958 459 -0.63312379205235958 500 -0.63312379205235958 
		542 -0.63312379205235958 600 -0.63312379205235958 626 -0.63312379205235958;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Pole_Joint_L_Ankle_IK_translateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Pole_Joint_L_Ankle_IK_translateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0.73235366893786702 10 0.73235366893786702 
		21 0.73235366893786702 31 0.73235366893786702 40 0.73235366893786702 45 0.73235366893786702 
		50 0.73235366893786702 54 0.73235366893786702 61 0.73235366893786702 68 0.73235366893786702 
		74 0.73235366893786702 78 0.73235366893786702 81 0.73235366893786702 89 0.73235366893786702 
		95 0.73235366893786702 100 0.73235366893786702 109 0.73235366893786702 120 0.73235366893786702 
		139 0.73235366893786702 150 0.73235366893786702 154 0.73235366893786702 159 0.73235366893786702 
		164 0.73235366893786702 169 0.73235366893786702 172 0.73235366893786702 175 0.73235366893786702 
		179 0.73235366893786702 190 0.73235366893786702 207 0.73235366893786702 215 0.73235366893786702 
		220 0.73235366893786702 225 0.73235366893786702 229 0.73235366893786702 232 0.73235366893786702 
		235 0.73235366893786702 239 0.73235366893786702 242 0.73235366893786702 246 0.73235366893786702 
		251 0.73235366893786702 259 0.73235366893786702 300 0.73235366893786702 307 0.73235366893786702 
		312 0.73235366893786702 316 0.73235366893786702 318 0.73235366893786702 322 0.73235366893786702 
		328 0.73235366893786702 330 0.73235366893786702 332 0.73235366893786702 333 0.73235366893786702 
		335 0.73235366893786702 344 0.73235366893786702 348 0.73235366893786702 360 0.73235366893786702 
		371 0.73235366893786702 400 0.73235366893786702 404 0.73235366893786702 408 0.73235366893786702 
		412 0.73235366893786702 417 0.73235366893786702 421 0.73235366893786702 432 0.73235366893786702 
		436 0.73235366893786702 447 0.73235366893786702 459 0.73235366893786702 500 0.73235366893786702 
		542 0.73235366893786702 600 0.73235366893786702 626 0.73235366893786702;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Pole_Joint_L_Ankle_IK_translateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 -0.63312379205235958 10 -0.63312379205235958 
		21 -0.63312379205235958 31 -0.63312379205235958 40 -0.63312379205235958 45 -0.63312379205235958 
		50 -0.63312379205235958 54 -0.63312379205235958 61 -0.63312379205235958 68 -0.63312379205235958 
		74 -0.63312379205235958 78 -0.63312379205235958 81 -0.63312379205235958 89 -0.63312379205235958 
		95 -0.63312379205235958 100 -0.63312379205235958 109 -0.63312379205235958 120 -0.63312379205235958 
		139 -0.63312379205235958 150 -0.63312379205235958 154 -0.63312379205235958 159 -0.63312379205235958 
		164 -0.63312379205235958 169 -0.63312379205235958 172 -0.63312379205235958 175 -0.63312379205235958 
		179 -0.63312379205235958 190 -0.63312379205235958 207 -0.63312379205235958 215 -0.63312379205235958 
		220 -0.63312379205235958 225 -0.63312379205235958 229 -0.63312379205235958 232 -0.63312379205235958 
		235 -0.63312379205235958 239 -0.63312379205235958 242 -0.63312379205235958 246 -0.63312379205235958 
		251 -0.63312379205235958 259 -0.63312379205235958 300 -0.63312379205235958 307 -0.63312379205235958 
		312 -0.63312379205235958 316 -0.63312379205235958 318 -0.63312379205235958 322 -0.63312379205235958 
		328 -0.63312379205235958 330 -0.63312379205235958 332 -0.63312379205235958 333 -0.63312379205235958 
		335 -0.63312379205235958 344 -0.63312379205235958 348 -0.63312379205235958 360 -0.63312379205235958 
		371 -0.63312379205235958 400 -0.63312379205235958 404 -0.63312379205235958 408 -0.63312379205235958 
		412 -0.63312379205235958 417 -0.63312379205235958 421 -0.63312379205235958 432 -0.63312379205235958 
		436 -0.63312379205235958 447 -0.63312379205235958 459 -0.63312379205235958 500 -0.63312379205235958 
		542 -0.63312379205235958 600 -0.63312379205235958 626 -0.63312379205235958;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Tail_IK_CNTRL_translateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Tail_IK_CNTRL_translateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTL -n "Tail_IK_CNTRL_translateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Tail_IK_CNTRL_rotateX";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Tail_IK_CNTRL_rotateY";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTA -n "Tail_IK_CNTRL_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 0 10 0 21 0 31 0 40 0 45 0 50 0 54 0 
		61 0 68 0 74 0 78 0 81 0 89 0 95 0 100 0 109 0 120 0 139 0 150 0 154 0 159 0 164 
		0 169 0 172 0 175 0 179 0 190 0 207 0 215 0 220 0 225 0 229 0 232 0 235 0 239 0 242 
		0 246 0 251 0 259 0 300 0 307 0 312 0 316 0 318 0 322 0 328 0 330 0 332 0 333 0 335 
		0 344 0 348 0 360 0 371 0 400 0 404 0 408 0 412 0 417 0 421 0 432 0 436 0 447 0 459 
		0 500 0 542 0 600 0 626 0;
	setAttr -s 69 ".kit[0:68]"  10 10 10 10 3 3 3 3 
		3 3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 
		10 3 3 3 10 3 3 3 3 3 3 3 3 3 3 10 10 
		10 10 10 10 10 10 10 10 10 10 10 10 10 3 3 3 3 
		3 3 3 3 3 10 10 10 10 10;
	setAttr -s 69 ".kot[0:68]"  5 5 5 5 3 3 3 3 
		3 3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 
		5 3 3 3 5 3 3 3 3 3 3 3 3 3 3 5 5 
		5 5 5 5 5 5 5 5 5 5 5 5 5 3 3 3 3 
		3 3 3 3 3 5 5 5 5 5;
createNode animCurveTU -n "Tail_IK_CNTRL_IK_Blend";
	setAttr ".tan" 3;
	setAttr -s 57 ".ktv[0:56]"  1 1 10 1 21 1 95 1 100 1 109 1 120 1 139 
		1 150 1 154 1 159 1 164 1 169 1 172 1 175 1 179 1 190 1 207 1 215 1 220 1 225 1 229 
		1 232 1 235 1 239 1 242 1 246 1 251 1 259 1 300 1 307 1 312 1 316 1 318 1 322 1 328 
		1 330 1 332 1 335 1 342 1 344 1 350 1 371 1 400 1 404 1 408 1 412 1 417 1 421 1 432 
		1 436 1 447 1 459 1 500 1 542 1 600 1 626 1;
	setAttr -s 57 ".kit[0:56]"  10 10 10 3 3 10 3 3 
		3 3 3 3 3 3 3 3 3 3 10 3 3 3 3 3 3 
		3 3 3 3 10 3 3 3 3 3 3 3 9 9 9 3 3 
		10 3 3 3 3 3 3 3 3 3 10 10 10 3 3;
	setAttr -s 57 ".kot[0:56]"  5 5 5 3 3 5 3 5 
		3 3 3 3 3 3 3 3 3 3 5 3 3 3 3 3 3 
		3 3 3 3 5 3 3 3 3 3 3 3 9 9 9 3 3 
		5 3 3 3 3 3 3 3 3 3 5 5 5 3 3;
createNode animCurveTA -n "Cube_Mid_Chest_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  1 -3.423775152905058 10 -3.0102931397997579 
		21 -3.0897508024270164 31 -3.423775152905058 40 -4.2107349858266527 45 -5.705070829042425 
		50 -6.2952907037336221 54 -6.8855105784248165 61 -8.0659503278072116 68 -9.8366099518808028 
		74 2.1225705898508083 78 1.2579779822215607 81 1.2579779822215607 89 1.2579779822215607 
		95 1.2579779822215607 100 0.47101814929996649 109 -3.423775152905058 120 -3.423775152905058 
		139 -3.423775152905058 150 -3.423775152905058 154 -2.5070560587051389 164 1.2160696049554967 
		175 -2.5070560587051389 179 -3.423775152905058 190 -3.423775152905058 207 -3.423775152905058 
		215 -3.423775152905058 220 -3.423775152905058 225 -3.423775152905058 229 -3.423775152905058 
		232 -3.423775152905058 235 -3.423775152905058 239 -3.423775152905058 242 -3.423775152905058 
		246 -3.423775152905058 251 -3.423775152905058 259 -3.423775152905058 300 -3.423775152905058 
		307 -3.423775152905058 312 -3.423775152905058 316 -3.423775152905058 318 -3.423775152905058 
		322 -3.423775152905058 328 -3.423775152905058 330 -0.26431076082733512 332 9.9517938615871024 
		333 17.743458446583571 335 8.6624391501379883 344 5.5029747580602653 348 5.5029747580602653 
		360 5.5029747580602653 371 -3.423775152905058 400 -3.423775152905058 404 -3.423775152905058 
		408 -3.423775152905058 412 -8.5097167013477346 417 -8.5097167013477346 421 -8.5097167013477346 
		432 -6.1717108998430747 437 -3.3035084199618372 447 1.2748133855655805 459 -3.423775152905058 
		500 -3.423775152905058 505 -2.0054034432283006 511 -13.397794956269015 542 -3.423775152905058 
		600 -3.423775152905058 614 -0.98952216571063811 620 -1.9822624432384617 626 -3.423775152905058;
	setAttr -s 70 ".kit[2:69]"  9 3 9 9 3 9 9 3 
		3 3 3 3 3 9 10 3 3 3 9 3 9 3 3 3 10 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		9 9 3 9 3 3 10 10 3 3 3 3 3 3 9 9 3 
		10 10 10 10 10 3 3 9 3;
	setAttr -s 70 ".kot[2:69]"  9 3 9 9 3 9 9 3 
		3 3 3 3 3 9 5 3 5 3 9 3 9 3 3 3 5 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		9 9 3 9 3 3 5 5 3 3 3 3 3 3 9 9 3 
		5 5 5 5 5 3 3 9 3;
createNode animCurveTA -n "Cube_Mid_Chest_rotateY";
	setAttr ".tan" 3;
	setAttr -s 70 ".ktv[0:69]"  1 1.955419597402636 10 1.798120279561952 
		21 1.8317805397853231 31 1.955419597402636 40 1.1684597644810419 45 -2.4886674484778677 
		50 -3.0788873231690648 54 -3.6691071978602587 61 -4.8495469472426533 68 -6.6202065713162419 
		74 5.2118251108998424 78 11.009256770110625 81 12.779916394184211 89 12.779916394184211 
		95 11.59947664480182 100 7.8614174384242359 109 1.955419597402636 120 1.955419597402636 
		139 1.955419597402636 150 1.955419597402636 154 -0.46831100494003897 164 -3.5563911242812618 
		175 -0.46831100494003897 179 1.955419597402636 190 1.955419597402636 207 1.955419597402636 
		215 1.955419597402636 220 1.955419597402636 225 1.955419597402636 229 1.955419597402636 
		232 1.955419597402636 235 1.955419597402636 239 1.955419597402636 242 1.955419597402636 
		246 1.955419597402636 251 1.955419597402636 259 1.955419597402636 300 1.955419597402636 
		307 1.955419597402636 312 1.955419597402636 316 1.955419597402636 318 1.955419597402636 
		322 1.955419597402636 328 1.955419597402636 330 -1.2040447946750881 332 -9.2575130619679946 
		333 -15.345878014550117 335 -12.215315622467022 344 -9.0558512303892975 348 -9.0558512303892975 
		360 -9.0558512303892975 371 1.955419597402636 400 1.955419597402636 404 1.955419597402636 
		408 1.955419597402636 412 28.656146831807693 417 28.656146831807693 421 28.656146831807693 
		432 10.965582825050609 436 5.0422128545795548 447 -0.72870080139112881 459 1.955419597402636 
		500 1.955419597402636 505 1.7962873108736794 511 3.0342677896545149 542 1.955419597402636 
		600 1.955419597402636 612 0.83597280049953426 620 -0.018308576415450115 626 1.955419597402636;
	setAttr -s 70 ".kit[2:69]"  9 3 9 9 3 9 9 3 
		9 9 3 3 9 9 10 3 3 3 9 3 9 3 3 3 10 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		9 9 3 9 3 3 10 10 3 3 3 3 3 3 9 9 3 
		10 10 10 10 10 3 9 3 3;
	setAttr -s 70 ".kot[2:69]"  9 3 9 9 3 9 9 3 
		9 9 3 3 9 9 5 3 5 3 9 3 9 3 3 3 5 
		3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 3 
		9 9 3 9 3 3 5 5 3 3 3 3 3 3 9 9 3 
		5 5 5 5 5 3 9 3 3;
createNode animCurveTA -n "Cube_Mid_Chest_rotateX";
	setAttr ".tan" 3;
	setAttr -s 73 ".ktv[0:72]"  1 29.697797633255092 10 26.539044935012214 
		18 25.131993302025641 31 29.697797633255092 40 29.697797633255092 45 29.72598291244589 
		50 29.72598291244589 54 29.72598291244589 61 36.196790535220948 68 35.016350785838547 
		74 27.003812707464764 78 22.753183801868261 81 21.220968909676284 89 21.220968909676284 
		95 29.534629504138472 100 31.698769044672854 109 29.697797633255092 120 29.697797633255092 
		131 6.2237224991961737 139 27.252326592488746 150 27.252326592488746 154 22.593013092298946 
		159 17.787906794309983 164 15.403639137700972 169 17.787906794309983 172 20.51900615571892 
		175 25.287541468936961 179 27.252326592488746 190 27.252326592488746 197 39.982332164712787 
		207 21.225804735503626 215 29.697797633255092 220 29.697797633255092 225 43.549451150274344 
		229 33.428334405364716 232 -17.632446633013036 235 -30.604681243143283 239 -17.632446633013036 
		242 36.213365679924095 246 46.334482424833716 251 43.69419110007469 259 29.697797633255092 
		300 29.697797633255092 307 29.697797633255092 312 31.277529829293968 316 39.158885595567227 
		322 42.769702043656089 328 42.769702043656089 332 36.945091585504905 333 26.331114408805092 
		335 0.27713068286863674 344 -8.0728823533367908 348 -8.0728823533367908 360 -8.0728823533367908 
		371 29.697797633255092 400 29.697797633255092 404 29.697797633255092 408 29.697797633255092 
		412 25.079946539532287 417 25.079946539532287 424 26.916059793208692 431 32.891660081882968 
		436 36.763260793288538 447 34.138582889601693 459 29.697797633255092 500 29.697797633255092 
		505 6.4277455723066268 511 5.9460334159142008 542 29.697797633255092 600 29.697797633255092 
		614 26.761740735413859 620 27.622349514292612 626 29.697797633255092;
	setAttr -s 73 ".kit[1:72]"  9 3 3 3 3 3 3 3 
		9 9 9 3 3 9 3 10 3 3 3 3 9 9 3 9 9 
		9 3 3 3 3 10 3 3 9 9 3 9 9 3 9 3 3 
		3 9 9 3 3 9 9 9 3 3 10 10 3 3 3 3 3 
		9 9 3 9 10 10 10 10 10 3 3 9 3;
	setAttr -s 73 ".kot[1:72]"  9 3 3 3 3 3 3 3 
		9 9 9 3 3 9 3 5 3 3 5 3 9 9 3 9 9 
		9 3 3 3 3 5 3 3 9 9 3 9 9 3 9 3 3 
		3 9 9 3 3 9 9 9 3 3 5 5 3 3 3 3 3 
		9 9 3 9 5 5 5 5 5 3 3 9 3;
createNode animCurveTA -n "Cube_Chest3_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 68 ".ktv[0:67]"  1 8.7831913936676003 31 8.7831913936676003 
		40 8.7831913936676003 45 6.3138874674663636 50 -0.43033590652596704 54 -1.9119182622467104 
		61 -3.6404310105875779 68 -8.8713058049489213 74 -3.686199716152339 78 -1.7107565751913447 
		81 -1.3418020046847536 89 -1.3418020046847536 100 5.8191793812988415 109 8.7831913936676003 
		120 8.7831913936676003 139 2.2452134668764305 150 2.2452134668764305 154 1.18519848875634 
		159 -4.150618241037904 164 -5.8985783527484257 179 2.2452134668764305 190 2.2452134668764305 
		207 8.7831913936676003 215 8.7831913936676003 220 8.7831913936676003 225 8.7831913936676003 
		229 8.7831913936676003 232 8.7831913936676003 235 8.7831913936676003 239 8.7831913936676003 
		242 8.7831913936676003 246 8.7831913936676003 251 8.7831913936676003 259 8.7831913936676003 
		300 8.7831913936676003 307 8.7831913936676003 312 8.7831913936676003 316 8.7831913936676003 
		318 8.7831913936676003 322 7.2594992326162382 328 -0.67575929880630692 330 1.9145173749810118 
		332 10.494619437798487 333 3.638004713067339 335 -27.089787201468521 344 -27.089787201468521 
		348 -27.089787201468521 360 -27.089787201468521 371 8.7831913936676003 400 8.7831913936676003 
		404 8.7831913936676003 408 -5.5200830940515262 412 -11.689811705160606 417 -10.412470785376717 
		421 -2.6671487239032201 432 -10.358710255312582 436 -7.8040284157448117 447 8.7831913936676003 
		459 8.7831913936676003 500 8.7831913936676003 505 6.4411638166575891 508 5.372585629967797 
		511 -1.354735420328065 542 8.7831913936676003 600 8.7831913936676003 607 5.758241038507812 
		619 7.8987168408979631 626 8.7831913936676003;
	setAttr -s 68 ".kit[3:67]"  9 9 3 9 3 9 9 3 
		3 9 3 3 3 3 9 9 3 3 3 3 10 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 9 3 9 3 9 3 
		3 3 10 10 3 3 9 3 9 3 3 9 3 10 10 10 10 
		10 10 3 3 9 3;
	setAttr -s 68 ".kot[3:67]"  9 9 3 9 3 9 9 3 
		3 9 5 3 5 3 9 9 3 3 3 3 5 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 3 9 3 9 3 9 3 
		3 3 5 5 3 3 9 3 9 3 3 9 3 5 5 5 5 
		5 5 3 3 9 3;
createNode animCurveTA -n "Cube_Chest3_rotateX";
	setAttr ".tan" 3;
	setAttr -s 73 ".ktv[0:72]"  1 59.006225501568423 10 59.114452534391873 
		21 58.697141150713897 31 59.006225501568423 40 59.006225501568423 45 60.129527212728028 
		50 61.173486953840971 54 61.768176095043117 61 61.768176095043117 68 63.140823098700359 
		74 62.79492900887422 78 59.62325358912944 81 51.771906041334645 89 54.282815748632572 
		95 67.10167057010095 100 65.912292287696673 109 59.006225501568423 120 59.006225501568423 
		131 19.391351186210866 139 15.411 150 15.411 154 15.813318339284955 159 18.10175607992365 
		164 19.989210058046627 172 17.512724331947386 175 16.385904721374192 179 15.41117039351033 
		190 15.41117039351033 197 65.897822505974204 207 50.040646809379602 215 59.006225501568423 
		220 59.006225501568423 225 81.716909631976506 229 63.415378499278148 232 32.679187879240502 
		235 15.734458813051091 239 60.3302163307117 240 77.806613619311847 242 88.022406680661959 
		246 92.508366098997911 251 88.970483932598754 259 59.006225501568423 300 59.006225501568423 
		307 63.156848704312758 314 92.945850316837209 316 91.190618768179789 328 42.36308974424287 
		330 42.36308974424287 332 43.511242359424124 335 45.13386949168428 344 45.13386949168428 
		348 45.13386949168428 360 45.13386949168428 371 59.006225501568423 400 59.006225501568423 
		404 59.006225501568423 408 23.949281977232506 412 0.61844502530527889 417 9.9361123847378519 
		421 23.90709251219857 432 29.041901066778191 436 32.448143519535222 447 59.006225501568423 
		459 59.006225501568423 500 59.006225501568423 505 48.03867943268849 508 47.957884572129132 
		511 4.4835752932134403 542 59.006225501568423 600 59.006225501568423 607 60.291632941489468 
		618 59.380970972190418 626 59.006225501568423;
	setAttr -s 73 ".kit[5:72]"  9 9 3 3 3 9 9 3 
		9 3 9 3 3 3 3 3 9 9 3 9 9 3 3 3 3 
		10 3 3 9 9 3 9 9 9 3 9 3 3 9 3 9 3 
		3 9 3 3 3 10 10 3 3 9 3 9 9 9 9 3 10 
		10 10 10 10 10 3 3 9 3;
	setAttr -s 73 ".kot[5:72]"  9 9 3 3 3 9 9 3 
		9 3 9 5 3 3 5 3 9 9 3 9 9 3 3 3 3 
		5 3 3 9 9 3 9 9 9 3 9 3 3 9 3 9 3 
		3 9 3 3 3 5 5 3 3 9 3 9 9 9 9 3 5 
		5 5 5 5 5 3 3 9 3;
createNode animCurveTA -n "Cube_Chest2_rotateZ";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 -6.1034415146593064 31 -6.1034415146593064 
		40 -6.1034415146593064 45 -6.7358066447346543 50 -6.7358066447346543 54 -6.7358066447346543 
		61 -6.7358066447346543 68 -6.7358066447346543 74 0.70279213713722199 78 6.0651821711204006 
		81 8.287555704701516 89 7.0812145251651337 95 2.7058061810856202 100 -13.626103817701363 
		109 -6.1034415146593064 120 -6.1034415146593064 139 -10.952 150 -10.952 154 -9.5120463977093586 
		159 -0.83061487329480732 164 -4.1510020951412105 169 -7.9545126171331271 179 -10.951528145251082 
		190 -10.951528145251082 207 -6.1034415146593064 215 -6.1034415146593064 220 -6.1034415146593064 
		225 -6.1034415146593064 229 -6.1034415146593064 232 -6.1034415146593064 235 -6.1034415146593064 
		239 -6.1034415146593064 242 -6.1034415146593064 246 -10.174636584672324 251 -8.9953425292059332 
		259 -6.1034415146593064 300 -6.1034415146593064 307 -6.1034415146593064 312 -8.5084418328771392 
		316 -19.269727566522509 318 -20.967855092697103 322 -18.270829021713904 328 -4.4977394885048003 
		330 -6.1958670146794113 332 -12.746044741580548 333 -19.497378353320649 335 -26.040651438210123 
		344 -29.13723692711676 348 -29.13723692711676 360 -29.13723692711676 371 -6.1034415146593064 
		400 -6.1034415146593064 404 -18.109792791735263 408 -20.452952277420017 412 -5.7121323996716296 
		416 -0.23339131991741296 421 2.8814821219422098 432 7.8113351926752141 436 8.5134576807295321 
		447 -6.1034415146593064 459 -6.1034415146593064 500 -6.1034415146593064 505 -17.47453567471613 
		542 -6.1034415146593064 600 -6.1034415146593064 607 -5.5776809859291596 613 -4.052277481765918 
		619 -3.5416007685131157 626 -6.1034415146593064;
	setAttr -s 69 ".kit[8:68]"  9 9 3 9 9 3 10 3 
		3 3 9 3 9 9 3 3 3 10 3 3 3 3 3 3 3 
		3 9 3 3 3 9 9 3 9 3 9 9 9 9 3 3 10 
		10 3 9 3 9 9 9 9 3 3 10 10 10 10 3 9 9 
		3 3;
	setAttr -s 69 ".kot[8:68]"  9 9 3 9 9 3 5 3 
		5 3 9 3 9 9 3 3 3 5 3 3 3 3 3 3 3 
		3 9 3 3 3 9 9 3 9 3 9 9 9 9 3 3 5 
		5 3 9 3 9 9 9 9 3 3 5 5 5 5 3 9 9 
		3 3;
createNode animCurveTA -n "Cube_Chest2_rotateX";
	setAttr ".tan" 3;
	setAttr -s 74 ".ktv[0:73]"  1 -2.9763371417544269 10 -1.6998957283516583 
		21 -3.326268567229107 31 -2.9763371417544269 40 -2.9763371417544269 45 -2.8788574326801513 
		50 -2.8788574326801513 54 -2.8788574326801513 61 -2.8788574326801513 68 -2.8788574326801513 
		74 5.0501543470633816 78 11.079069981133626 81 12.807582729474504 89 10.091348410653136 
		95 3.3981428824165434 100 -0.61107172984600266 109 -2.9763371417544269 120 -2.9763371417544269 
		124 -16.304169054107494 139 -17.279 150 -17.279 154 -18.142899088624556 159 -20.589186225709135 
		164 -18.179708840727031 169 -14.660773214392213 179 -17.279 190 -17.279 197 -29.393817721345471 
		207 2.0531173079961609 215 -2.9763371417544269 220 -2.9763371417544269 225 -6.0386971556799551 
		229 7.9007373409802613 232 19.657734198354646 235 22.546166331647491 239 65.182480607761718 
		242 92.85966602866965 246 2.3255387345112046 251 -20.081048319350099 259 -2.9763371417544269 
		300 -2.9763371417544269 307 7.6048221698209062 312 46.452405121411637 316 57.441756889727969 
		318 50.956530214891522 322 20.428504689228298 328 10.671348513949365 330 10.671348513949365 
		332 13.424643852506746 333 22.456781038725435 335 17.139939761411547 344 15.433301162770356 
		348 15.433301162770356 360 15.433301162770356 371 -2.9763371417544269 400 -2.9763371417544269 
		404 9.293269317519206 408 -0.13113965679338724 412 3.0895668599962876 417 2.9152106079076279 
		421 2.9152106079076279 432 7.0353891388780854 436 7.3617740677565822 447 -2.9763371417544269 
		459 -2.9763371417544269 500 -2.9763371417544269 505 -2.8296115405618059 514 12.367802469497343 
		542 -2.9763371417544269 600 -2.9763371417544269 607 -5.0905643313736313 613 -5.7313146752730963 
		619 -5.7782549566954113 626 -2.9763371417544269;
	setAttr -s 74 ".kit[10:73]"  9 9 3 9 9 9 10 3 
		3 3 3 9 1 9 3 3 3 3 3 10 3 3 9 3 3 
		9 3 9 3 3 3 9 9 3 9 9 3 3 9 3 9 3 
		3 10 10 3 3 3 3 3 3 9 3 3 10 10 10 10 10 
		3 9 9 3 3;
	setAttr -s 74 ".kot[10:73]"  9 9 3 9 9 9 5 3 
		3 5 3 9 1 9 3 3 3 3 3 5 3 3 9 3 3 
		9 3 9 3 3 3 9 9 3 9 9 3 3 9 3 9 3 
		3 5 5 3 3 3 3 3 3 9 3 3 5 5 5 5 5 
		3 9 9 3 3;
	setAttr -s 74 ".kix[22:73]"  0.16666698455810547 0.16666650772094727 
		0.16666650772094727 0.33333349227905273 0.36666679382324219 0.23333311080932617 0.33333349227905273 
		0.26666641235351563 0.16666698455810547 0.16666650772094727 0.13333320617675781 0.099999904632568359 
		0.10000038146972656 0.13333320617675781 0.099999904632568359 0.13333320617675781 
		0.16666698455810547 0.26666641235351563 1.3666667938232422 0.23333358764648438 0.16666603088378906 
		0.13333415985107422 0.066666603088378906 0.13333320617675781 0.19999980926513672 
		0.066666603088378906 0.066666603088378906 0.033333778381347656 0.066666603088378906 
		0.29999923706054688 0.13333415985107422 0.39999961853027344 0.36666679382324219 0.96666622161865234 
		0.13333320617675781 0.13333415985107422 0.13333320617675781 0.16666603088378906 0.13333415985107422 
		0.36666584014892578 0.13333415985107422 0.36666584014892578 0.40000057220458984 1.3666658401489258 
		0.16666793823242188 0.29999923706054688 0.9333343505859375 1.9333324432373047 0.23333358764648438 
		0.19999885559082031 0.20000076293945313 0.23333358764648438;
	setAttr -s 74 ".kiy[22:73]"  0 0.051735162734985352 0 0 0 0 0 0 0 0 
		0.25627848505973816 0 0 0.70125830173492432 0 -0.87608188390731812 0 0 0 0.50323939323425293 
		0.48323041200637817 0 -0.21533437073230743 -0.28124362230300903 0 0 0.13712908327579498 
		0 -0.022287819534540176 0 0 0 0 0 0 0 0 0 0 0.056911800056695938 0 0 0 0 0 -0.00062290648929774761 
		0 0 -0.025891158729791641 -0.006001204252243042 0 0;
	setAttr -s 74 ".kox[22:73]"  0.16666603088378906 0.16666650772094727 
		0.33333349227905273 0.36666679382324219 0.23333311080932617 0.33333349227905273 0.26666641235351563 
		0 0.16666650772094727 0.13333320617675781 0.099999904632568359 0.10000038146972656 
		0.13333320617675781 0.099999904632568359 0.13333320617675781 0.16666698455810547 
		0.26666641235351563 1.3666667938232422 0.23333358764648438 0.16666603088378906 0.13333415985107422 
		0.066666603088378906 0.13333320617675781 0.19999980926513672 0.066666603088378906 
		0.066666603088378906 0.033333778381347656 0.066666603088378906 0.29999923706054688 
		0.13333415985107422 0.39999961853027344 0 0 0.13333320617675781 0.13333415985107422 
		0.13333320617675781 0.16666603088378906 0.13333415985107422 0.36666584014892578 0.13333415985107422 
		0.36666584014892578 0.40000057220458984 0 0 0 0 0 0.23333358764648438 0.19999885559082031 
		0.20000076293945313 0.23333358764648438 0.23333358764648438;
	setAttr -s 74 ".koy[22:73]"  0 0.051735162734985352 0 0 0 0 0 0 0 0 
		0.19220885634422302 0 0 0.52594375610351563 0 -1.0951054096221924 0 0 0 0.3594549298286438 
		0.38658818602561951 0 -0.43066874146461487 -0.42186543345451355 0 0 0.068565517663955688 
		0 -0.10029502958059311 0 0 0 0 0 0 0 0 0 0 0.02069537527859211 0 0 0 0 0 0 0 0 -0.022192269563674927 
		-0.0060012615285813808 0 0;
createNode animCurveUU -n "Cube_L_Arm_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
createNode animCurveTU -n "Const_Joint_L_Wrist_IK_IK_Blend";
	setAttr ".tan" 3;
	setAttr -s 69 ".ktv[0:68]"  1 1 7 1 20 1 28 1 40 1 45 1 50 1 54 1 61 
		1 68 1 74 1 78 1 81 1 89 1 95 1 100 1 109 1 120 1 139 1 150 1 154 1 159 1 164 1 169 
		1 172 1 175 1 179 1 190 1 207 1 215 1 220 1 225 1 229 1 232 1 235 1 239 1 242 1 246 
		1 251 1 259 1 300 1 307 1 312 1 316 1 318 1 322 1 328 1 330 1 332 1 333 1 335 1 344 
		1 348 1 360 1 371 1 400 1 404 1 408 1 412 1 417 1 421 1 432 1 436 1 447 1 459 1 500 
		1 542 1 600 1 626 1;
	setAttr -s 69 ".kit[1:68]"  10 10 3 3 3 3 3 3 
		3 3 3 3 3 3 3 10 3 10 3 10 10 10 10 10 10 
		3 3 3 10 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 10 10 3 3 3 3 3 
		3 3 3 3 10 10 10 3 3;
	setAttr -s 69 ".kot[1:68]"  5 5 3 3 3 3 3 3 
		3 3 3 3 3 3 3 5 3 5 3 5 5 5 5 5 5 
		3 3 3 5 3 3 3 3 3 3 3 3 3 3 3 3 3 
		3 3 3 3 3 3 3 3 3 3 5 5 3 3 3 3 3 
		3 3 3 3 5 5 5 3 3;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 170;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".st";
	setAttr -cb on ".an";
	setAttr -cb on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -k on ".nds";
	setAttr -s 8 ".u";
select -ne :lightList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultTextureList1;
	setAttr -cb on ".cch";
	setAttr -cb on ".ihi";
	setAttr -cb on ".nds";
	setAttr -cb on ".bnm";
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -av -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :initialParticleSE;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -cb on ".an";
	setAttr -cb on ".il";
	setAttr -cb on ".vo";
	setAttr -cb on ".eo";
	setAttr -cb on ".fo";
	setAttr -cb on ".epo";
	setAttr ".ro" yes;
	setAttr -cb on ".mimt";
	setAttr -cb on ".miop";
	setAttr -cb on ".mise";
	setAttr -cb on ".mism";
	setAttr -cb on ".mice";
	setAttr -cb on ".micc";
	setAttr -cb on ".mica";
	setAttr -cb on ".micw";
	setAttr -cb on ".mirw";
select -ne :defaultRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".macc";
	setAttr -k on ".macd";
	setAttr -k on ".macq";
	setAttr -k on ".mcfr" 30;
	setAttr -cb on ".ifg";
	setAttr -k on ".clip";
	setAttr -k on ".edm";
	setAttr -k on ".edl";
	setAttr -av -k on ".esr";
	setAttr -k on ".ors";
	setAttr -cb on ".sdf";
	setAttr -k on ".outf";
	setAttr -cb on ".imfkey";
	setAttr -k on ".gama";
	setAttr -cb on ".an";
	setAttr -cb on ".ar";
	setAttr -k on ".fs" 1;
	setAttr -k on ".ef" 10;
	setAttr -av -k on ".bfs";
	setAttr -cb on ".me";
	setAttr -cb on ".se";
	setAttr -k on ".be";
	setAttr -cb on ".ep";
	setAttr -k on ".fec";
	setAttr -k on ".ofc";
	setAttr -cb on ".ofe";
	setAttr -cb on ".efe";
	setAttr -cb on ".oft";
	setAttr -cb on ".umfn";
	setAttr -cb on ".ufe";
	setAttr -cb on ".pff";
	setAttr -cb on ".peie";
	setAttr -k on ".comp";
	setAttr -k on ".cth";
	setAttr -k on ".soll";
	setAttr -k on ".rd";
	setAttr -k on ".lp";
	setAttr -k on ".sp";
	setAttr -k on ".shs";
	setAttr -k on ".lpr";
	setAttr -cb on ".gv";
	setAttr -cb on ".sv";
	setAttr -k on ".mm";
	setAttr -k on ".npu";
	setAttr -k on ".itf";
	setAttr -k on ".shp";
	setAttr -cb on ".isp";
	setAttr -k on ".uf";
	setAttr -k on ".oi";
	setAttr -k on ".rut";
	setAttr -k on ".mb";
	setAttr -av -k on ".mbf";
	setAttr -k on ".afp";
	setAttr -k on ".pfb";
	setAttr -cb on ".prm";
	setAttr -cb on ".pom";
	setAttr -cb on ".pfrm";
	setAttr -cb on ".pfom";
	setAttr -av -k on ".bll";
	setAttr -k on ".bls";
	setAttr -k on ".smv";
	setAttr -k on ".ubc";
	setAttr -k on ".mbc";
	setAttr -cb on ".mbt";
	setAttr -k on ".udbx";
	setAttr -k on ".smc";
	setAttr -k on ".kmv";
	setAttr -cb on ".isl";
	setAttr -cb on ".ism";
	setAttr -cb on ".imb";
	setAttr -k on ".rlen";
	setAttr -av -k on ".frts";
	setAttr -k on ".tlwd";
	setAttr -k on ".tlht";
	setAttr -k on ".jfc";
	setAttr -cb on ".rsb";
	setAttr -k on ".ope";
	setAttr -k on ".oppf";
	setAttr -cb on ".hbl";
select -ne :defaultResolution;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -k on ".pa" 1;
	setAttr -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -k on ".off";
	setAttr -k on ".fld";
	setAttr -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultLightSet;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr ".hwfr" 30;
select -ne :defaultHardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".rp";
	setAttr -k on ".cai";
	setAttr -k on ".coi";
	setAttr -cb on ".bc";
	setAttr -av -k on ".bcb";
	setAttr -av -k on ".bcg";
	setAttr -av -k on ".bcr";
	setAttr -k on ".ei";
	setAttr -k on ".ex";
	setAttr -k on ".es";
	setAttr -av -k on ".ef";
	setAttr -cb on ".bf";
	setAttr -k on ".fii";
	setAttr -av -cb on ".sf";
	setAttr -k on ".gr";
	setAttr -k on ".li";
	setAttr -k on ".ls";
	setAttr -k on ".mb";
	setAttr -k on ".ti";
	setAttr -k on ".txt";
	setAttr -k on ".mpr";
	setAttr -k on ".wzd";
	setAttr ".fn" -type "string" "im";
	setAttr -k on ".if";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
	setAttr -k on ".as";
	setAttr -k on ".ds";
	setAttr -k on ".lm";
	setAttr -k on ".fir";
	setAttr -k on ".aap";
	setAttr -k on ".gh";
	setAttr -cb on ".sd";
select -ne :ikSystem;
	setAttr -av ".gsn";
	setAttr -s 4 ".sol";
connectAttr "Layer_Skeleton_FK.di" "slug_skeleton_FK.do";
connectAttr "slug_Joint_Root_FK_orientConstraint1.crx" "slug_Joint_Root_FK.rx";
connectAttr "slug_Joint_Root_FK_orientConstraint1.cry" "slug_Joint_Root_FK.ry";
connectAttr "slug_Joint_Root_FK_orientConstraint1.crz" "slug_Joint_Root_FK.rz";
connectAttr "slug_Joint_Root_FK_pointConstraint1.ctx" "slug_Joint_Root_FK.tx";
connectAttr "slug_Joint_Root_FK_pointConstraint1.cty" "slug_Joint_Root_FK.ty";
connectAttr "slug_Joint_Root_FK_pointConstraint1.ctz" "slug_Joint_Root_FK.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Root_FK.do";
connectAttr "slug_Joint_Root_FK.s" "slug_Joint_Waist_FK.is";
connectAttr "slug_Joint_Waist_FK_orientConstraint1.crx" "slug_Joint_Waist_FK.rx"
		;
connectAttr "slug_Joint_Waist_FK_orientConstraint1.cry" "slug_Joint_Waist_FK.ry"
		;
connectAttr "slug_Joint_Waist_FK_orientConstraint1.crz" "slug_Joint_Waist_FK.rz"
		;
connectAttr "slug_Joint_Waist_FK_parentConstraint1.ctx" "slug_Joint_Waist_FK.tx"
		;
connectAttr "slug_Joint_Waist_FK_parentConstraint1.cty" "slug_Joint_Waist_FK.ty"
		;
connectAttr "slug_Joint_Waist_FK_parentConstraint1.ctz" "slug_Joint_Waist_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Waist_FK.do";
connectAttr "slug_Joint_Waist_FK.s" "slug_Joint_Chest_FK.is";
connectAttr "slug_Joint_Chest_FK_orientConstraint1.crx" "slug_Joint_Chest_FK.rx"
		;
connectAttr "slug_Joint_Chest_FK_orientConstraint1.cry" "slug_Joint_Chest_FK.ry"
		;
connectAttr "slug_Joint_Chest_FK_orientConstraint1.crz" "slug_Joint_Chest_FK.rz"
		;
connectAttr "slug_Joint_Chest_FK_parentConstraint1.ctx" "slug_Joint_Chest_FK.tx"
		;
connectAttr "slug_Joint_Chest_FK_parentConstraint1.cty" "slug_Joint_Chest_FK.ty"
		;
connectAttr "slug_Joint_Chest_FK_parentConstraint1.ctz" "slug_Joint_Chest_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest_FK.do";
connectAttr "slug_Joint_Chest_FK.s" "slug_Joint_Chest2_FK.is";
connectAttr "slug_Joint_Chest2_FK_orientConstraint1.crx" "slug_Joint_Chest2_FK.rx"
		;
connectAttr "slug_Joint_Chest2_FK_orientConstraint1.cry" "slug_Joint_Chest2_FK.ry"
		;
connectAttr "slug_Joint_Chest2_FK_orientConstraint1.crz" "slug_Joint_Chest2_FK.rz"
		;
connectAttr "slug_Joint_Chest2_FK_parentConstraint1.ctx" "slug_Joint_Chest2_FK.tx"
		;
connectAttr "slug_Joint_Chest2_FK_parentConstraint1.cty" "slug_Joint_Chest2_FK.ty"
		;
connectAttr "slug_Joint_Chest2_FK_parentConstraint1.ctz" "slug_Joint_Chest2_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest2_FK.do";
connectAttr "slug_Joint_Chest2_FK.s" "slug_Joint_Chest3_FK.is";
connectAttr "slug_Joint_Chest3_FK_orientConstraint1.crx" "slug_Joint_Chest3_FK.rx"
		;
connectAttr "slug_Joint_Chest3_FK_orientConstraint1.cry" "slug_Joint_Chest3_FK.ry"
		;
connectAttr "slug_Joint_Chest3_FK_orientConstraint1.crz" "slug_Joint_Chest3_FK.rz"
		;
connectAttr "slug_Joint_Chest3_FK_parentConstraint1.ctx" "slug_Joint_Chest3_FK.tx"
		;
connectAttr "slug_Joint_Chest3_FK_parentConstraint1.cty" "slug_Joint_Chest3_FK.ty"
		;
connectAttr "slug_Joint_Chest3_FK_parentConstraint1.ctz" "slug_Joint_Chest3_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest3_FK.do";
connectAttr "slug_Joint_Chest3_FK.s" "slug_Joint_Mid_Chest_FK.is";
connectAttr "slug_Joint_Mid_Chest_FK_orientConstraint1.crx" "slug_Joint_Mid_Chest_FK.rx"
		;
connectAttr "slug_Joint_Mid_Chest_FK_orientConstraint1.cry" "slug_Joint_Mid_Chest_FK.ry"
		;
connectAttr "slug_Joint_Mid_Chest_FK_orientConstraint1.crz" "slug_Joint_Mid_Chest_FK.rz"
		;
connectAttr "slug_Joint_Mid_Chest_FK_parentConstraint1.ctx" "slug_Joint_Mid_Chest_FK.tx"
		;
connectAttr "slug_Joint_Mid_Chest_FK_parentConstraint1.cty" "slug_Joint_Mid_Chest_FK.ty"
		;
connectAttr "slug_Joint_Mid_Chest_FK_parentConstraint1.ctz" "slug_Joint_Mid_Chest_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Mid_Chest_FK.do";
connectAttr "slug_Joint_Mid_Chest_FK.s" "slug_Joint_Neck1_FK.is";
connectAttr "slug_Joint_Neck1_FK_orientConstraint1.crx" "slug_Joint_Neck1_FK.rx"
		;
connectAttr "slug_Joint_Neck1_FK_orientConstraint1.cry" "slug_Joint_Neck1_FK.ry"
		;
connectAttr "slug_Joint_Neck1_FK_orientConstraint1.crz" "slug_Joint_Neck1_FK.rz"
		;
connectAttr "slug_Joint_Neck1_FK_parentConstraint1.ctx" "slug_Joint_Neck1_FK.tx"
		;
connectAttr "slug_Joint_Neck1_FK_parentConstraint1.cty" "slug_Joint_Neck1_FK.ty"
		;
connectAttr "slug_Joint_Neck1_FK_parentConstraint1.ctz" "slug_Joint_Neck1_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Neck1_FK.do";
connectAttr "slug_Joint_Neck1_FK.s" "slug_Joint_Head_FK.is";
connectAttr "slug_Joint_Head_FK_orientConstraint1.crx" "slug_Joint_Head_FK.rx";
connectAttr "slug_Joint_Head_FK_orientConstraint1.cry" "slug_Joint_Head_FK.ry";
connectAttr "slug_Joint_Head_FK_orientConstraint1.crz" "slug_Joint_Head_FK.rz";
connectAttr "slug_Joint_Head_FK_parentConstraint1.ctx" "slug_Joint_Head_FK.tx";
connectAttr "slug_Joint_Head_FK_parentConstraint1.cty" "slug_Joint_Head_FK.ty";
connectAttr "slug_Joint_Head_FK_parentConstraint1.ctz" "slug_Joint_Head_FK.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Head_FK.do";
connectAttr "slug_Joint_Head_FK.s" "slug_Joint_Head_End_FK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Head_End_FK.do";
connectAttr "slug_Joint_Head_FK.ro" "slug_Joint_Head_FK_orientConstraint1.cro";
connectAttr "slug_Joint_Head_FK.pim" "slug_Joint_Head_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Head_FK.jo" "slug_Joint_Head_FK_orientConstraint1.cjo";
connectAttr "slug_Cube_Head.r" "slug_Joint_Head_FK_orientConstraint1.tg[0].tr";
connectAttr "slug_Cube_Head.ro" "slug_Joint_Head_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Head.pm" "slug_Joint_Head_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Head_FK_orientConstraint1.w0" "slug_Joint_Head_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Head_FK_orientConstraint1.do";
connectAttr "slug_Joint_Head_FK.ro" "slug_Joint_Head_FK_parentConstraint1.cro";
connectAttr "slug_Joint_Head_FK.pim" "slug_Joint_Head_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Head_FK.rp" "slug_Joint_Head_FK_parentConstraint1.crp";
connectAttr "slug_Joint_Head_FK.rpt" "slug_Joint_Head_FK_parentConstraint1.crt";
connectAttr "slug_Joint_Head_FK.jo" "slug_Joint_Head_FK_parentConstraint1.cjo";
connectAttr "slug_Cube_Head.t" "slug_Joint_Head_FK_parentConstraint1.tg[0].tt";
connectAttr "slug_Cube_Head.rp" "slug_Joint_Head_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Head.rpt" "slug_Joint_Head_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Head.r" "slug_Joint_Head_FK_parentConstraint1.tg[0].tr";
connectAttr "slug_Cube_Head.ro" "slug_Joint_Head_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Head.s" "slug_Joint_Head_FK_parentConstraint1.tg[0].ts";
connectAttr "slug_Cube_Head.pm" "slug_Joint_Head_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Head_FK_parentConstraint1.w0" "slug_Joint_Head_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Head_FK_parentConstraint1.do";
connectAttr "slug_Joint_Neck1_FK.ro" "slug_Joint_Neck1_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Neck1_FK.pim" "slug_Joint_Neck1_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Neck1_FK.jo" "slug_Joint_Neck1_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Neck1.r" "slug_Joint_Neck1_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Neck1.ro" "slug_Joint_Neck1_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Neck1.pm" "slug_Joint_Neck1_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Neck1_FK_orientConstraint1.w0" "slug_Joint_Neck1_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Neck1_FK_orientConstraint1.do";
connectAttr "slug_Joint_Neck1_FK.ro" "slug_Joint_Neck1_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Neck1_FK.pim" "slug_Joint_Neck1_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Neck1_FK.rp" "slug_Joint_Neck1_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Neck1_FK.rpt" "slug_Joint_Neck1_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Neck1_FK.jo" "slug_Joint_Neck1_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Neck1.t" "slug_Joint_Neck1_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Neck1.rp" "slug_Joint_Neck1_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Neck1.rpt" "slug_Joint_Neck1_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Neck1.r" "slug_Joint_Neck1_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Neck1.ro" "slug_Joint_Neck1_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Neck1.s" "slug_Joint_Neck1_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Neck1.pm" "slug_Joint_Neck1_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Neck1_FK_parentConstraint1.w0" "slug_Joint_Neck1_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Neck1_FK_parentConstraint1.do";
connectAttr "slug_Joint_Mid_Chest_FK.s" "slug_Joint_Neck1_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Neck1_IK.do";
connectAttr "slug_Joint_Mid_Chest_FK.s" "slug_Joint_L_Shoulder_FK.is";
connectAttr "slug_Joint_L_Shoulder_FK_orientConstraint1.crx" "slug_Joint_L_Shoulder_FK.rx"
		;
connectAttr "slug_Joint_L_Shoulder_FK_orientConstraint1.cry" "slug_Joint_L_Shoulder_FK.ry"
		;
connectAttr "slug_Joint_L_Shoulder_FK_orientConstraint1.crz" "slug_Joint_L_Shoulder_FK.rz"
		;
connectAttr "slug_Joint_L_Shoulder_FK_parentConstraint1.ctx" "slug_Joint_L_Shoulder_FK.tx"
		;
connectAttr "slug_Joint_L_Shoulder_FK_parentConstraint1.cty" "slug_Joint_L_Shoulder_FK.ty"
		;
connectAttr "slug_Joint_L_Shoulder_FK_parentConstraint1.ctz" "slug_Joint_L_Shoulder_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Shoulder_FK.do";
connectAttr "slug_Joint_L_Shoulder_FK.s" "slug_Joint_L_Arm_FK.is";
connectAttr "slug_Joint_L_Arm_FK_orientConstraint1.crx" "slug_Joint_L_Arm_FK.rx"
		;
connectAttr "slug_Joint_L_Arm_FK_orientConstraint1.cry" "slug_Joint_L_Arm_FK.ry"
		;
connectAttr "slug_Joint_L_Arm_FK_orientConstraint1.crz" "slug_Joint_L_Arm_FK.rz"
		;
connectAttr "slug_Joint_L_Arm_FK_parentConstraint1.ctx" "slug_Joint_L_Arm_FK.tx"
		;
connectAttr "slug_Joint_L_Arm_FK_parentConstraint1.cty" "slug_Joint_L_Arm_FK.ty"
		;
connectAttr "slug_Joint_L_Arm_FK_parentConstraint1.ctz" "slug_Joint_L_Arm_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Arm_FK.do";
connectAttr "slug_Joint_L_Arm_FK.ro" "slug_Joint_L_Arm_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Arm_FK.pim" "slug_Joint_L_Arm_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Arm_FK.jo" "slug_Joint_L_Arm_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Arm.r" "slug_Joint_L_Arm_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Arm.ro" "slug_Joint_L_Arm_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Arm.pm" "slug_Joint_L_Arm_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Arm_FK_orientConstraint1.w0" "slug_Joint_L_Arm_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Arm_FK_orientConstraint1.do";
connectAttr "slug_Joint_L_Arm_FK.ro" "slug_Joint_L_Arm_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_L_Arm_FK.pim" "slug_Joint_L_Arm_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Arm_FK.rp" "slug_Joint_L_Arm_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_L_Arm_FK.rpt" "slug_Joint_L_Arm_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Arm_FK.jo" "slug_Joint_L_Arm_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Arm.t" "slug_Joint_L_Arm_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_L_Arm.rp" "slug_Joint_L_Arm_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_L_Arm.rpt" "slug_Joint_L_Arm_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_L_Arm.r" "slug_Joint_L_Arm_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Arm.ro" "slug_Joint_L_Arm_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Arm.s" "slug_Joint_L_Arm_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_L_Arm.pm" "slug_Joint_L_Arm_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Arm_FK_parentConstraint1.w0" "slug_Joint_L_Arm_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Arm_FK_parentConstraint1.do";
connectAttr "slug_Joint_L_Elbow_FK_orientConstraint1.crx" "slug_Joint_L_Elbow_FK.rx"
		;
connectAttr "slug_Joint_L_Elbow_FK_orientConstraint1.cry" "slug_Joint_L_Elbow_FK.ry"
		;
connectAttr "slug_Joint_L_Elbow_FK_orientConstraint1.crz" "slug_Joint_L_Elbow_FK.rz"
		;
connectAttr "slug_Joint_L_Elbow_FK_parentConstraint1.ctx" "slug_Joint_L_Elbow_FK.tx"
		;
connectAttr "slug_Joint_L_Elbow_FK_parentConstraint1.cty" "slug_Joint_L_Elbow_FK.ty"
		;
connectAttr "slug_Joint_L_Elbow_FK_parentConstraint1.ctz" "slug_Joint_L_Elbow_FK.tz"
		;
connectAttr "slug_Joint_L_Arm_FK.s" "slug_Joint_L_Elbow_FK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Elbow_FK.do";
connectAttr "slug_Joint_L_Elbow_FK.ro" "slug_Joint_L_Elbow_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Elbow_FK.pim" "slug_Joint_L_Elbow_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Elbow_FK.jo" "slug_Joint_L_Elbow_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Elbow.r" "slug_Joint_L_Elbow_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Elbow.ro" "slug_Joint_L_Elbow_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Elbow.pm" "slug_Joint_L_Elbow_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Elbow_FK_orientConstraint1.w0" "slug_Joint_L_Elbow_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Elbow_FK_orientConstraint1.do";
connectAttr "slug_Joint_L_Elbow_FK.ro" "slug_Joint_L_Elbow_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_L_Elbow_FK.pim" "slug_Joint_L_Elbow_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Elbow_FK.rp" "slug_Joint_L_Elbow_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_L_Elbow_FK.rpt" "slug_Joint_L_Elbow_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Elbow_FK.jo" "slug_Joint_L_Elbow_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Elbow.t" "slug_Joint_L_Elbow_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_L_Elbow.rp" "slug_Joint_L_Elbow_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_L_Elbow.rpt" "slug_Joint_L_Elbow_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_L_Elbow.r" "slug_Joint_L_Elbow_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Elbow.ro" "slug_Joint_L_Elbow_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Elbow.s" "slug_Joint_L_Elbow_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_L_Elbow.pm" "slug_Joint_L_Elbow_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Elbow_FK_parentConstraint1.w0" "slug_Joint_L_Elbow_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Elbow_FK_parentConstraint1.do";
connectAttr "unitConversion9.o" "slug_Joint_L_Forearm_FK.rx";
connectAttr "slug_Joint_L_Elbow_FK.s" "slug_Joint_L_Forearm_FK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Forearm_FK.do";
connectAttr "slug_Joint_L_Forearm_FK.s" "slug_Joint_L_Wrist_FK.is";
connectAttr "slug_Joint_L_Wrist_FK_orientConstraint1.cry" "slug_Joint_L_Wrist_FK.ry"
		;
connectAttr "slug_Joint_L_Wrist_FK_orientConstraint1.crz" "slug_Joint_L_Wrist_FK.rz"
		;
connectAttr "unitConversion8.o" "slug_Joint_L_Wrist_FK.rx";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Wrist_FK.do";
connectAttr "slug_Joint_L_Wrist_FK.ro" "slug_Joint_L_Wrist_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Wrist_FK.pim" "slug_Joint_L_Wrist_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Wrist_FK.jo" "slug_Joint_L_Wrist_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Hand.r" "slug_Joint_L_Wrist_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Hand.ro" "slug_Joint_L_Wrist_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Hand.pm" "slug_Joint_L_Wrist_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Wrist_FK_orientConstraint1.w0" "slug_Joint_L_Wrist_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Wrist_FK_orientConstraint1.do";
connectAttr "slug_Joint_L_Shoulder_FK.s" "slug_Joint_L_Arm_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Arm_IK.do";
connectAttr "slug_Joint_L_Arm_IK.s" "slug_Joint_L_Elbow_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Elbow_IK.do";
connectAttr "unitConversion11.o" "slug_Joint_L_Forearm_IK.rx";
connectAttr "slug_Joint_L_Elbow_IK.s" "slug_Joint_L_Forearm_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Forearm_IK.do";
connectAttr "slug_Joint_L_Elbow_IK.s" "slug_Joint_L_Wrist_IK.is";
connectAttr "slug_Joint_L_Wrist_IK_orientConstraint1.crx" "slug_Joint_L_Wrist_IK.rx"
		;
connectAttr "slug_Joint_L_Wrist_IK_orientConstraint1.cry" "slug_Joint_L_Wrist_IK.ry"
		;
connectAttr "slug_Joint_L_Wrist_IK_orientConstraint1.crz" "slug_Joint_L_Wrist_IK.rz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Wrist_IK.do";
connectAttr "slug_Joint_L_Wrist_IK.ro" "slug_Joint_L_Wrist_IK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Wrist_IK.pim" "slug_Joint_L_Wrist_IK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Wrist_IK.jo" "slug_Joint_L_Wrist_IK_orientConstraint1.cjo"
		;
connectAttr "slug_Const_Joint_L_Wrist_IK.r" "slug_Joint_L_Wrist_IK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Const_Joint_L_Wrist_IK.ro" "slug_Joint_L_Wrist_IK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Const_Joint_L_Wrist_IK.pm" "slug_Joint_L_Wrist_IK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Wrist_IK_orientConstraint1.w0" "slug_Joint_L_Wrist_IK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Wrist_IK_orientConstraint1.do";
connectAttr "slug_Joint_L_Wrist_IK.tx" "slug_effector6.tx";
connectAttr "slug_Joint_L_Wrist_IK.ty" "slug_effector6.ty";
connectAttr "slug_Joint_L_Wrist_IK.tz" "slug_effector6.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_effector6.do";
connectAttr "slug_Joint_L_Shoulder_FK.ro" "slug_Joint_L_Shoulder_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Shoulder_FK.pim" "slug_Joint_L_Shoulder_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Shoulder_FK.jo" "slug_Joint_L_Shoulder_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Shoulder.r" "slug_Joint_L_Shoulder_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Shoulder.ro" "slug_Joint_L_Shoulder_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Shoulder.pm" "slug_Joint_L_Shoulder_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Shoulder_FK_orientConstraint1.w0" "slug_Joint_L_Shoulder_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Shoulder_FK_orientConstraint1.do"
		;
connectAttr "slug_Joint_L_Shoulder_FK.ro" "slug_Joint_L_Shoulder_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_L_Shoulder_FK.pim" "slug_Joint_L_Shoulder_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Shoulder_FK.rp" "slug_Joint_L_Shoulder_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_L_Shoulder_FK.rpt" "slug_Joint_L_Shoulder_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Shoulder_FK.jo" "slug_Joint_L_Shoulder_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Shoulder.t" "slug_Joint_L_Shoulder_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_L_Shoulder.rp" "slug_Joint_L_Shoulder_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_L_Shoulder.rpt" "slug_Joint_L_Shoulder_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_L_Shoulder.r" "slug_Joint_L_Shoulder_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Shoulder.ro" "slug_Joint_L_Shoulder_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Shoulder.s" "slug_Joint_L_Shoulder_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_L_Shoulder.pm" "slug_Joint_L_Shoulder_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Shoulder_FK_parentConstraint1.w0" "slug_Joint_L_Shoulder_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Shoulder_FK_parentConstraint1.do"
		;
connectAttr "slug_Joint_Mid_Chest_FK.s" "slug_Joint_R_Shoulder_FK.is";
connectAttr "slug_Joint_R_Shoulder_FK_orientConstraint1.crx" "slug_Joint_R_Shoulder_FK.rx"
		;
connectAttr "slug_Joint_R_Shoulder_FK_orientConstraint1.cry" "slug_Joint_R_Shoulder_FK.ry"
		;
connectAttr "slug_Joint_R_Shoulder_FK_orientConstraint1.crz" "slug_Joint_R_Shoulder_FK.rz"
		;
connectAttr "slug_Joint_R_Shoulder_FK_parentConstraint1.ctx" "slug_Joint_R_Shoulder_FK.tx"
		;
connectAttr "slug_Joint_R_Shoulder_FK_parentConstraint1.cty" "slug_Joint_R_Shoulder_FK.ty"
		;
connectAttr "slug_Joint_R_Shoulder_FK_parentConstraint1.ctz" "slug_Joint_R_Shoulder_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Shoulder_FK.do";
connectAttr "slug_Joint_R_Shoulder_FK.s" "slug_Joint_R_Arm_FK.is";
connectAttr "slug_Joint_R_Arm_FK_orientConstraint1.crx" "slug_Joint_R_Arm_FK.rx"
		;
connectAttr "slug_Joint_R_Arm_FK_orientConstraint1.cry" "slug_Joint_R_Arm_FK.ry"
		;
connectAttr "slug_Joint_R_Arm_FK_orientConstraint1.crz" "slug_Joint_R_Arm_FK.rz"
		;
connectAttr "slug_Joint_R_Arm_FK_parentConstraint1.ctx" "slug_Joint_R_Arm_FK.tx"
		;
connectAttr "slug_Joint_R_Arm_FK_parentConstraint1.cty" "slug_Joint_R_Arm_FK.ty"
		;
connectAttr "slug_Joint_R_Arm_FK_parentConstraint1.ctz" "slug_Joint_R_Arm_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Arm_FK.do";
connectAttr "slug_Joint_R_Arm_FK.ro" "slug_Joint_R_Arm_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Arm_FK.pim" "slug_Joint_R_Arm_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Arm_FK.jo" "slug_Joint_R_Arm_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Arm.r" "slug_Joint_R_Arm_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Arm.ro" "slug_Joint_R_Arm_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Arm.pm" "slug_Joint_R_Arm_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Arm_FK_orientConstraint1.w0" "slug_Joint_R_Arm_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Arm_FK_orientConstraint1.do";
connectAttr "slug_Joint_R_Arm_FK.ro" "slug_Joint_R_Arm_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_R_Arm_FK.pim" "slug_Joint_R_Arm_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Arm_FK.rp" "slug_Joint_R_Arm_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_R_Arm_FK.rpt" "slug_Joint_R_Arm_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_R_Arm_FK.jo" "slug_Joint_R_Arm_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Arm.t" "slug_Joint_R_Arm_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_R_Arm.rp" "slug_Joint_R_Arm_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_R_Arm.rpt" "slug_Joint_R_Arm_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_R_Arm.r" "slug_Joint_R_Arm_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Arm.ro" "slug_Joint_R_Arm_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Arm.s" "slug_Joint_R_Arm_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_R_Arm.pm" "slug_Joint_R_Arm_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Arm_FK_parentConstraint1.w0" "slug_Joint_R_Arm_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Arm_FK_parentConstraint1.do";
connectAttr "slug_Joint_R_Elbow_FK_orientConstraint1.crx" "slug_Joint_R_Elbow_FK.rx"
		;
connectAttr "slug_Joint_R_Elbow_FK_orientConstraint1.cry" "slug_Joint_R_Elbow_FK.ry"
		;
connectAttr "slug_Joint_R_Elbow_FK_orientConstraint1.crz" "slug_Joint_R_Elbow_FK.rz"
		;
connectAttr "slug_Joint_R_Elbow_FK_parentConstraint1.ctx" "slug_Joint_R_Elbow_FK.tx"
		;
connectAttr "slug_Joint_R_Elbow_FK_parentConstraint1.cty" "slug_Joint_R_Elbow_FK.ty"
		;
connectAttr "slug_Joint_R_Elbow_FK_parentConstraint1.ctz" "slug_Joint_R_Elbow_FK.tz"
		;
connectAttr "slug_Joint_R_Arm_FK.s" "slug_Joint_R_Elbow_FK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Elbow_FK.do";
connectAttr "slug_Joint_R_Elbow_FK.ro" "slug_Joint_R_Elbow_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Elbow_FK.pim" "slug_Joint_R_Elbow_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Elbow_FK.jo" "slug_Joint_R_Elbow_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Elbow.r" "slug_Joint_R_Elbow_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Elbow.ro" "slug_Joint_R_Elbow_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Elbow.pm" "slug_Joint_R_Elbow_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Elbow_FK_orientConstraint1.w0" "slug_Joint_R_Elbow_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Elbow_FK_orientConstraint1.do";
connectAttr "slug_Joint_R_Elbow_FK.ro" "slug_Joint_R_Elbow_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_R_Elbow_FK.pim" "slug_Joint_R_Elbow_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Elbow_FK.rp" "slug_Joint_R_Elbow_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_R_Elbow_FK.rpt" "slug_Joint_R_Elbow_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_R_Elbow_FK.jo" "slug_Joint_R_Elbow_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Elbow.t" "slug_Joint_R_Elbow_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_R_Elbow.rp" "slug_Joint_R_Elbow_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_R_Elbow.rpt" "slug_Joint_R_Elbow_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_R_Elbow.r" "slug_Joint_R_Elbow_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Elbow.ro" "slug_Joint_R_Elbow_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Elbow.s" "slug_Joint_R_Elbow_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_R_Elbow.pm" "slug_Joint_R_Elbow_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Elbow_FK_parentConstraint1.w0" "slug_Joint_R_Elbow_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Elbow_FK_parentConstraint1.do";
connectAttr "unitConversion17.o" "slug_Joint_R_Forearm_FK.rx";
connectAttr "slug_Joint_R_Elbow_FK.s" "slug_Joint_R_Forearm_FK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Forearm_FK.do";
connectAttr "slug_Joint_R_Forearm_FK.s" "slug_Joint_R_Wrist_FK.is";
connectAttr "slug_Joint_R_Wrist_FK_orientConstraint1.cry" "slug_Joint_R_Wrist_FK.ry"
		;
connectAttr "slug_Joint_R_Wrist_FK_orientConstraint1.crz" "slug_Joint_R_Wrist_FK.rz"
		;
connectAttr "unitConversion16.o" "slug_Joint_R_Wrist_FK.rx";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Wrist_FK.do";
connectAttr "slug_Joint_R_Wrist_FK.ro" "slug_Joint_R_Wrist_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Wrist_FK.pim" "slug_Joint_R_Wrist_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Wrist_FK.jo" "slug_Joint_R_Wrist_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Hand.r" "slug_Joint_R_Wrist_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Hand.ro" "slug_Joint_R_Wrist_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Hand.pm" "slug_Joint_R_Wrist_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Wrist_FK_orientConstraint1.w0" "slug_Joint_R_Wrist_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Wrist_FK_orientConstraint1.do";
connectAttr "slug_Joint_R_Shoulder_FK.s" "slug_Joint_R_Arm_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Arm_IK.do";
connectAttr "slug_Joint_R_Arm_IK.s" "slug_Joint_R_Elbow_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Elbow_IK.do";
connectAttr "unitConversion19.o" "slug_Joint_R_Forearm_IK.rx";
connectAttr "slug_Joint_R_Elbow_IK.s" "slug_Joint_R_Forearm_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Forearm_IK.do";
connectAttr "slug_Joint_R_Elbow_IK.s" "slug_Joint_R_Wrist_IK.is";
connectAttr "slug_Joint_R_Wrist_IK_orientConstraint1.crx" "slug_Joint_R_Wrist_IK.rx"
		;
connectAttr "slug_Joint_R_Wrist_IK_orientConstraint1.cry" "slug_Joint_R_Wrist_IK.ry"
		;
connectAttr "slug_Joint_R_Wrist_IK_orientConstraint1.crz" "slug_Joint_R_Wrist_IK.rz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Wrist_IK.do";
connectAttr "slug_Joint_R_Wrist_IK.ro" "slug_Joint_R_Wrist_IK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Wrist_IK.pim" "slug_Joint_R_Wrist_IK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Wrist_IK.jo" "slug_Joint_R_Wrist_IK_orientConstraint1.cjo"
		;
connectAttr "slug_Const_Joint_R_Wrist_IK.r" "slug_Joint_R_Wrist_IK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Const_Joint_R_Wrist_IK.ro" "slug_Joint_R_Wrist_IK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Const_Joint_R_Wrist_IK.pm" "slug_Joint_R_Wrist_IK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Wrist_IK_orientConstraint1.w0" "slug_Joint_R_Wrist_IK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Wrist_IK_orientConstraint1.do";
connectAttr "slug_Joint_R_Wrist_IK.tx" "slug_effector7.tx";
connectAttr "slug_Joint_R_Wrist_IK.ty" "slug_effector7.ty";
connectAttr "slug_Joint_R_Wrist_IK.tz" "slug_effector7.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_effector7.do";
connectAttr "slug_Joint_R_Shoulder_FK.ro" "slug_Joint_R_Shoulder_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Shoulder_FK.pim" "slug_Joint_R_Shoulder_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Shoulder_FK.jo" "slug_Joint_R_Shoulder_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Shoulder.r" "slug_Joint_R_Shoulder_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Shoulder.ro" "slug_Joint_R_Shoulder_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Shoulder.pm" "slug_Joint_R_Shoulder_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Shoulder_FK_orientConstraint1.w0" "slug_Joint_R_Shoulder_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Shoulder_FK_orientConstraint1.do"
		;
connectAttr "slug_Joint_R_Shoulder_FK.ro" "slug_Joint_R_Shoulder_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_R_Shoulder_FK.pim" "slug_Joint_R_Shoulder_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Shoulder_FK.rp" "slug_Joint_R_Shoulder_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_R_Shoulder_FK.rpt" "slug_Joint_R_Shoulder_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_R_Shoulder_FK.jo" "slug_Joint_R_Shoulder_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Shoulder.t" "slug_Joint_R_Shoulder_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_R_Shoulder.rp" "slug_Joint_R_Shoulder_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_R_Shoulder.rpt" "slug_Joint_R_Shoulder_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_R_Shoulder.r" "slug_Joint_R_Shoulder_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Shoulder.ro" "slug_Joint_R_Shoulder_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Shoulder.s" "slug_Joint_R_Shoulder_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_R_Shoulder.pm" "slug_Joint_R_Shoulder_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Shoulder_FK_parentConstraint1.w0" "slug_Joint_R_Shoulder_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Shoulder_FK_parentConstraint1.do"
		;
connectAttr "slug_Joint_Mid_Chest_FK.ro" "slug_Joint_Mid_Chest_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Mid_Chest_FK.pim" "slug_Joint_Mid_Chest_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Mid_Chest_FK.jo" "slug_Joint_Mid_Chest_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Mid_Chest.r" "slug_Joint_Mid_Chest_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Mid_Chest.ro" "slug_Joint_Mid_Chest_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Mid_Chest.pm" "slug_Joint_Mid_Chest_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Mid_Chest_FK_orientConstraint1.w0" "slug_Joint_Mid_Chest_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Mid_Chest_FK_orientConstraint1.do"
		;
connectAttr "slug_Joint_Mid_Chest_FK.ro" "slug_Joint_Mid_Chest_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Mid_Chest_FK.pim" "slug_Joint_Mid_Chest_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Mid_Chest_FK.rp" "slug_Joint_Mid_Chest_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Mid_Chest_FK.rpt" "slug_Joint_Mid_Chest_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Mid_Chest_FK.jo" "slug_Joint_Mid_Chest_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Mid_Chest.t" "slug_Joint_Mid_Chest_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Mid_Chest.rp" "slug_Joint_Mid_Chest_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Mid_Chest.rpt" "slug_Joint_Mid_Chest_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Mid_Chest.r" "slug_Joint_Mid_Chest_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Mid_Chest.ro" "slug_Joint_Mid_Chest_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Mid_Chest.s" "slug_Joint_Mid_Chest_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Mid_Chest.pm" "slug_Joint_Mid_Chest_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Mid_Chest_FK_parentConstraint1.w0" "slug_Joint_Mid_Chest_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Mid_Chest_FK_parentConstraint1.do"
		;
connectAttr "slug_Joint_Chest3_FK.ro" "slug_Joint_Chest3_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Chest3_FK.pim" "slug_Joint_Chest3_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Chest3_FK.jo" "slug_Joint_Chest3_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Chest3.r" "slug_Joint_Chest3_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Chest3.ro" "slug_Joint_Chest3_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Chest3.pm" "slug_Joint_Chest3_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest3_FK_orientConstraint1.w0" "slug_Joint_Chest3_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest3_FK_orientConstraint1.do";
connectAttr "slug_Joint_Chest3_FK.ro" "slug_Joint_Chest3_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Chest3_FK.pim" "slug_Joint_Chest3_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Chest3_FK.rp" "slug_Joint_Chest3_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Chest3_FK.rpt" "slug_Joint_Chest3_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Chest3_FK.jo" "slug_Joint_Chest3_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Chest3.t" "slug_Joint_Chest3_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Chest3.rp" "slug_Joint_Chest3_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Chest3.rpt" "slug_Joint_Chest3_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Chest3.r" "slug_Joint_Chest3_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Chest3.ro" "slug_Joint_Chest3_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Chest3.s" "slug_Joint_Chest3_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Chest3.pm" "slug_Joint_Chest3_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest3_FK_parentConstraint1.w0" "slug_Joint_Chest3_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest3_FK_parentConstraint1.do";
connectAttr "slug_Joint_Chest2_FK.ro" "slug_Joint_Chest2_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Chest2_FK.pim" "slug_Joint_Chest2_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Chest2_FK.jo" "slug_Joint_Chest2_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Chest2.r" "slug_Joint_Chest2_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Chest2.ro" "slug_Joint_Chest2_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Chest2.pm" "slug_Joint_Chest2_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest2_FK_orientConstraint1.w0" "slug_Joint_Chest2_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest2_FK_orientConstraint1.do";
connectAttr "slug_Joint_Chest2_FK.ro" "slug_Joint_Chest2_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Chest2_FK.pim" "slug_Joint_Chest2_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Chest2_FK.rp" "slug_Joint_Chest2_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Chest2_FK.rpt" "slug_Joint_Chest2_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Chest2_FK.jo" "slug_Joint_Chest2_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Chest2.t" "slug_Joint_Chest2_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Chest2.rp" "slug_Joint_Chest2_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Chest2.rpt" "slug_Joint_Chest2_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Chest2.r" "slug_Joint_Chest2_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Chest2.ro" "slug_Joint_Chest2_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Chest2.s" "slug_Joint_Chest2_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Chest2.pm" "slug_Joint_Chest2_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest2_FK_parentConstraint1.w0" "slug_Joint_Chest2_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest2_FK_parentConstraint1.do";
connectAttr "slug_Joint_Chest_FK.ro" "slug_Joint_Chest_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Chest_FK.pim" "slug_Joint_Chest_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Chest_FK.jo" "slug_Joint_Chest_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Chest.r" "slug_Joint_Chest_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Chest.ro" "slug_Joint_Chest_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Chest.pm" "slug_Joint_Chest_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest_FK_orientConstraint1.w0" "slug_Joint_Chest_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest_FK_orientConstraint1.do";
connectAttr "slug_Joint_Chest_FK.ro" "slug_Joint_Chest_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Chest_FK.pim" "slug_Joint_Chest_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Chest_FK.rp" "slug_Joint_Chest_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Chest_FK.rpt" "slug_Joint_Chest_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Chest_FK.jo" "slug_Joint_Chest_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Chest.t" "slug_Joint_Chest_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Chest.rp" "slug_Joint_Chest_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Chest.rpt" "slug_Joint_Chest_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Chest.r" "slug_Joint_Chest_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Chest.ro" "slug_Joint_Chest_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Chest.s" "slug_Joint_Chest_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Chest.pm" "slug_Joint_Chest_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest_FK_parentConstraint1.w0" "slug_Joint_Chest_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Chest_FK_parentConstraint1.do";
connectAttr "slug_Joint_L_Leg_Front.msg" "slug_IK_Const_Joint_L_Front_Leg_IK.hsj"
		;
connectAttr "slug_effector9.hp" "slug_IK_Const_Joint_L_Front_Leg_IK.hee";
connectAttr "ikRPsolver.msg" "slug_IK_Const_Joint_L_Front_Leg_IK.hsv";
connectAttr "slug_ikHandle2_pointConstraint1.ctx" "slug_IK_Const_Joint_L_Front_Leg_IK.tx"
		;
connectAttr "slug_ikHandle2_pointConstraint1.cty" "slug_IK_Const_Joint_L_Front_Leg_IK.ty"
		;
connectAttr "slug_ikHandle2_pointConstraint1.ctz" "slug_IK_Const_Joint_L_Front_Leg_IK.tz"
		;
connectAttr "L_Front_IK_Blend.out[0]" "slug_IK_Const_Joint_L_Front_Leg_IK.ikb";
connectAttr "slug_IK_Const_Joint_L_Front_Leg_IK.pim" "slug_ikHandle2_pointConstraint1.cpim"
		;
connectAttr "slug_IK_Const_Joint_L_Front_Leg_IK.rp" "slug_ikHandle2_pointConstraint1.crp"
		;
connectAttr "slug_IK_Const_Joint_L_Front_Leg_IK.rpt" "slug_ikHandle2_pointConstraint1.crt"
		;
connectAttr "slug_Const_Joint_L_Front_Ankle_IK.t" "slug_ikHandle2_pointConstraint1.tg[0].tt"
		;
connectAttr "slug_Const_Joint_L_Front_Ankle_IK.rp" "slug_ikHandle2_pointConstraint1.tg[0].trp"
		;
connectAttr "slug_Const_Joint_L_Front_Ankle_IK.rpt" "slug_ikHandle2_pointConstraint1.tg[0].trt"
		;
connectAttr "slug_Const_Joint_L_Front_Ankle_IK.pm" "slug_ikHandle2_pointConstraint1.tg[0].tpm"
		;
connectAttr "slug_ikHandle2_pointConstraint1.w0" "slug_ikHandle2_pointConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Leg_Front.msg" "slug_IK_Const_Joint_R_Front_Leg_IK.hsj"
		;
connectAttr "slug_effector10.hp" "slug_IK_Const_Joint_R_Front_Leg_IK.hee";
connectAttr "ikRPsolver.msg" "slug_IK_Const_Joint_R_Front_Leg_IK.hsv";
connectAttr "slug_ikHandle3_pointConstraint1.ctx" "slug_IK_Const_Joint_R_Front_Leg_IK.tx"
		;
connectAttr "slug_ikHandle3_pointConstraint1.cty" "slug_IK_Const_Joint_R_Front_Leg_IK.ty"
		;
connectAttr "slug_ikHandle3_pointConstraint1.ctz" "slug_IK_Const_Joint_R_Front_Leg_IK.tz"
		;
connectAttr "R_Front_IK_Blend.out[0]" "slug_IK_Const_Joint_R_Front_Leg_IK.ikb";
connectAttr "slug_IK_Const_Joint_R_Front_Leg_IK.pim" "slug_ikHandle3_pointConstraint1.cpim"
		;
connectAttr "slug_IK_Const_Joint_R_Front_Leg_IK.rp" "slug_ikHandle3_pointConstraint1.crp"
		;
connectAttr "slug_IK_Const_Joint_R_Front_Leg_IK.rpt" "slug_ikHandle3_pointConstraint1.crt"
		;
connectAttr "slug_Const_Joint_R_Front_Ankle_IK.t" "slug_ikHandle3_pointConstraint1.tg[0].tt"
		;
connectAttr "slug_Const_Joint_R_Front_Ankle_IK.rp" "slug_ikHandle3_pointConstraint1.tg[0].trp"
		;
connectAttr "slug_Const_Joint_R_Front_Ankle_IK.rpt" "slug_ikHandle3_pointConstraint1.tg[0].trt"
		;
connectAttr "slug_Const_Joint_R_Front_Ankle_IK.pm" "slug_ikHandle3_pointConstraint1.tg[0].tpm"
		;
connectAttr "slug_ikHandle3_pointConstraint1.w0" "slug_ikHandle3_pointConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_Waist_FK.ro" "slug_Joint_Waist_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Waist_FK.pim" "slug_Joint_Waist_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Waist_FK.jo" "slug_Joint_Waist_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Waist.r" "slug_Joint_Waist_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Waist.ro" "slug_Joint_Waist_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Waist.pm" "slug_Joint_Waist_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Waist_FK_orientConstraint1.w0" "slug_Joint_Waist_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Waist_FK_orientConstraint1.do";
connectAttr "slug_Joint_Waist_FK.ro" "slug_Joint_Waist_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Waist_FK.pim" "slug_Joint_Waist_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Waist_FK.rp" "slug_Joint_Waist_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Waist_FK.rpt" "slug_Joint_Waist_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Waist_FK.jo" "slug_Joint_Waist_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Waist.t" "slug_Joint_Waist_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Waist.rp" "slug_Joint_Waist_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Waist.rpt" "slug_Joint_Waist_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Waist.r" "slug_Joint_Waist_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Waist.ro" "slug_Joint_Waist_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Waist.s" "slug_Joint_Waist_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Waist.pm" "slug_Joint_Waist_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Waist_FK_parentConstraint1.w0" "slug_Joint_Waist_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Waist_FK_parentConstraint1.do";
connectAttr "slug_Joint_L_Leg_Mid.msg" "slug_IK_Const_Joint_L_Middle_Leg_IK.hsj"
		;
connectAttr "slug_effector8.hp" "slug_IK_Const_Joint_L_Middle_Leg_IK.hee";
connectAttr "ikRPsolver.msg" "slug_IK_Const_Joint_L_Middle_Leg_IK.hsv";
connectAttr "slug_ikHandle1_pointConstraint1.ctx" "slug_IK_Const_Joint_L_Middle_Leg_IK.tx"
		;
connectAttr "slug_ikHandle1_pointConstraint1.cty" "slug_IK_Const_Joint_L_Middle_Leg_IK.ty"
		;
connectAttr "slug_ikHandle1_pointConstraint1.ctz" "slug_IK_Const_Joint_L_Middle_Leg_IK.tz"
		;
connectAttr "L_Middle_IK_Blend.out[0]" "slug_IK_Const_Joint_L_Middle_Leg_IK.ikb"
		;
connectAttr "slug_IK_Const_Joint_L_Middle_Leg_IK.pim" "slug_ikHandle1_pointConstraint1.cpim"
		;
connectAttr "slug_IK_Const_Joint_L_Middle_Leg_IK.rp" "slug_ikHandle1_pointConstraint1.crp"
		;
connectAttr "slug_IK_Const_Joint_L_Middle_Leg_IK.rpt" "slug_ikHandle1_pointConstraint1.crt"
		;
connectAttr "slug_Const_Joint_L_Middle_Ankle_IK.t" "slug_ikHandle1_pointConstraint1.tg[0].tt"
		;
connectAttr "slug_Const_Joint_L_Middle_Ankle_IK.rp" "slug_ikHandle1_pointConstraint1.tg[0].trp"
		;
connectAttr "slug_Const_Joint_L_Middle_Ankle_IK.rpt" "slug_ikHandle1_pointConstraint1.tg[0].trt"
		;
connectAttr "slug_Const_Joint_L_Middle_Ankle_IK.pm" "slug_ikHandle1_pointConstraint1.tg[0].tpm"
		;
connectAttr "slug_ikHandle1_pointConstraint1.w0" "slug_ikHandle1_pointConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Leg_Mid.msg" "slug_IK_Const_Joint_R_Middle_Leg_IK.hsj"
		;
connectAttr "slug_effector11.hp" "slug_IK_Const_Joint_R_Middle_Leg_IK.hee";
connectAttr "ikRPsolver.msg" "slug_IK_Const_Joint_R_Middle_Leg_IK.hsv";
connectAttr "slug_ikHandle4_pointConstraint1.ctx" "slug_IK_Const_Joint_R_Middle_Leg_IK.tx"
		;
connectAttr "slug_ikHandle4_pointConstraint1.cty" "slug_IK_Const_Joint_R_Middle_Leg_IK.ty"
		;
connectAttr "slug_ikHandle4_pointConstraint1.ctz" "slug_IK_Const_Joint_R_Middle_Leg_IK.tz"
		;
connectAttr "R_Middle_IK_Blend.out[0]" "slug_IK_Const_Joint_R_Middle_Leg_IK.ikb"
		;
connectAttr "slug_IK_Const_Joint_R_Middle_Leg_IK.pim" "slug_ikHandle4_pointConstraint1.cpim"
		;
connectAttr "slug_IK_Const_Joint_R_Middle_Leg_IK.rp" "slug_ikHandle4_pointConstraint1.crp"
		;
connectAttr "slug_IK_Const_Joint_R_Middle_Leg_IK.rpt" "slug_ikHandle4_pointConstraint1.crt"
		;
connectAttr "slug_Const_Joint_R_Middle_Ankle_IK.t" "slug_ikHandle4_pointConstraint1.tg[0].tt"
		;
connectAttr "slug_Const_Joint_R_Middle_Ankle_IK.rp" "slug_ikHandle4_pointConstraint1.tg[0].trp"
		;
connectAttr "slug_Const_Joint_R_Middle_Ankle_IK.rpt" "slug_ikHandle4_pointConstraint1.tg[0].trt"
		;
connectAttr "slug_Const_Joint_R_Middle_Ankle_IK.pm" "slug_ikHandle4_pointConstraint1.tg[0].tpm"
		;
connectAttr "slug_ikHandle4_pointConstraint1.w0" "slug_ikHandle4_pointConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_Root_FK.s" "slug_Joint_Hip_FK.is";
connectAttr "slug_Joint_Hip_FK_orientConstraint1.crx" "slug_Joint_Hip_FK.rx";
connectAttr "slug_Joint_Hip_FK_orientConstraint1.cry" "slug_Joint_Hip_FK.ry";
connectAttr "slug_Joint_Hip_FK_orientConstraint1.crz" "slug_Joint_Hip_FK.rz";
connectAttr "slug_Joint_Hip_FK_parentConstraint1.ctx" "slug_Joint_Hip_FK.tx";
connectAttr "slug_Joint_Hip_FK_parentConstraint1.cty" "slug_Joint_Hip_FK.ty";
connectAttr "slug_Joint_Hip_FK_parentConstraint1.ctz" "slug_Joint_Hip_FK.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Hip_FK.do";
connectAttr "slug_Joint_Hip_FK.s" "slug_Joint_Tail1_FK.is";
connectAttr "slug_Joint_Tail1_FK_orientConstraint1.crx" "slug_Joint_Tail1_FK.rx"
		;
connectAttr "slug_Joint_Tail1_FK_orientConstraint1.cry" "slug_Joint_Tail1_FK.ry"
		;
connectAttr "slug_Joint_Tail1_FK_orientConstraint1.crz" "slug_Joint_Tail1_FK.rz"
		;
connectAttr "slug_Joint_Tail1_FK_parentConstraint1.ctx" "slug_Joint_Tail1_FK.tx"
		;
connectAttr "slug_Joint_Tail1_FK_parentConstraint1.cty" "slug_Joint_Tail1_FK.ty"
		;
connectAttr "slug_Joint_Tail1_FK_parentConstraint1.ctz" "slug_Joint_Tail1_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail1_FK.do";
connectAttr "slug_Joint_Tail1_FK.s" "slug_Joint_Tail2_FK.is";
connectAttr "slug_Joint_Tail2_FK_orientConstraint1.crx" "slug_Joint_Tail2_FK.rx"
		;
connectAttr "slug_Joint_Tail2_FK_orientConstraint1.cry" "slug_Joint_Tail2_FK.ry"
		;
connectAttr "slug_Joint_Tail2_FK_orientConstraint1.crz" "slug_Joint_Tail2_FK.rz"
		;
connectAttr "slug_Joint_Tail2_FK_parentConstraint1.ctx" "slug_Joint_Tail2_FK.tx"
		;
connectAttr "slug_Joint_Tail2_FK_parentConstraint1.cty" "slug_Joint_Tail2_FK.ty"
		;
connectAttr "slug_Joint_Tail2_FK_parentConstraint1.ctz" "slug_Joint_Tail2_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail2_FK.do";
connectAttr "slug_Joint_Tail2_FK.s" "slug_Joint_Tail3_FK.is";
connectAttr "slug_Joint_Tail3_FK_orientConstraint1.crx" "slug_Joint_Tail3_FK.rx"
		;
connectAttr "slug_Joint_Tail3_FK_orientConstraint1.cry" "slug_Joint_Tail3_FK.ry"
		;
connectAttr "slug_Joint_Tail3_FK_orientConstraint1.crz" "slug_Joint_Tail3_FK.rz"
		;
connectAttr "slug_Joint_Tail3_FK_parentConstraint1.ctx" "slug_Joint_Tail3_FK.tx"
		;
connectAttr "slug_Joint_Tail3_FK_parentConstraint1.cty" "slug_Joint_Tail3_FK.ty"
		;
connectAttr "slug_Joint_Tail3_FK_parentConstraint1.ctz" "slug_Joint_Tail3_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail3_FK.do";
connectAttr "slug_Joint_Tail3_FK.ro" "slug_Joint_Tail3_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Tail3_FK.pim" "slug_Joint_Tail3_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Tail3_FK.jo" "slug_Joint_Tail3_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Tail3.r" "slug_Joint_Tail3_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Tail3.ro" "slug_Joint_Tail3_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Tail3.pm" "slug_Joint_Tail3_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail3_FK_orientConstraint1.w0" "slug_Joint_Tail3_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail3_FK_orientConstraint1.do";
connectAttr "slug_Joint_Tail3_FK.ro" "slug_Joint_Tail3_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Tail3_FK.pim" "slug_Joint_Tail3_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Tail3_FK.rp" "slug_Joint_Tail3_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Tail3_FK.rpt" "slug_Joint_Tail3_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Tail3_FK.jo" "slug_Joint_Tail3_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Tail3.t" "slug_Joint_Tail3_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Tail3.rp" "slug_Joint_Tail3_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Tail3.rpt" "slug_Joint_Tail3_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Tail3.r" "slug_Joint_Tail3_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Tail3.ro" "slug_Joint_Tail3_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Tail3.s" "slug_Joint_Tail3_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Tail3.pm" "slug_Joint_Tail3_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail3_FK_parentConstraint1.w0" "slug_Joint_Tail3_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail3_FK_parentConstraint1.do";
connectAttr "slug_Joint_Tail2_FK.ro" "slug_Joint_Tail2_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Tail2_FK.pim" "slug_Joint_Tail2_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Tail2_FK.jo" "slug_Joint_Tail2_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Tail2.r" "slug_Joint_Tail2_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Tail2.ro" "slug_Joint_Tail2_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Tail2.pm" "slug_Joint_Tail2_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail2_FK_orientConstraint1.w0" "slug_Joint_Tail2_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail2_FK_orientConstraint1.do";
connectAttr "slug_Joint_Tail2_FK.ro" "slug_Joint_Tail2_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Tail2_FK.pim" "slug_Joint_Tail2_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Tail2_FK.rp" "slug_Joint_Tail2_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Tail2_FK.rpt" "slug_Joint_Tail2_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Tail2_FK.jo" "slug_Joint_Tail2_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Tail2.t" "slug_Joint_Tail2_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Tail2.rp" "slug_Joint_Tail2_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Tail2.rpt" "slug_Joint_Tail2_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Tail2.r" "slug_Joint_Tail2_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Tail2.ro" "slug_Joint_Tail2_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Tail2.s" "slug_Joint_Tail2_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Tail2.pm" "slug_Joint_Tail2_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail2_FK_parentConstraint1.w0" "slug_Joint_Tail2_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail2_FK_parentConstraint1.do";
connectAttr "slug_Joint_Tail1_FK.ro" "slug_Joint_Tail1_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Tail1_FK.pim" "slug_Joint_Tail1_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Tail1_FK.jo" "slug_Joint_Tail1_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_Tail1.r" "slug_Joint_Tail1_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Tail1.ro" "slug_Joint_Tail1_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Tail1.pm" "slug_Joint_Tail1_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail1_FK_orientConstraint1.w0" "slug_Joint_Tail1_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail1_FK_orientConstraint1.do";
connectAttr "slug_Joint_Tail1_FK.ro" "slug_Joint_Tail1_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_Tail1_FK.pim" "slug_Joint_Tail1_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_Tail1_FK.rp" "slug_Joint_Tail1_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_Tail1_FK.rpt" "slug_Joint_Tail1_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_Tail1_FK.jo" "slug_Joint_Tail1_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_Tail1.t" "slug_Joint_Tail1_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_Tail1.rp" "slug_Joint_Tail1_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_Tail1.rpt" "slug_Joint_Tail1_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Tail1.r" "slug_Joint_Tail1_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_Tail1.ro" "slug_Joint_Tail1_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Tail1.s" "slug_Joint_Tail1_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_Tail1.pm" "slug_Joint_Tail1_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail1_FK_parentConstraint1.w0" "slug_Joint_Tail1_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail1_FK_parentConstraint1.do";
connectAttr "slug_Joint_Hip_FK.s" "slug_Joint_Tail1_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail1_IK.do";
connectAttr "slug_Joint_Tail1_IK.s" "slug_Joint_Tail2_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail2_IK.do";
connectAttr "slug_Joint_Tail2_IK.s" "slug_Joint_Tail3_IK.is";
connectAttr "slug_Joint_Tail3_IK_orientConstraint1.crx" "slug_Joint_Tail3_IK.rx"
		;
connectAttr "slug_Joint_Tail3_IK_orientConstraint1.cry" "slug_Joint_Tail3_IK.ry"
		;
connectAttr "slug_Joint_Tail3_IK_orientConstraint1.crz" "slug_Joint_Tail3_IK.rz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail3_IK.do";
connectAttr "slug_Joint_Tail3_IK.ro" "slug_Joint_Tail3_IK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Tail3_IK.pim" "slug_Joint_Tail3_IK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Tail3_IK.jo" "slug_Joint_Tail3_IK_orientConstraint1.cjo"
		;
connectAttr "slug_Tail_IK_CNTRL.r" "slug_Joint_Tail3_IK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Tail_IK_CNTRL.ro" "slug_Joint_Tail3_IK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Tail_IK_CNTRL.pm" "slug_Joint_Tail3_IK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail3_IK_orientConstraint1.w0" "slug_Joint_Tail3_IK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Tail3_IK_orientConstraint1.do";
connectAttr "slug_Joint_Tail3_IK.tx" "slug_effector5.tx";
connectAttr "slug_Joint_Tail3_IK.ty" "slug_effector5.ty";
connectAttr "slug_Joint_Tail3_IK.tz" "slug_effector5.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_effector5.do";
connectAttr "slug_Joint_Hip_FK.s" "slug_Joint_L_Leg_FK.is";
connectAttr "slug_Joint_L_Leg_FK_orientConstraint1.crx" "slug_Joint_L_Leg_FK.rx"
		;
connectAttr "slug_Joint_L_Leg_FK_orientConstraint1.cry" "slug_Joint_L_Leg_FK.ry"
		;
connectAttr "slug_Joint_L_Leg_FK_orientConstraint1.crz" "slug_Joint_L_Leg_FK.rz"
		;
connectAttr "slug_Joint_L_Leg_FK_parentConstraint1.ctx" "slug_Joint_L_Leg_FK.tx"
		;
connectAttr "slug_Joint_L_Leg_FK_parentConstraint1.cty" "slug_Joint_L_Leg_FK.ty"
		;
connectAttr "slug_Joint_L_Leg_FK_parentConstraint1.ctz" "slug_Joint_L_Leg_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Leg_FK.do";
connectAttr "slug_Joint_L_Leg_FK.s" "slug_Joint_L_Knee_FK.is";
connectAttr "slug_Joint_L_Knee_FK_orientConstraint1.crx" "slug_Joint_L_Knee_FK.rx"
		;
connectAttr "slug_Joint_L_Knee_FK_orientConstraint1.cry" "slug_Joint_L_Knee_FK.ry"
		;
connectAttr "slug_Joint_L_Knee_FK_orientConstraint1.crz" "slug_Joint_L_Knee_FK.rz"
		;
connectAttr "slug_Joint_L_Knee_FK_parentConstraint1.ctx" "slug_Joint_L_Knee_FK.tx"
		;
connectAttr "slug_Joint_L_Knee_FK_parentConstraint1.cty" "slug_Joint_L_Knee_FK.ty"
		;
connectAttr "slug_Joint_L_Knee_FK_parentConstraint1.ctz" "slug_Joint_L_Knee_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Knee_FK.do";
connectAttr "slug_Joint_L_Knee_FK.s" "slug_Joint_L_Ankle_FK.is";
connectAttr "slug_Joint_L_Ankle_FK_orientConstraint1.crx" "slug_Joint_L_Ankle_FK.rx"
		;
connectAttr "slug_Joint_L_Ankle_FK_orientConstraint1.cry" "slug_Joint_L_Ankle_FK.ry"
		;
connectAttr "slug_Joint_L_Ankle_FK_orientConstraint1.crz" "slug_Joint_L_Ankle_FK.rz"
		;
connectAttr "slug_Joint_L_Ankle_FK_parentConstraint1.ctx" "slug_Joint_L_Ankle_FK.tx"
		;
connectAttr "slug_Joint_L_Ankle_FK_parentConstraint1.cty" "slug_Joint_L_Ankle_FK.ty"
		;
connectAttr "slug_Joint_L_Ankle_FK_parentConstraint1.ctz" "slug_Joint_L_Ankle_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Ankle_FK.do";
connectAttr "slug_Joint_L_Ankle_FK.s" "slug_Joint_L_Toe_FK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Toe_FK.do";
connectAttr "slug_Joint_L_Ankle_FK.ro" "slug_Joint_L_Ankle_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Ankle_FK.pim" "slug_Joint_L_Ankle_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Ankle_FK.jo" "slug_Joint_L_Ankle_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Ankle.r" "slug_Joint_L_Ankle_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Ankle.ro" "slug_Joint_L_Ankle_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Ankle.pm" "slug_Joint_L_Ankle_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Ankle_FK_orientConstraint1.w0" "slug_Joint_L_Ankle_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Ankle_FK_orientConstraint1.do";
connectAttr "slug_Joint_L_Ankle_FK.ro" "slug_Joint_L_Ankle_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_L_Ankle_FK.pim" "slug_Joint_L_Ankle_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Ankle_FK.rp" "slug_Joint_L_Ankle_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_L_Ankle_FK.rpt" "slug_Joint_L_Ankle_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Ankle_FK.jo" "slug_Joint_L_Ankle_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Ankle.t" "slug_Joint_L_Ankle_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_L_Ankle.rp" "slug_Joint_L_Ankle_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_L_Ankle.rpt" "slug_Joint_L_Ankle_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_L_Ankle.r" "slug_Joint_L_Ankle_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Ankle.ro" "slug_Joint_L_Ankle_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Ankle.s" "slug_Joint_L_Ankle_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_L_Ankle.pm" "slug_Joint_L_Ankle_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Ankle_FK_parentConstraint1.w0" "slug_Joint_L_Ankle_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Ankle_FK_parentConstraint1.do";
connectAttr "slug_Joint_L_Knee_FK.ro" "slug_Joint_L_Knee_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Knee_FK.pim" "slug_Joint_L_Knee_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Knee_FK.jo" "slug_Joint_L_Knee_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Knee.r" "slug_Joint_L_Knee_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Knee.ro" "slug_Joint_L_Knee_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Knee.pm" "slug_Joint_L_Knee_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Knee_FK_orientConstraint1.w0" "slug_Joint_L_Knee_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Knee_FK_orientConstraint1.do";
connectAttr "slug_Joint_L_Knee_FK.ro" "slug_Joint_L_Knee_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_L_Knee_FK.pim" "slug_Joint_L_Knee_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Knee_FK.rp" "slug_Joint_L_Knee_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_L_Knee_FK.rpt" "slug_Joint_L_Knee_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Knee_FK.jo" "slug_Joint_L_Knee_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Knee.t" "slug_Joint_L_Knee_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_L_Knee.rp" "slug_Joint_L_Knee_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_L_Knee.rpt" "slug_Joint_L_Knee_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_L_Knee.r" "slug_Joint_L_Knee_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Knee.ro" "slug_Joint_L_Knee_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Knee.s" "slug_Joint_L_Knee_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_L_Knee.pm" "slug_Joint_L_Knee_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Knee_FK_parentConstraint1.w0" "slug_Joint_L_Knee_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Knee_FK_parentConstraint1.do";
connectAttr "slug_Joint_L_Leg_FK.ro" "slug_Joint_L_Leg_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Leg_FK.pim" "slug_Joint_L_Leg_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Leg_FK.jo" "slug_Joint_L_Leg_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Leg.r" "slug_Joint_L_Leg_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Leg.ro" "slug_Joint_L_Leg_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Leg.pm" "slug_Joint_L_Leg_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Leg_FK_orientConstraint1.w0" "slug_Joint_L_Leg_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Leg_FK_orientConstraint1.do";
connectAttr "slug_Joint_L_Leg_FK.ro" "slug_Joint_L_Leg_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_L_Leg_FK.pim" "slug_Joint_L_Leg_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Leg_FK.rp" "slug_Joint_L_Leg_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_L_Leg_FK.rpt" "slug_Joint_L_Leg_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Leg_FK.jo" "slug_Joint_L_Leg_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_L_Leg.t" "slug_Joint_L_Leg_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_L_Leg.rp" "slug_Joint_L_Leg_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_L_Leg.rpt" "slug_Joint_L_Leg_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_L_Leg.r" "slug_Joint_L_Leg_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_L_Leg.ro" "slug_Joint_L_Leg_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_L_Leg.s" "slug_Joint_L_Leg_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_L_Leg.pm" "slug_Joint_L_Leg_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Leg_FK_parentConstraint1.w0" "slug_Joint_L_Leg_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Leg_FK_parentConstraint1.do";
connectAttr "slug_Joint_Hip_FK.s" "slug_Joint_L_Leg_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Leg_IK.do";
connectAttr "slug_Joint_L_Leg_IK.s" "slug_Joint_L_Knee_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Knee_IK.do";
connectAttr "slug_Joint_L_Knee_IK.s" "slug_Joint_L_Ankle_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Ankle_IK.do";
connectAttr "slug_Joint_L_Ankle_IK.s" "slug_Joint_L_Toe_IK.is";
connectAttr "Joint_L_Toe_IK_rotateX.o" "slug_Joint_L_Toe_IK.rx";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_L_Toe_IK.do";
connectAttr "slug_Joint_L_Toe_IK.tx" "slug_effector2.tx";
connectAttr "slug_Joint_L_Toe_IK.ty" "slug_effector2.ty";
connectAttr "slug_Joint_L_Toe_IK.tz" "slug_effector2.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_effector2.do";
connectAttr "slug_Joint_L_Ankle_IK.tx" "slug_effector1.tx";
connectAttr "slug_Joint_L_Ankle_IK.ty" "slug_effector1.ty";
connectAttr "slug_Joint_L_Ankle_IK.tz" "slug_effector1.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_effector1.do";
connectAttr "slug_Joint_Hip_FK.s" "slug_Joint_R_Leg_FK.is";
connectAttr "slug_Joint_R_Leg_FK_orientConstraint1.crx" "slug_Joint_R_Leg_FK.rx"
		;
connectAttr "slug_Joint_R_Leg_FK_orientConstraint1.cry" "slug_Joint_R_Leg_FK.ry"
		;
connectAttr "slug_Joint_R_Leg_FK_orientConstraint1.crz" "slug_Joint_R_Leg_FK.rz"
		;
connectAttr "slug_Joint_R_Leg_FK_parentConstraint1.ctx" "slug_Joint_R_Leg_FK.tx"
		;
connectAttr "slug_Joint_R_Leg_FK_parentConstraint1.cty" "slug_Joint_R_Leg_FK.ty"
		;
connectAttr "slug_Joint_R_Leg_FK_parentConstraint1.ctz" "slug_Joint_R_Leg_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Leg_FK.do";
connectAttr "slug_Joint_R_Leg_FK.s" "slug_Joint_R_Knee_FK.is";
connectAttr "slug_Joint_R_Knee_FK_orientConstraint1.crx" "slug_Joint_R_Knee_FK.rx"
		;
connectAttr "slug_Joint_R_Knee_FK_orientConstraint1.cry" "slug_Joint_R_Knee_FK.ry"
		;
connectAttr "slug_Joint_R_Knee_FK_orientConstraint1.crz" "slug_Joint_R_Knee_FK.rz"
		;
connectAttr "slug_Joint_R_Knee_FK_parentConstraint1.ctx" "slug_Joint_R_Knee_FK.tx"
		;
connectAttr "slug_Joint_R_Knee_FK_parentConstraint1.cty" "slug_Joint_R_Knee_FK.ty"
		;
connectAttr "slug_Joint_R_Knee_FK_parentConstraint1.ctz" "slug_Joint_R_Knee_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Knee_FK.do";
connectAttr "slug_Joint_R_Knee_FK.s" "slug_Joint_R_Ankle_FK.is";
connectAttr "slug_Joint_R_Ankle_FK_orientConstraint1.crx" "slug_Joint_R_Ankle_FK.rx"
		;
connectAttr "slug_Joint_R_Ankle_FK_orientConstraint1.cry" "slug_Joint_R_Ankle_FK.ry"
		;
connectAttr "slug_Joint_R_Ankle_FK_orientConstraint1.crz" "slug_Joint_R_Ankle_FK.rz"
		;
connectAttr "slug_Joint_R_Ankle_FK_parentConstraint1.ctx" "slug_Joint_R_Ankle_FK.tx"
		;
connectAttr "slug_Joint_R_Ankle_FK_parentConstraint1.cty" "slug_Joint_R_Ankle_FK.ty"
		;
connectAttr "slug_Joint_R_Ankle_FK_parentConstraint1.ctz" "slug_Joint_R_Ankle_FK.tz"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Ankle_FK.do";
connectAttr "slug_Joint_R_Ankle_FK.s" "slug_Joint_R_Toe_FK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Toe_FK.do";
connectAttr "slug_Joint_R_Ankle_FK.ro" "slug_Joint_R_Ankle_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Ankle_FK.pim" "slug_Joint_R_Ankle_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Ankle_FK.jo" "slug_Joint_R_Ankle_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Ankle.r" "slug_Joint_R_Ankle_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Ankle.ro" "slug_Joint_R_Ankle_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Ankle.pm" "slug_Joint_R_Ankle_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Ankle_FK_orientConstraint1.w0" "slug_Joint_R_Ankle_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Ankle_FK_orientConstraint1.do";
connectAttr "slug_Joint_R_Ankle_FK.ro" "slug_Joint_R_Ankle_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_R_Ankle_FK.pim" "slug_Joint_R_Ankle_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Ankle_FK.rp" "slug_Joint_R_Ankle_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_R_Ankle_FK.rpt" "slug_Joint_R_Ankle_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_R_Ankle_FK.jo" "slug_Joint_R_Ankle_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Ankle.t" "slug_Joint_R_Ankle_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_R_Ankle.rp" "slug_Joint_R_Ankle_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_R_Ankle.rpt" "slug_Joint_R_Ankle_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_R_Ankle.r" "slug_Joint_R_Ankle_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Ankle.ro" "slug_Joint_R_Ankle_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Ankle.s" "slug_Joint_R_Ankle_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_R_Ankle.pm" "slug_Joint_R_Ankle_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Ankle_FK_parentConstraint1.w0" "slug_Joint_R_Ankle_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Ankle_FK_parentConstraint1.do";
connectAttr "slug_Joint_R_Knee_FK.ro" "slug_Joint_R_Knee_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Knee_FK.pim" "slug_Joint_R_Knee_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Knee_FK.jo" "slug_Joint_R_Knee_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Knee.r" "slug_Joint_R_Knee_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Knee.ro" "slug_Joint_R_Knee_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Knee.pm" "slug_Joint_R_Knee_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Knee_FK_orientConstraint1.w0" "slug_Joint_R_Knee_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Knee_FK_orientConstraint1.do";
connectAttr "slug_Joint_R_Knee_FK.ro" "slug_Joint_R_Knee_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_R_Knee_FK.pim" "slug_Joint_R_Knee_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Knee_FK.rp" "slug_Joint_R_Knee_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_R_Knee_FK.rpt" "slug_Joint_R_Knee_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_R_Knee_FK.jo" "slug_Joint_R_Knee_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Knee.t" "slug_Joint_R_Knee_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_R_Knee.rp" "slug_Joint_R_Knee_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_R_Knee.rpt" "slug_Joint_R_Knee_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_R_Knee.r" "slug_Joint_R_Knee_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Knee.ro" "slug_Joint_R_Knee_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Knee.s" "slug_Joint_R_Knee_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_R_Knee.pm" "slug_Joint_R_Knee_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Knee_FK_parentConstraint1.w0" "slug_Joint_R_Knee_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Knee_FK_parentConstraint1.do";
connectAttr "slug_Joint_R_Leg_FK.ro" "slug_Joint_R_Leg_FK_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Leg_FK.pim" "slug_Joint_R_Leg_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Leg_FK.jo" "slug_Joint_R_Leg_FK_orientConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Leg.r" "slug_Joint_R_Leg_FK_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Leg.ro" "slug_Joint_R_Leg_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Leg.pm" "slug_Joint_R_Leg_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Leg_FK_orientConstraint1.w0" "slug_Joint_R_Leg_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Leg_FK_orientConstraint1.do";
connectAttr "slug_Joint_R_Leg_FK.ro" "slug_Joint_R_Leg_FK_parentConstraint1.cro"
		;
connectAttr "slug_Joint_R_Leg_FK.pim" "slug_Joint_R_Leg_FK_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Leg_FK.rp" "slug_Joint_R_Leg_FK_parentConstraint1.crp"
		;
connectAttr "slug_Joint_R_Leg_FK.rpt" "slug_Joint_R_Leg_FK_parentConstraint1.crt"
		;
connectAttr "slug_Joint_R_Leg_FK.jo" "slug_Joint_R_Leg_FK_parentConstraint1.cjo"
		;
connectAttr "slug_Cube_R_Leg.t" "slug_Joint_R_Leg_FK_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Cube_R_Leg.rp" "slug_Joint_R_Leg_FK_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Cube_R_Leg.rpt" "slug_Joint_R_Leg_FK_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_R_Leg.r" "slug_Joint_R_Leg_FK_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Cube_R_Leg.ro" "slug_Joint_R_Leg_FK_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_R_Leg.s" "slug_Joint_R_Leg_FK_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Cube_R_Leg.pm" "slug_Joint_R_Leg_FK_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Leg_FK_parentConstraint1.w0" "slug_Joint_R_Leg_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Leg_FK_parentConstraint1.do";
connectAttr "slug_Joint_Hip_FK.s" "slug_Joint_R_Leg_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Leg_IK.do";
connectAttr "slug_Joint_R_Leg_IK.s" "slug_Joint_R_Knee_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Knee_IK.do";
connectAttr "slug_Joint_R_Knee_IK.s" "slug_Joint_R_Ankle_IK.is";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Ankle_IK.do";
connectAttr "slug_Joint_R_Ankle_IK.s" "slug_Joint_R_Toe_IK.is";
connectAttr "Joint_R_Toe_IK_rotateX.o" "slug_Joint_R_Toe_IK.rx";
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_R_Toe_IK.do";
connectAttr "slug_Joint_R_Toe_IK.tx" "slug_effector4.tx";
connectAttr "slug_Joint_R_Toe_IK.ty" "slug_effector4.ty";
connectAttr "slug_Joint_R_Toe_IK.tz" "slug_effector4.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_effector4.do";
connectAttr "slug_Joint_R_Ankle_IK.tx" "slug_effector3.tx";
connectAttr "slug_Joint_R_Ankle_IK.ty" "slug_effector3.ty";
connectAttr "slug_Joint_R_Ankle_IK.tz" "slug_effector3.tz";
connectAttr "Layer_Skeleton_FK.di" "slug_effector3.do";
connectAttr "slug_Joint_Hip_FK.ro" "slug_Joint_Hip_FK_orientConstraint1.cro";
connectAttr "slug_Joint_Hip_FK.pim" "slug_Joint_Hip_FK_orientConstraint1.cpim";
connectAttr "slug_Joint_Hip_FK.jo" "slug_Joint_Hip_FK_orientConstraint1.cjo";
connectAttr "slug_Cube_Hip.r" "slug_Joint_Hip_FK_orientConstraint1.tg[0].tr";
connectAttr "slug_Cube_Hip.ro" "slug_Joint_Hip_FK_orientConstraint1.tg[0].tro";
connectAttr "slug_Cube_Hip.pm" "slug_Joint_Hip_FK_orientConstraint1.tg[0].tpm";
connectAttr "slug_Joint_Hip_FK_orientConstraint1.w0" "slug_Joint_Hip_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Hip_FK_orientConstraint1.do";
connectAttr "slug_Joint_Hip_FK.ro" "slug_Joint_Hip_FK_parentConstraint1.cro";
connectAttr "slug_Joint_Hip_FK.pim" "slug_Joint_Hip_FK_parentConstraint1.cpim";
connectAttr "slug_Joint_Hip_FK.rp" "slug_Joint_Hip_FK_parentConstraint1.crp";
connectAttr "slug_Joint_Hip_FK.rpt" "slug_Joint_Hip_FK_parentConstraint1.crt";
connectAttr "slug_Joint_Hip_FK.jo" "slug_Joint_Hip_FK_parentConstraint1.cjo";
connectAttr "slug_Cube_Hip.t" "slug_Joint_Hip_FK_parentConstraint1.tg[0].tt";
connectAttr "slug_Cube_Hip.rp" "slug_Joint_Hip_FK_parentConstraint1.tg[0].trp";
connectAttr "slug_Cube_Hip.rpt" "slug_Joint_Hip_FK_parentConstraint1.tg[0].trt";
connectAttr "slug_Cube_Hip.r" "slug_Joint_Hip_FK_parentConstraint1.tg[0].tr";
connectAttr "slug_Cube_Hip.ro" "slug_Joint_Hip_FK_parentConstraint1.tg[0].tro";
connectAttr "slug_Cube_Hip.s" "slug_Joint_Hip_FK_parentConstraint1.tg[0].ts";
connectAttr "slug_Cube_Hip.pm" "slug_Joint_Hip_FK_parentConstraint1.tg[0].tpm";
connectAttr "slug_Joint_Hip_FK_parentConstraint1.w0" "slug_Joint_Hip_FK_parentConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Hip_FK_parentConstraint1.do";
connectAttr "slug_Joint_Root_FK.ro" "slug_Joint_Root_FK_orientConstraint1.cro";
connectAttr "slug_Joint_Root_FK.pim" "slug_Joint_Root_FK_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Root_FK.jo" "slug_Joint_Root_FK_orientConstraint1.cjo";
connectAttr "slug_Cube_Root.r" "slug_Joint_Root_FK_orientConstraint1.tg[0].tr";
connectAttr "slug_Cube_Root.ro" "slug_Joint_Root_FK_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Cube_Root.pm" "slug_Joint_Root_FK_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Root_FK_orientConstraint1.w0" "slug_Joint_Root_FK_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Root_FK_orientConstraint1.do";
connectAttr "slug_Joint_Root_FK.pim" "slug_Joint_Root_FK_pointConstraint1.cpim";
connectAttr "slug_Joint_Root_FK.rp" "slug_Joint_Root_FK_pointConstraint1.crp";
connectAttr "slug_Joint_Root_FK.rpt" "slug_Joint_Root_FK_pointConstraint1.crt";
connectAttr "slug_Cube_Root.t" "slug_Joint_Root_FK_pointConstraint1.tg[0].tt";
connectAttr "slug_Cube_Root.rp" "slug_Joint_Root_FK_pointConstraint1.tg[0].trp";
connectAttr "slug_Cube_Root.rpt" "slug_Joint_Root_FK_pointConstraint1.tg[0].trt"
		;
connectAttr "slug_Cube_Root.pm" "slug_Joint_Root_FK_pointConstraint1.tg[0].tpm";
connectAttr "slug_Joint_Root_FK_pointConstraint1.w0" "slug_Joint_Root_FK_pointConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton_FK.di" "slug_Joint_Root_FK_pointConstraint1.do";
connectAttr "Layer_Control.di" "slug_control.do";
connectAttr "Layer_Control.di" "slug_Const_Character.do";
connectAttr "Layer_Control.di" "curveShape39.do";
connectAttr "Cube_Root_rotateY.o" "slug_Cube_Root.ry";
connectAttr "Cube_Root_rotateX.o" "slug_Cube_Root.rx";
connectAttr "Cube_Root_rotateZ.o" "slug_Cube_Root.rz";
connectAttr "Cube_Root_translateX.o" "slug_Cube_Root.tx";
connectAttr "Cube_Root_translateY.o" "slug_Cube_Root.ty";
connectAttr "Cube_Root_translateZ.o" "slug_Cube_Root.tz";
connectAttr "Layer_Control.di" "slug_Cube_Root.do";
connectAttr "Layer_Control.di" "curveShape40.do";
connectAttr "Cube_Waist_rotateY.o" "slug_Cube_Waist.ry";
connectAttr "Cube_Waist_rotateX.o" "slug_Cube_Waist.rx";
connectAttr "Cube_Waist_rotateZ.o" "slug_Cube_Waist.rz";
connectAttr "Layer_Control.di" "slug_Cube_Waist.do";
connectAttr "Layer_Control.di" "curveShape41.do";
connectAttr "Cube_Chest_rotateX.o" "slug_Cube_Chest.rx";
connectAttr "Cube_Chest_rotateY.o" "slug_Cube_Chest.ry";
connectAttr "Cube_Chest_rotateZ.o" "slug_Cube_Chest.rz";
connectAttr "Layer_Control.di" "slug_Cube_Chest.do";
connectAttr "Layer_Control.di" "curveShape42.do";
connectAttr "Cube_Chest2_rotateX.o" "slug_Cube_Chest2.rx";
connectAttr "Cube_Chest2_rotateY.o" "slug_Cube_Chest2.ry";
connectAttr "Cube_Chest2_rotateZ.o" "slug_Cube_Chest2.rz";
connectAttr "Layer_Control.di" "slug_Cube_Chest2.do";
connectAttr "Cube_Chest2_visibility.o" "slug_Cube_Chest2.v";
connectAttr "Layer_Control.di" "curveShape43.do";
connectAttr "Cube_Chest3_rotateX.o" "slug_Cube_Chest3.rx";
connectAttr "Cube_Chest3_rotateY.o" "slug_Cube_Chest3.ry";
connectAttr "Cube_Chest3_rotateZ.o" "slug_Cube_Chest3.rz";
connectAttr "Layer_Control.di" "slug_Cube_Chest3.do";
connectAttr "Cube_Chest3_visibility.o" "slug_Cube_Chest3.v";
connectAttr "Layer_Control.di" "curveShape44.do";
connectAttr "Cube_Mid_Chest_rotateX.o" "slug_Cube_Mid_Chest.rx";
connectAttr "Cube_Mid_Chest_rotateY.o" "slug_Cube_Mid_Chest.ry";
connectAttr "Cube_Mid_Chest_rotateZ.o" "slug_Cube_Mid_Chest.rz";
connectAttr "Layer_Control.di" "slug_Cube_Mid_Chest.do";
connectAttr "Layer_Control.di" "curveShape45.do";
connectAttr "Cube_Neck1_rotateX.o" "slug_Cube_Neck1.rx";
connectAttr "Cube_Neck1_rotateY.o" "slug_Cube_Neck1.ry";
connectAttr "Cube_Neck1_rotateZ.o" "slug_Cube_Neck1.rz";
connectAttr "Layer_Control.di" "slug_Cube_Neck1.do";
connectAttr "Cube_Neck1_visibility.o" "slug_Cube_Neck1.v";
connectAttr "Layer_Control.di" "curveShape46.do";
connectAttr "Cube_Head_rotateX.o" "slug_Cube_Head.rx";
connectAttr "Cube_Head_rotateZ.o" "slug_Cube_Head.rz";
connectAttr "Cube_Head_rotateY.o" "slug_Cube_Head.ry";
connectAttr "Layer_Control.di" "slug_Cube_Head.do";
connectAttr "Layer_Control.di" "curveShape47.do";
connectAttr "Layer_Control.di" "slug_Cube_R_Shoulder.do";
connectAttr "Cube_R_Arm_visibility.o" "slug_Cube_R_Arm.v" -l on;
connectAttr "Cube_R_Arm_rotateX.o" "slug_Cube_R_Arm.rx";
connectAttr "Cube_R_Arm_rotateY.o" "slug_Cube_R_Arm.ry";
connectAttr "Cube_R_Arm_rotateZ.o" "slug_Cube_R_Arm.rz";
connectAttr "Layer_Control.di" "slug_Cube_R_Arm.do";
connectAttr "Layer_Control.di" "curveShape54.do";
connectAttr "Cube_R_Elbow_rotateX.o" "slug_Cube_R_Elbow.rx";
connectAttr "Cube_R_Elbow_rotateY.o" "slug_Cube_R_Elbow.ry";
connectAttr "Cube_R_Elbow_rotateZ.o" "slug_Cube_R_Elbow.rz";
connectAttr "Layer_Control.di" "slug_Cube_R_Elbow.do";
connectAttr "Layer_Control.di" "curveShape55.do";
connectAttr "Cube_R_Hand_rotateX.o" "slug_Cube_R_Hand.rx";
connectAttr "Cube_R_Hand_rotateY.o" "slug_Cube_R_Hand.ry";
connectAttr "Cube_R_Hand_rotateZ.o" "slug_Cube_R_Hand.rz";
connectAttr "Layer_Control.di" "slug_Cube_R_Hand.do";
connectAttr "Cube_R_Hand_visibility.o" "slug_Cube_R_Hand.v";
connectAttr "Layer_Control.di" "curveShape56.do";
connectAttr "Layer_Control.di" "slug_Cube_L_Shoulder.do";
connectAttr "Cube_L_Arm_visibility.o" "slug_Cube_L_Arm.v" -l on;
connectAttr "Cube_L_Arm_rotateX.o" "slug_Cube_L_Arm.rx";
connectAttr "Cube_L_Arm_rotateY.o" "slug_Cube_L_Arm.ry";
connectAttr "Cube_L_Arm_rotateZ.o" "slug_Cube_L_Arm.rz";
connectAttr "Layer_Control.di" "slug_Cube_L_Arm.do";
connectAttr "Layer_Control.di" "curveShape48.do";
connectAttr "Cube_L_Elbow_rotateX.o" "slug_Cube_L_Elbow.rx";
connectAttr "Cube_L_Elbow_rotateY.o" "slug_Cube_L_Elbow.ry";
connectAttr "Cube_L_Elbow_rotateZ.o" "slug_Cube_L_Elbow.rz";
connectAttr "Layer_Control.di" "slug_Cube_L_Elbow.do";
connectAttr "Layer_Control.di" "curveShape49.do";
connectAttr "Cube_L_Hand_rotateX.o" "slug_Cube_L_Hand.rx";
connectAttr "Cube_L_Hand_rotateY.o" "slug_Cube_L_Hand.ry";
connectAttr "Cube_L_Hand_rotateZ.o" "slug_Cube_L_Hand.rz";
connectAttr "Layer_Control.di" "slug_Cube_L_Hand.do";
connectAttr "Cube_L_Hand_visibility.o" "slug_Cube_L_Hand.v";
connectAttr "Layer_Control.di" "curveShape53.do";
connectAttr "Cube_L_Leg_visibility.o" "slug_Cube_L_Leg.v" -l on;
connectAttr "Layer_Control.di" "slug_Cube_L_Leg.do";
connectAttr "Layer_Control.di" "curveShape57.do";
connectAttr "Cube_L_Knee_visibility.o" "slug_Cube_L_Knee.v" -l on;
connectAttr "Layer_Control.di" "slug_Cube_L_Knee.do";
connectAttr "Layer_Control.di" "curveShape58.do";
connectAttr "Cube_L_Ankle_visibility.o" "slug_Cube_L_Ankle.v" -l on;
connectAttr "Layer_Control.di" "slug_Cube_L_Ankle.do";
connectAttr "Layer_Control.di" "curveShape59.do";
connectAttr "Cube_R_Leg_visibility.o" "slug_Cube_R_Leg.v" -l on;
connectAttr "Cube_R_Leg_rotateX.o" "slug_Cube_R_Leg.rx";
connectAttr "Cube_R_Leg_rotateY.o" "slug_Cube_R_Leg.ry";
connectAttr "Cube_R_Leg_rotateZ.o" "slug_Cube_R_Leg.rz";
connectAttr "Layer_Control.di" "slug_Cube_R_Leg.do";
connectAttr "Layer_Control.di" "curveShape60.do";
connectAttr "Cube_R_Knee_visibility.o" "slug_Cube_R_Knee.v" -l on;
connectAttr "Cube_R_Knee_rotateX.o" "slug_Cube_R_Knee.rx";
connectAttr "Cube_R_Knee_rotateY.o" "slug_Cube_R_Knee.ry";
connectAttr "Cube_R_Knee_rotateZ.o" "slug_Cube_R_Knee.rz";
connectAttr "Layer_Control.di" "slug_Cube_R_Knee.do";
connectAttr "Layer_Control.di" "curveShape61.do";
connectAttr "Cube_R_Ankle_visibility.o" "slug_Cube_R_Ankle.v" -l on;
connectAttr "Cube_R_Ankle_rotateX.o" "slug_Cube_R_Ankle.rx";
connectAttr "Cube_R_Ankle_rotateY.o" "slug_Cube_R_Ankle.ry";
connectAttr "Cube_R_Ankle_rotateZ.o" "slug_Cube_R_Ankle.rz";
connectAttr "Layer_Control.di" "slug_Cube_R_Ankle.do";
connectAttr "Layer_Control.di" "curveShape62.do";
connectAttr "Cube_Hip_rotateX.o" "slug_Cube_Hip.rx";
connectAttr "Cube_Hip_rotateY.o" "slug_Cube_Hip.ry";
connectAttr "Cube_Hip_rotateZ.o" "slug_Cube_Hip.rz";
connectAttr "Layer_Control.di" "slug_Cube_Hip.do";
connectAttr "Layer_Control.di" "curveShape65.do";
connectAttr "Cube_Tail1_visibility.o" "slug_Cube_Tail1.v" -l on;
connectAttr "Cube_Tail1_rotateX.o" "slug_Cube_Tail1.rx";
connectAttr "Cube_Tail1_rotateY.o" "slug_Cube_Tail1.ry";
connectAttr "Cube_Tail1_rotateZ.o" "slug_Cube_Tail1.rz";
connectAttr "Layer_Control.di" "slug_Cube_Tail1.do";
connectAttr "Layer_Control.di" "curveShape50.do";
connectAttr "Cube_Tail2_rotateX.o" "slug_Cube_Tail2.rx";
connectAttr "Cube_Tail2_rotateY.o" "slug_Cube_Tail2.ry";
connectAttr "Cube_Tail2_rotateZ.o" "slug_Cube_Tail2.rz";
connectAttr "Layer_Control.di" "slug_Cube_Tail2.do";
connectAttr "Layer_Control.di" "curveShape51.do";
connectAttr "Cube_Tail3_rotateX.o" "slug_Cube_Tail3.rx";
connectAttr "Cube_Tail3_rotateY.o" "slug_Cube_Tail3.ry";
connectAttr "Cube_Tail3_rotateZ.o" "slug_Cube_Tail3.rz";
connectAttr "Layer_Control.di" "slug_Cube_Tail3.do";
connectAttr "Layer_Control.di" "curveShape52.do";
connectAttr "Pole_Joint_L_Wrist_IK_visibility.o" "slug_Pole_Joint_L_Wrist_IK.v" 
		-l on;
connectAttr "L_IK.di" "slug_Pole_Joint_L_Wrist_IK.do";
connectAttr "L_IK.di" "curveShape37.do";
connectAttr "Pole_Joint_R_Wrist_IK_visibility.o" "slug_Pole_Joint_R_Wrist_IK.v" 
		-l on;
connectAttr "R_IK.di" "slug_Pole_Joint_R_Wrist_IK.do";
connectAttr "R_IK.di" "curveShape38.do";
connectAttr "Const_Joint_R_Wrist_IK_rotateX.o" "slug_Const_Joint_R_Wrist_IK.rx";
connectAttr "Const_Joint_R_Wrist_IK_rotateY.o" "slug_Const_Joint_R_Wrist_IK.ry";
connectAttr "Const_Joint_R_Wrist_IK_rotateZ.o" "slug_Const_Joint_R_Wrist_IK.rz";
connectAttr "R_IK.di" "slug_Const_Joint_R_Wrist_IK.do";
connectAttr "Const_Joint_R_Wrist_IK_IK_Blend.o" "slug_Const_Joint_R_Wrist_IK.IK_Blend"
		;
connectAttr "Const_Joint_R_Wrist_IK_translateX.o" "slug_Const_Joint_R_Wrist_IK.tx"
		;
connectAttr "Const_Joint_R_Wrist_IK_translateY.o" "slug_Const_Joint_R_Wrist_IK.ty"
		;
connectAttr "Const_Joint_R_Wrist_IK_translateZ.o" "slug_Const_Joint_R_Wrist_IK.tz"
		;
connectAttr "R_IK.di" "curveShape32.do";
connectAttr "slug_Joint_R_Arm_IK.msg" "slug_R_arm_IKHandle.hsj";
connectAttr "slug_effector7.hp" "slug_R_arm_IKHandle.hee";
connectAttr "ikRPsolver.msg" "slug_R_arm_IKHandle.hsv";
connectAttr "unitConversion20.o" "slug_R_arm_IKHandle.pvx";
connectAttr "unitConversion21.o" "slug_R_arm_IKHandle.pvy";
connectAttr "unitConversion22.o" "slug_R_arm_IKHandle.pvz";
connectAttr "R_IK.di" "slug_R_arm_IKHandle.do";
connectAttr "slug_R_arm_IKHandle.pim" "slug_R_arm_IKHandle_poleVectorConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Arm_IK.pm" "slug_R_arm_IKHandle_poleVectorConstraint1.ps"
		;
connectAttr "slug_Joint_R_Arm_IK.t" "slug_R_arm_IKHandle_poleVectorConstraint1.crp"
		;
connectAttr "slug_Pole_Joint_R_Wrist_IK.t" "slug_R_arm_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "slug_Pole_Joint_R_Wrist_IK.rp" "slug_R_arm_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "slug_Pole_Joint_R_Wrist_IK.rpt" "slug_R_arm_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "slug_Pole_Joint_R_Wrist_IK.pm" "slug_R_arm_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "slug_R_arm_IKHandle_poleVectorConstraint1.w0" "slug_R_arm_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_IK.di" "slug_R_arm_IKHandle_poleVectorConstraint1.do";
connectAttr "Const_Joint_L_Wrist_IK_rotateX.o" "slug_Const_Joint_L_Wrist_IK.rx";
connectAttr "Const_Joint_L_Wrist_IK_rotateY.o" "slug_Const_Joint_L_Wrist_IK.ry";
connectAttr "Const_Joint_L_Wrist_IK_rotateZ.o" "slug_Const_Joint_L_Wrist_IK.rz";
connectAttr "L_IK.di" "slug_Const_Joint_L_Wrist_IK.do";
connectAttr "Const_Joint_L_Wrist_IK_IK_Blend.o" "slug_Const_Joint_L_Wrist_IK.IK_Blend"
		;
connectAttr "Const_Joint_L_Wrist_IK_translateX.o" "slug_Const_Joint_L_Wrist_IK.tx"
		;
connectAttr "Const_Joint_L_Wrist_IK_translateY.o" "slug_Const_Joint_L_Wrist_IK.ty"
		;
connectAttr "Const_Joint_L_Wrist_IK_translateZ.o" "slug_Const_Joint_L_Wrist_IK.tz"
		;
connectAttr "L_IK.di" "curveShape31.do";
connectAttr "slug_Joint_L_Arm_IK.msg" "slug_L_arm_IKHandle.hsj";
connectAttr "slug_effector6.hp" "slug_L_arm_IKHandle.hee";
connectAttr "ikRPsolver.msg" "slug_L_arm_IKHandle.hsv";
connectAttr "unitConversion12.o" "slug_L_arm_IKHandle.pvx";
connectAttr "unitConversion13.o" "slug_L_arm_IKHandle.pvy";
connectAttr "unitConversion14.o" "slug_L_arm_IKHandle.pvz";
connectAttr "L_IK.di" "slug_L_arm_IKHandle.do";
connectAttr "slug_L_arm_IKHandle.pim" "slug_L_arm_IKHandle_poleVectorConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Arm_IK.pm" "slug_L_arm_IKHandle_poleVectorConstraint1.ps"
		;
connectAttr "slug_Joint_L_Arm_IK.t" "slug_L_arm_IKHandle_poleVectorConstraint1.crp"
		;
connectAttr "slug_Pole_Joint_L_Wrist_IK.t" "slug_L_arm_IKHandle_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "slug_Pole_Joint_L_Wrist_IK.rp" "slug_L_arm_IKHandle_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "slug_Pole_Joint_L_Wrist_IK.rpt" "slug_L_arm_IKHandle_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "slug_Pole_Joint_L_Wrist_IK.pm" "slug_L_arm_IKHandle_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "slug_L_arm_IKHandle_poleVectorConstraint1.w0" "slug_L_arm_IKHandle_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_IK.di" "slug_L_arm_IKHandle_poleVectorConstraint1.do";
connectAttr "Const_Joint_R_Ankle_IK_IK_Blend.o" "slug_Const_Joint_R_Ankle_IK.IK_Blend"
		;
connectAttr "Const_Joint_R_Ankle_IK_Toe.o" "slug_Const_Joint_R_Ankle_IK.Toe";
connectAttr "Const_Joint_R_Ankle_IK_Roll.o" "slug_Const_Joint_R_Ankle_IK.Roll";
connectAttr "R_IK.di" "slug_Const_Joint_R_Ankle_IK.do";
connectAttr "Const_Joint_R_Ankle_IK_translateX.o" "slug_Const_Joint_R_Ankle_IK.tx"
		;
connectAttr "Const_Joint_R_Ankle_IK_translateY.o" "slug_Const_Joint_R_Ankle_IK.ty"
		;
connectAttr "Const_Joint_R_Ankle_IK_translateZ.o" "slug_Const_Joint_R_Ankle_IK.tz"
		;
connectAttr "Const_Joint_R_Ankle_IK_rotateX.o" "slug_Const_Joint_R_Ankle_IK.rx";
connectAttr "Const_Joint_R_Ankle_IK_rotateY.o" "slug_Const_Joint_R_Ankle_IK.ry";
connectAttr "Const_Joint_R_Ankle_IK_rotateZ.o" "slug_Const_Joint_R_Ankle_IK.rz";
connectAttr "R_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_R_Ankle_IK|curveShape34.do"
		;
connectAttr "R_IK.di" "slug_Pole_Joint_R_Ankle_IK.do";
connectAttr "Pole_Joint_R_Ankle_IK_translateX.o" "slug_Pole_Joint_R_Ankle_IK.tx"
		;
connectAttr "Pole_Joint_R_Ankle_IK_translateY.o" "slug_Pole_Joint_R_Ankle_IK.ty"
		;
connectAttr "Pole_Joint_R_Ankle_IK_translateZ.o" "slug_Pole_Joint_R_Ankle_IK.tz"
		;
connectAttr "R_IK.di" "curveShape36.do";
connectAttr "slug_Joint_R_Heel_RF_pointConstraint1.ctx" "slug_Joint_R_Heel_RF.tx"
		;
connectAttr "slug_Joint_R_Heel_RF_pointConstraint1.cty" "slug_Joint_R_Heel_RF.ty"
		;
connectAttr "slug_Joint_R_Heel_RF_pointConstraint1.ctz" "slug_Joint_R_Heel_RF.tz"
		;
connectAttr "Joint_R_Heel_RF_rotateX.o" "slug_Joint_R_Heel_RF.rx";
connectAttr "R_IK.di" "slug_Joint_R_Heel_RF.do";
connectAttr "slug_Joint_R_Heel_RF.s" "slug_Joint_R_Toe_RF.is";
connectAttr "Joint_R_Toe_RF_rotateX.o" "slug_Joint_R_Toe_RF.rx";
connectAttr "R_IK.di" "slug_Joint_R_Toe_RF.do";
connectAttr "slug_Joint_R_Toe_RF.s" "slug_Joint_R_Ball_RF.is";
connectAttr "Joint_R_Ball_RF_rotateX.o" "slug_Joint_R_Ball_RF.rx";
connectAttr "R_IK.di" "slug_Joint_R_Ball_RF.do";
connectAttr "slug_Joint_R_Ball_RF.s" "slug_Joint_R_Ankle_RF.is";
connectAttr "R_IK.di" "slug_Joint_R_Ankle_RF.do";
connectAttr "slug_Joint_R_Leg_IK.msg" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK.hsj"
		;
connectAttr "slug_effector3.hp" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK.hee"
		;
connectAttr "ikRPsolver.msg" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK.hsv";
connectAttr "unitConversion4.o" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK.pvx"
		;
connectAttr "unitConversion5.o" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK.pvy"
		;
connectAttr "unitConversion6.o" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK.pvz"
		;
connectAttr "R_IK.di" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK.do";
connectAttr "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK.pim" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Leg_IK.pm" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.ps"
		;
connectAttr "slug_Joint_R_Leg_IK.t" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.crp"
		;
connectAttr "slug_Pole_Joint_R_Ankle_IK.t" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "slug_Pole_Joint_R_Ankle_IK.rp" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "slug_Pole_Joint_R_Ankle_IK.rpt" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "slug_Pole_Joint_R_Ankle_IK.pm" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.w0" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "R_IK.di" "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.do"
		;
connectAttr "slug_Joint_R_Ankle_IK.msg" "slug_Handle_R_Ankle_Toe.hsj";
connectAttr "slug_effector4.hp" "slug_Handle_R_Ankle_Toe.hee";
connectAttr "ikSCsolver.msg" "slug_Handle_R_Ankle_Toe.hsv";
connectAttr "R_IK.di" "slug_Handle_R_Ankle_Toe.do";
connectAttr "slug_Joint_R_Heel_RF.pim" "slug_Joint_R_Heel_RF_pointConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Heel_RF.rp" "slug_Joint_R_Heel_RF_pointConstraint1.crp"
		;
connectAttr "slug_Joint_R_Heel_RF.rpt" "slug_Joint_R_Heel_RF_pointConstraint1.crt"
		;
connectAttr "slug_Const_Joint_R_Ankle_IK.t" "slug_Joint_R_Heel_RF_pointConstraint1.tg[0].tt"
		;
connectAttr "slug_Const_Joint_R_Ankle_IK.rp" "slug_Joint_R_Heel_RF_pointConstraint1.tg[0].trp"
		;
connectAttr "slug_Const_Joint_R_Ankle_IK.rpt" "slug_Joint_R_Heel_RF_pointConstraint1.tg[0].trt"
		;
connectAttr "slug_Const_Joint_R_Ankle_IK.pm" "slug_Joint_R_Heel_RF_pointConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Heel_RF_pointConstraint1.w0" "slug_Joint_R_Heel_RF_pointConstraint1.tg[0].tw"
		;
connectAttr "R_IK.di" "slug_Joint_R_Heel_RF_pointConstraint1.do";
connectAttr "Const_Joint_L_Ankle_IK_IK_Blend.o" "slug_Const_Joint_L_Ankle_IK.IK_Blend"
		;
connectAttr "Const_Joint_L_Ankle_IK_Toe.o" "slug_Const_Joint_L_Ankle_IK.Toe";
connectAttr "Const_Joint_L_Ankle_IK_Roll.o" "slug_Const_Joint_L_Ankle_IK.Roll";
connectAttr "L_IK.di" "slug_Const_Joint_L_Ankle_IK.do";
connectAttr "Const_Joint_L_Ankle_IK_translateX.o" "slug_Const_Joint_L_Ankle_IK.tx"
		;
connectAttr "Const_Joint_L_Ankle_IK_translateY.o" "slug_Const_Joint_L_Ankle_IK.ty"
		;
connectAttr "Const_Joint_L_Ankle_IK_translateZ.o" "slug_Const_Joint_L_Ankle_IK.tz"
		;
connectAttr "Const_Joint_L_Ankle_IK_rotateX.o" "slug_Const_Joint_L_Ankle_IK.rx";
connectAttr "Const_Joint_L_Ankle_IK_rotateY.o" "slug_Const_Joint_L_Ankle_IK.ry";
connectAttr "Const_Joint_L_Ankle_IK_rotateZ.o" "slug_Const_Joint_L_Ankle_IK.rz";
connectAttr "L_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_L_Ankle_IK|curveShape33.do"
		;
connectAttr "L_IK.di" "slug_Pole_Joint_L_Ankle_IK.do";
connectAttr "Pole_Joint_L_Ankle_IK_translateX.o" "slug_Pole_Joint_L_Ankle_IK.tx"
		;
connectAttr "Pole_Joint_L_Ankle_IK_translateY.o" "slug_Pole_Joint_L_Ankle_IK.ty"
		;
connectAttr "Pole_Joint_L_Ankle_IK_translateZ.o" "slug_Pole_Joint_L_Ankle_IK.tz"
		;
connectAttr "L_IK.di" "curveShape35.do";
connectAttr "slug_Joint_L_Heel_RF_pointConstraint1.ctx" "slug_Joint_L_Heel_RF.tx"
		;
connectAttr "slug_Joint_L_Heel_RF_pointConstraint1.cty" "slug_Joint_L_Heel_RF.ty"
		;
connectAttr "slug_Joint_L_Heel_RF_pointConstraint1.ctz" "slug_Joint_L_Heel_RF.tz"
		;
connectAttr "Joint_L_Heel_RF_rotateX.o" "slug_Joint_L_Heel_RF.rx";
connectAttr "L_IK.di" "slug_Joint_L_Heel_RF.do";
connectAttr "slug_Joint_L_Heel_RF.s" "slug_Joint_L_Toe_RF.is";
connectAttr "Joint_L_Toe_RF_rotateX.o" "slug_Joint_L_Toe_RF.rx";
connectAttr "L_IK.di" "slug_Joint_L_Toe_RF.do";
connectAttr "slug_Joint_L_Toe_RF.s" "slug_Joint_L_Ball_RF.is";
connectAttr "Joint_L_Ball_RF_rotateX.o" "slug_Joint_L_Ball_RF.rx";
connectAttr "L_IK.di" "slug_Joint_L_Ball_RF.do";
connectAttr "slug_Joint_L_Ball_RF.s" "slug_Joint_L_Ankle_RF.is";
connectAttr "L_IK.di" "slug_Joint_L_Ankle_RF.do";
connectAttr "slug_Joint_L_Leg_IK.msg" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK.hsj"
		;
connectAttr "slug_effector1.hp" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK.hee"
		;
connectAttr "ikRPsolver.msg" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK.hsv";
connectAttr "unitConversion1.o" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK.pvx"
		;
connectAttr "unitConversion2.o" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK.pvy"
		;
connectAttr "unitConversion3.o" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK.pvz"
		;
connectAttr "L_IK.di" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK.do";
connectAttr "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK.pim" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Leg_IK.pm" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.ps"
		;
connectAttr "slug_Joint_L_Leg_IK.t" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.crp"
		;
connectAttr "slug_Pole_Joint_L_Ankle_IK.t" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.tg[0].tt"
		;
connectAttr "slug_Pole_Joint_L_Ankle_IK.rp" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.tg[0].trp"
		;
connectAttr "slug_Pole_Joint_L_Ankle_IK.rpt" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.tg[0].trt"
		;
connectAttr "slug_Pole_Joint_L_Ankle_IK.pm" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.tg[0].tpm"
		;
connectAttr "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.w0" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.tg[0].tw"
		;
connectAttr "L_IK.di" "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.do"
		;
connectAttr "slug_Joint_L_Ankle_IK.msg" "slug_Handle_L_Ankle_Toe.hsj";
connectAttr "slug_effector2.hp" "slug_Handle_L_Ankle_Toe.hee";
connectAttr "ikSCsolver.msg" "slug_Handle_L_Ankle_Toe.hsv";
connectAttr "L_IK.di" "slug_Handle_L_Ankle_Toe.do";
connectAttr "slug_Joint_L_Heel_RF.pim" "slug_Joint_L_Heel_RF_pointConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Heel_RF.rp" "slug_Joint_L_Heel_RF_pointConstraint1.crp"
		;
connectAttr "slug_Joint_L_Heel_RF.rpt" "slug_Joint_L_Heel_RF_pointConstraint1.crt"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.t" "slug_Joint_L_Heel_RF_pointConstraint1.tg[0].tt"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.rp" "slug_Joint_L_Heel_RF_pointConstraint1.tg[0].trp"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.rpt" "slug_Joint_L_Heel_RF_pointConstraint1.tg[0].trt"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.pm" "slug_Joint_L_Heel_RF_pointConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Heel_RF_pointConstraint1.w0" "slug_Joint_L_Heel_RF_pointConstraint1.tg[0].tw"
		;
connectAttr "L_IK.di" "slug_Joint_L_Heel_RF_pointConstraint1.do";
connectAttr "Tail_IK_CNTRL_rotateX.o" "slug_Tail_IK_CNTRL.rx";
connectAttr "Tail_IK_CNTRL_rotateY.o" "slug_Tail_IK_CNTRL.ry";
connectAttr "Tail_IK_CNTRL_rotateZ.o" "slug_Tail_IK_CNTRL.rz";
connectAttr "M_IK.di" "slug_Tail_IK_CNTRL.do";
connectAttr "Tail_IK_CNTRL_IK_Blend.o" "slug_Tail_IK_CNTRL.IK_Blend";
connectAttr "Tail_IK_CNTRL_translateX.o" "slug_Tail_IK_CNTRL.tx";
connectAttr "Tail_IK_CNTRL_translateY.o" "slug_Tail_IK_CNTRL.ty";
connectAttr "Tail_IK_CNTRL_translateZ.o" "slug_Tail_IK_CNTRL.tz";
connectAttr "M_IK.di" "curveShape68.do";
connectAttr "slug_Joint_Tail1_IK.msg" "slug_Tail_IK_HANDLE.hsj";
connectAttr "slug_effector5.hp" "slug_Tail_IK_HANDLE.hee";
connectAttr "ikRPsolver.msg" "slug_Tail_IK_HANDLE.hsv";
connectAttr "M_IK.di" "slug_Tail_IK_HANDLE.do";
connectAttr "Const_Joint_R_Middle_Ankle_IK_translateX.o" "slug_Const_Joint_R_Middle_Ankle_IK.tx"
		;
connectAttr "Const_Joint_R_Middle_Ankle_IK_translateY.o" "slug_Const_Joint_R_Middle_Ankle_IK.ty"
		;
connectAttr "Const_Joint_R_Middle_Ankle_IK_translateZ.o" "slug_Const_Joint_R_Middle_Ankle_IK.tz"
		;
connectAttr "R_IK.di" "slug_Const_Joint_R_Middle_Ankle_IK.do";
connectAttr "Const_Joint_R_Middle_Ankle_IK_rotateX.o" "slug_Const_Joint_R_Middle_Ankle_IK.rx"
		;
connectAttr "Const_Joint_R_Middle_Ankle_IK_rotateY.o" "slug_Const_Joint_R_Middle_Ankle_IK.ry"
		;
connectAttr "Const_Joint_R_Middle_Ankle_IK_rotateZ.o" "slug_Const_Joint_R_Middle_Ankle_IK.rz"
		;
connectAttr "R_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_R_Middle_Ankle_IK|curveShape34.do"
		;
connectAttr "Const_Joint_L_Middle_Ankle_IK_translateX.o" "slug_Const_Joint_L_Middle_Ankle_IK.tx"
		;
connectAttr "Const_Joint_L_Middle_Ankle_IK_translateY.o" "slug_Const_Joint_L_Middle_Ankle_IK.ty"
		;
connectAttr "Const_Joint_L_Middle_Ankle_IK_translateZ.o" "slug_Const_Joint_L_Middle_Ankle_IK.tz"
		;
connectAttr "L_IK.di" "slug_Const_Joint_L_Middle_Ankle_IK.do";
connectAttr "Const_Joint_L_Middle_Ankle_IK_rotateX.o" "slug_Const_Joint_L_Middle_Ankle_IK.rx"
		;
connectAttr "Const_Joint_L_Middle_Ankle_IK_rotateY.o" "slug_Const_Joint_L_Middle_Ankle_IK.ry"
		;
connectAttr "Const_Joint_L_Middle_Ankle_IK_rotateZ.o" "slug_Const_Joint_L_Middle_Ankle_IK.rz"
		;
connectAttr "L_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_L_Middle_Ankle_IK|curveShape33.do"
		;
connectAttr "Const_Joint_L_Front_Ankle_IK_translateX.o" "slug_Const_Joint_L_Front_Ankle_IK.tx"
		;
connectAttr "Const_Joint_L_Front_Ankle_IK_translateY.o" "slug_Const_Joint_L_Front_Ankle_IK.ty"
		;
connectAttr "Const_Joint_L_Front_Ankle_IK_translateZ.o" "slug_Const_Joint_L_Front_Ankle_IK.tz"
		;
connectAttr "L_IK.di" "slug_Const_Joint_L_Front_Ankle_IK.do";
connectAttr "Const_Joint_L_Front_Ankle_IK_rotateX.o" "slug_Const_Joint_L_Front_Ankle_IK.rx"
		;
connectAttr "Const_Joint_L_Front_Ankle_IK_rotateY.o" "slug_Const_Joint_L_Front_Ankle_IK.ry"
		;
connectAttr "Const_Joint_L_Front_Ankle_IK_rotateZ.o" "slug_Const_Joint_L_Front_Ankle_IK.rz"
		;
connectAttr "L_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_L_Front_Ankle_IK|curveShape33.do"
		;
connectAttr "Const_Joint_R_Front_Ankle_IK_translateX.o" "slug_Const_Joint_R_Front_Ankle_IK.tx"
		;
connectAttr "Const_Joint_R_Front_Ankle_IK_translateY.o" "slug_Const_Joint_R_Front_Ankle_IK.ty"
		;
connectAttr "Const_Joint_R_Front_Ankle_IK_translateZ.o" "slug_Const_Joint_R_Front_Ankle_IK.tz"
		;
connectAttr "R_IK.di" "slug_Const_Joint_R_Front_Ankle_IK.do";
connectAttr "Const_Joint_R_Front_Ankle_IK_rotateX.o" "slug_Const_Joint_R_Front_Ankle_IK.rx"
		;
connectAttr "Const_Joint_R_Front_Ankle_IK_rotateY.o" "slug_Const_Joint_R_Front_Ankle_IK.ry"
		;
connectAttr "Const_Joint_R_Front_Ankle_IK_rotateZ.o" "slug_Const_Joint_R_Front_Ankle_IK.rz"
		;
connectAttr "R_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_R_Front_Ankle_IK|curveShape34.do"
		;
connectAttr "GEO.di" "slug_mesh.do";
connectAttr "skinCluster2GroupId.id" "slug_meshShape.iog.og[9].gid";
connectAttr "skinCluster2Set.mwc" "slug_meshShape.iog.og[9].gco";
connectAttr "groupId2.id" "slug_meshShape.iog.og[10].gid";
connectAttr "tweakSet1.mwc" "slug_meshShape.iog.og[10].gco";
connectAttr "skinCluster2.og[0]" "slug_meshShape.i";
connectAttr "tweak1.vl[0].vt[0]" "slug_meshShape.twl";
connectAttr "slug_Joint_Root_pointConstraint1.ctx" "slug_Joint_Root.tx";
connectAttr "slug_Joint_Root_pointConstraint1.cty" "slug_Joint_Root.ty";
connectAttr "slug_Joint_Root_pointConstraint1.ctz" "slug_Joint_Root.tz";
connectAttr "slug_Joint_Root_orientConstraint1.crx" "slug_Joint_Root.rx";
connectAttr "slug_Joint_Root_orientConstraint1.cry" "slug_Joint_Root.ry";
connectAttr "slug_Joint_Root_orientConstraint1.crz" "slug_Joint_Root.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Root.do";
connectAttr "slug_skeleton.s" "slug_Joint_Root.is";
connectAttr "slug_Joint_Root.s" "slug_Joint_Waist.is";
connectAttr "slug_Joint_Waist_orientConstraint1.crx" "slug_Joint_Waist.rx";
connectAttr "slug_Joint_Waist_orientConstraint1.cry" "slug_Joint_Waist.ry";
connectAttr "slug_Joint_Waist_orientConstraint1.crz" "slug_Joint_Waist.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Waist.do";
connectAttr "slug_Joint_Waist.s" "slug_Joint_Chest.is";
connectAttr "slug_Joint_Chest_orientConstraint1.crx" "slug_Joint_Chest.rx";
connectAttr "slug_Joint_Chest_orientConstraint1.cry" "slug_Joint_Chest.ry";
connectAttr "slug_Joint_Chest_orientConstraint1.crz" "slug_Joint_Chest.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Chest.do";
connectAttr "slug_Joint_Chest.s" "slug_Joint_Chest2.is";
connectAttr "slug_Joint_Chest2_orientConstraint1.crx" "slug_Joint_Chest2.rx";
connectAttr "slug_Joint_Chest2_orientConstraint1.cry" "slug_Joint_Chest2.ry";
connectAttr "slug_Joint_Chest2_orientConstraint1.crz" "slug_Joint_Chest2.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Chest2.do";
connectAttr "slug_Joint_Chest2.s" "slug_Joint_Chest3.is";
connectAttr "slug_Joint_Chest3_orientConstraint1.crx" "slug_Joint_Chest3.rx";
connectAttr "slug_Joint_Chest3_orientConstraint1.cry" "slug_Joint_Chest3.ry";
connectAttr "slug_Joint_Chest3_orientConstraint1.crz" "slug_Joint_Chest3.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Chest3.do";
connectAttr "slug_Joint_Chest3.s" "slug_Joint_Mid_Chest.is";
connectAttr "slug_Joint_Mid_Chest_orientConstraint1.crx" "slug_Joint_Mid_Chest.rx"
		;
connectAttr "slug_Joint_Mid_Chest_orientConstraint1.cry" "slug_Joint_Mid_Chest.ry"
		;
connectAttr "slug_Joint_Mid_Chest_orientConstraint1.crz" "slug_Joint_Mid_Chest.rz"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Mid_Chest.do";
connectAttr "slug_Joint_Mid_Chest.s" "slug_Joint_Neck1.is";
connectAttr "slug_Joint_Neck1_orientConstraint1.crx" "slug_Joint_Neck1.rx";
connectAttr "slug_Joint_Neck1_orientConstraint1.cry" "slug_Joint_Neck1.ry";
connectAttr "slug_Joint_Neck1_orientConstraint1.crz" "slug_Joint_Neck1.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Neck1.do";
connectAttr "slug_Joint_Neck1.s" "slug_Joint_Head.is";
connectAttr "slug_Joint_Head_orientConstraint1.crx" "slug_Joint_Head.rx";
connectAttr "slug_Joint_Head_orientConstraint1.cry" "slug_Joint_Head.ry";
connectAttr "slug_Joint_Head_orientConstraint1.crz" "slug_Joint_Head.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Head.do";
connectAttr "slug_Joint_Head.s" "slug_Joint_Head_End.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_Head_End.do";
connectAttr "slug_Joint_Head.ro" "slug_Joint_Head_orientConstraint1.cro";
connectAttr "slug_Joint_Head.pim" "slug_Joint_Head_orientConstraint1.cpim";
connectAttr "slug_Joint_Head.jo" "slug_Joint_Head_orientConstraint1.cjo";
connectAttr "slug_Joint_Head_FK.r" "slug_Joint_Head_orientConstraint1.tg[0].tr";
connectAttr "slug_Joint_Head_FK.ro" "slug_Joint_Head_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Head_FK.pm" "slug_Joint_Head_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Head_FK.jo" "slug_Joint_Head_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Head_orientConstraint1.w0" "slug_Joint_Head_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Head_orientConstraint1.do";
connectAttr "slug_Joint_Neck1.ro" "slug_Joint_Neck1_orientConstraint1.cro";
connectAttr "slug_Joint_Neck1.pim" "slug_Joint_Neck1_orientConstraint1.cpim";
connectAttr "slug_Joint_Neck1.jo" "slug_Joint_Neck1_orientConstraint1.cjo";
connectAttr "slug_Joint_Neck1_FK.r" "slug_Joint_Neck1_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Neck1_FK.ro" "slug_Joint_Neck1_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Neck1_FK.pm" "slug_Joint_Neck1_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Neck1_FK.jo" "slug_Joint_Neck1_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Neck1_orientConstraint1.w0" "slug_Joint_Neck1_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Neck1_orientConstraint1.do";
connectAttr "slug_Joint_L_Shoulder_orientConstraint1.crx" "slug_Joint_L_Shoulder.rx"
		;
connectAttr "slug_Joint_L_Shoulder_orientConstraint1.cry" "slug_Joint_L_Shoulder.ry"
		;
connectAttr "slug_Joint_L_Shoulder_orientConstraint1.crz" "slug_Joint_L_Shoulder.rz"
		;
connectAttr "slug_Joint_Mid_Chest.s" "slug_Joint_L_Shoulder.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Shoulder.do";
connectAttr "slug_Joint_L_Shoulder.s" "slug_Joint_L_Arm.is";
connectAttr "slug_Joint_L_Arm_orientConstraint1.crx" "slug_Joint_L_Arm.rx";
connectAttr "slug_Joint_L_Arm_orientConstraint1.cry" "slug_Joint_L_Arm.ry";
connectAttr "slug_Joint_L_Arm_orientConstraint1.crz" "slug_Joint_L_Arm.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Arm.do";
connectAttr "slug_Joint_L_Arm.ro" "slug_Joint_L_Arm_orientConstraint1.cro";
connectAttr "slug_Joint_L_Arm.pim" "slug_Joint_L_Arm_orientConstraint1.cpim";
connectAttr "slug_Joint_L_Arm.jo" "slug_Joint_L_Arm_orientConstraint1.cjo";
connectAttr "slug_Joint_L_Arm_FK.r" "slug_Joint_L_Arm_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Arm_FK.ro" "slug_Joint_L_Arm_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Arm_FK.pm" "slug_Joint_L_Arm_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Arm_FK.jo" "slug_Joint_L_Arm_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Arm_orientConstraint1.w0" "slug_Joint_L_Arm_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_L_Arm_IK.r" "slug_Joint_L_Arm_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_L_Arm_IK.ro" "slug_Joint_L_Arm_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_L_Arm_IK.pm" "slug_Joint_L_Arm_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_L_Arm_IK.jo" "slug_Joint_L_Arm_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_L_Arm_orientConstraint1.w1" "slug_Joint_L_Arm_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Const_Joint_L_Wrist_IK.IK_Blend" "slug_Joint_L_Arm_orientConstraint1.w0"
		;
connectAttr "L_reverse_UTL.ox" "slug_Joint_L_Arm_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Arm_orientConstraint1.do";
connectAttr "slug_Joint_L_Elbow_orientConstraint1.crx" "slug_Joint_L_Elbow.rx";
connectAttr "slug_Joint_L_Elbow_orientConstraint1.cry" "slug_Joint_L_Elbow.ry";
connectAttr "slug_Joint_L_Elbow_orientConstraint1.crz" "slug_Joint_L_Elbow.rz";
connectAttr "slug_Joint_L_Arm.s" "slug_Joint_L_Elbow.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Elbow.do";
connectAttr "slug_Joint_L_Elbow.ro" "slug_Joint_L_Elbow_orientConstraint1.cro";
connectAttr "slug_Joint_L_Elbow.pim" "slug_Joint_L_Elbow_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Elbow.jo" "slug_Joint_L_Elbow_orientConstraint1.cjo";
connectAttr "slug_Joint_L_Elbow_FK.r" "slug_Joint_L_Elbow_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Elbow_FK.ro" "slug_Joint_L_Elbow_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Elbow_FK.pm" "slug_Joint_L_Elbow_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Elbow_FK.jo" "slug_Joint_L_Elbow_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Elbow_orientConstraint1.w0" "slug_Joint_L_Elbow_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_L_Elbow_IK.r" "slug_Joint_L_Elbow_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_L_Elbow_IK.ro" "slug_Joint_L_Elbow_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_L_Elbow_IK.pm" "slug_Joint_L_Elbow_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_L_Elbow_IK.jo" "slug_Joint_L_Elbow_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_L_Elbow_orientConstraint1.w1" "slug_Joint_L_Elbow_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Const_Joint_L_Wrist_IK.IK_Blend" "slug_Joint_L_Elbow_orientConstraint1.w0"
		;
connectAttr "L_reverse_UTL.ox" "slug_Joint_L_Elbow_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Elbow_orientConstraint1.do";
connectAttr "slug_Joint_L_Forearm_orientConstraint1.crx" "slug_Joint_L_Forearm.rx"
		;
connectAttr "slug_Joint_L_Elbow.s" "slug_Joint_L_Forearm.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Forearm.do";
connectAttr "slug_Joint_L_Forearm.s" "slug_Joint_L_Wrist.is";
connectAttr "slug_Joint_L_Wrist_orientConstraint1.crx" "slug_Joint_L_Wrist.rx";
connectAttr "slug_Joint_L_Wrist_orientConstraint1.cry" "slug_Joint_L_Wrist.ry";
connectAttr "slug_Joint_L_Wrist_orientConstraint1.crz" "slug_Joint_L_Wrist.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Wrist.do";
connectAttr "slug_Joint_L_Wrist.s" "slug_Joint_L_Index1.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Index1.do";
connectAttr "slug_Joint_L_Wrist.ro" "slug_Joint_L_Wrist_orientConstraint1.cro";
connectAttr "slug_Joint_L_Wrist.pim" "slug_Joint_L_Wrist_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Wrist.jo" "slug_Joint_L_Wrist_orientConstraint1.cjo";
connectAttr "slug_Joint_L_Wrist_FK.r" "slug_Joint_L_Wrist_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Wrist_FK.ro" "slug_Joint_L_Wrist_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Wrist_FK.pm" "slug_Joint_L_Wrist_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Wrist_FK.jo" "slug_Joint_L_Wrist_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Wrist_orientConstraint1.w0" "slug_Joint_L_Wrist_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_L_Wrist_IK.r" "slug_Joint_L_Wrist_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_L_Wrist_IK.ro" "slug_Joint_L_Wrist_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_L_Wrist_IK.pm" "slug_Joint_L_Wrist_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_L_Wrist_IK.jo" "slug_Joint_L_Wrist_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_L_Wrist_orientConstraint1.w1" "slug_Joint_L_Wrist_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Const_Joint_L_Wrist_IK.IK_Blend" "slug_Joint_L_Wrist_orientConstraint1.w0"
		;
connectAttr "L_reverse_UTL.ox" "slug_Joint_L_Wrist_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Wrist_orientConstraint1.do";
connectAttr "slug_Joint_L_Forearm.ro" "slug_Joint_L_Forearm_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Forearm.pim" "slug_Joint_L_Forearm_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Forearm.jo" "slug_Joint_L_Forearm_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_L_Forearm_FK.r" "slug_Joint_L_Forearm_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Forearm_FK.ro" "slug_Joint_L_Forearm_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Forearm_FK.pm" "slug_Joint_L_Forearm_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Forearm_FK.jo" "slug_Joint_L_Forearm_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Forearm_orientConstraint1.w0" "slug_Joint_L_Forearm_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_L_Forearm_IK.r" "slug_Joint_L_Forearm_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_L_Forearm_IK.ro" "slug_Joint_L_Forearm_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_L_Forearm_IK.pm" "slug_Joint_L_Forearm_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_L_Forearm_IK.jo" "slug_Joint_L_Forearm_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_L_Forearm_orientConstraint1.w1" "slug_Joint_L_Forearm_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Const_Joint_L_Wrist_IK.IK_Blend" "slug_Joint_L_Forearm_orientConstraint1.w0"
		;
connectAttr "L_reverse_UTL.ox" "slug_Joint_L_Forearm_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Forearm_orientConstraint1.do";
connectAttr "slug_Joint_L_Shoulder.ro" "slug_Joint_L_Shoulder_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Shoulder.pim" "slug_Joint_L_Shoulder_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Shoulder.jo" "slug_Joint_L_Shoulder_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_L_Shoulder_FK.r" "slug_Joint_L_Shoulder_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Shoulder_FK.ro" "slug_Joint_L_Shoulder_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Shoulder_FK.pm" "slug_Joint_L_Shoulder_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Shoulder_FK.jo" "slug_Joint_L_Shoulder_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Shoulder_orientConstraint1.w0" "slug_Joint_L_Shoulder_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Shoulder_orientConstraint1.do";
connectAttr "slug_Joint_Mid_Chest.s" "slug_Joint_R_Shoulder.is";
connectAttr "slug_Joint_R_Shoulder_orientConstraint1.crx" "slug_Joint_R_Shoulder.rx"
		;
connectAttr "slug_Joint_R_Shoulder_orientConstraint1.cry" "slug_Joint_R_Shoulder.ry"
		;
connectAttr "slug_Joint_R_Shoulder_orientConstraint1.crz" "slug_Joint_R_Shoulder.rz"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Shoulder.do";
connectAttr "slug_Joint_R_Shoulder.s" "slug_Joint_R_Arm.is";
connectAttr "slug_Joint_R_Arm_orientConstraint1.crx" "slug_Joint_R_Arm.rx";
connectAttr "slug_Joint_R_Arm_orientConstraint1.cry" "slug_Joint_R_Arm.ry";
connectAttr "slug_Joint_R_Arm_orientConstraint1.crz" "slug_Joint_R_Arm.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Arm.do";
connectAttr "slug_Joint_R_Arm.ro" "slug_Joint_R_Arm_orientConstraint1.cro";
connectAttr "slug_Joint_R_Arm.pim" "slug_Joint_R_Arm_orientConstraint1.cpim";
connectAttr "slug_Joint_R_Arm.jo" "slug_Joint_R_Arm_orientConstraint1.cjo";
connectAttr "slug_Joint_R_Arm_FK.r" "slug_Joint_R_Arm_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Arm_FK.ro" "slug_Joint_R_Arm_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Arm_FK.pm" "slug_Joint_R_Arm_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Arm_FK.jo" "slug_Joint_R_Arm_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Arm_orientConstraint1.w0" "slug_Joint_R_Arm_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Arm_IK.r" "slug_Joint_R_Arm_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_R_Arm_IK.ro" "slug_Joint_R_Arm_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_R_Arm_IK.pm" "slug_Joint_R_Arm_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_R_Arm_IK.jo" "slug_Joint_R_Arm_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_R_Arm_orientConstraint1.w1" "slug_Joint_R_Arm_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Const_Joint_R_Wrist_IK.IK_Blend" "slug_Joint_R_Arm_orientConstraint1.w0"
		;
connectAttr "R_reverse_UTL.ox" "slug_Joint_R_Arm_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Arm_orientConstraint1.do";
connectAttr "slug_Joint_R_Elbow_orientConstraint1.crx" "slug_Joint_R_Elbow.rx";
connectAttr "slug_Joint_R_Elbow_orientConstraint1.cry" "slug_Joint_R_Elbow.ry";
connectAttr "slug_Joint_R_Elbow_orientConstraint1.crz" "slug_Joint_R_Elbow.rz";
connectAttr "slug_Joint_R_Arm.s" "slug_Joint_R_Elbow.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Elbow.do";
connectAttr "slug_Joint_R_Elbow.ro" "slug_Joint_R_Elbow_orientConstraint1.cro";
connectAttr "slug_Joint_R_Elbow.pim" "slug_Joint_R_Elbow_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Elbow.jo" "slug_Joint_R_Elbow_orientConstraint1.cjo";
connectAttr "slug_Joint_R_Elbow_FK.r" "slug_Joint_R_Elbow_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Elbow_FK.ro" "slug_Joint_R_Elbow_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Elbow_FK.pm" "slug_Joint_R_Elbow_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Elbow_FK.jo" "slug_Joint_R_Elbow_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Elbow_orientConstraint1.w0" "slug_Joint_R_Elbow_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Elbow_IK.r" "slug_Joint_R_Elbow_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_R_Elbow_IK.ro" "slug_Joint_R_Elbow_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_R_Elbow_IK.pm" "slug_Joint_R_Elbow_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_R_Elbow_IK.jo" "slug_Joint_R_Elbow_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_R_Elbow_orientConstraint1.w1" "slug_Joint_R_Elbow_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Const_Joint_R_Wrist_IK.IK_Blend" "slug_Joint_R_Elbow_orientConstraint1.w0"
		;
connectAttr "R_reverse_UTL.ox" "slug_Joint_R_Elbow_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Elbow_orientConstraint1.do";
connectAttr "slug_Joint_R_Forearm_orientConstraint1.crx" "slug_Joint_R_Forearm.rx"
		;
connectAttr "slug_Joint_R_Elbow.s" "slug_Joint_R_Forearm.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Forearm.do";
connectAttr "slug_Joint_R_Forearm.s" "slug_Joint_R_Wrist.is";
connectAttr "slug_Joint_R_Wrist_orientConstraint1.crx" "slug_Joint_R_Wrist.rx";
connectAttr "slug_Joint_R_Wrist_orientConstraint1.cry" "slug_Joint_R_Wrist.ry";
connectAttr "slug_Joint_R_Wrist_orientConstraint1.crz" "slug_Joint_R_Wrist.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Wrist.do";
connectAttr "slug_Joint_R_Wrist.s" "slug_Joint_R_Index1.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Index1.do";
connectAttr "slug_Joint_R_Wrist.ro" "slug_Joint_R_Wrist_orientConstraint1.cro";
connectAttr "slug_Joint_R_Wrist.pim" "slug_Joint_R_Wrist_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Wrist.jo" "slug_Joint_R_Wrist_orientConstraint1.cjo";
connectAttr "slug_Joint_R_Wrist_FK.r" "slug_Joint_R_Wrist_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Wrist_FK.ro" "slug_Joint_R_Wrist_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Wrist_FK.pm" "slug_Joint_R_Wrist_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Wrist_FK.jo" "slug_Joint_R_Wrist_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Wrist_orientConstraint1.w0" "slug_Joint_R_Wrist_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Wrist_IK.r" "slug_Joint_R_Wrist_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_R_Wrist_IK.ro" "slug_Joint_R_Wrist_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_R_Wrist_IK.pm" "slug_Joint_R_Wrist_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_R_Wrist_IK.jo" "slug_Joint_R_Wrist_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_R_Wrist_orientConstraint1.w1" "slug_Joint_R_Wrist_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Const_Joint_R_Wrist_IK.IK_Blend" "slug_Joint_R_Wrist_orientConstraint1.w0"
		;
connectAttr "R_reverse_UTL.ox" "slug_Joint_R_Wrist_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Wrist_orientConstraint1.do";
connectAttr "slug_Joint_R_Forearm.ro" "slug_Joint_R_Forearm_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Forearm.pim" "slug_Joint_R_Forearm_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Forearm.jo" "slug_Joint_R_Forearm_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_R_Forearm_FK.r" "slug_Joint_R_Forearm_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Forearm_FK.ro" "slug_Joint_R_Forearm_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Forearm_FK.pm" "slug_Joint_R_Forearm_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Forearm_FK.jo" "slug_Joint_R_Forearm_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Forearm_orientConstraint1.w0" "slug_Joint_R_Forearm_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Forearm_IK.r" "slug_Joint_R_Forearm_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_R_Forearm_IK.ro" "slug_Joint_R_Forearm_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_R_Forearm_IK.pm" "slug_Joint_R_Forearm_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_R_Forearm_IK.jo" "slug_Joint_R_Forearm_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_R_Forearm_orientConstraint1.w1" "slug_Joint_R_Forearm_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Const_Joint_R_Wrist_IK.IK_Blend" "slug_Joint_R_Forearm_orientConstraint1.w0"
		;
connectAttr "R_reverse_UTL.ox" "slug_Joint_R_Forearm_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Forearm_orientConstraint1.do";
connectAttr "slug_Joint_R_Shoulder.ro" "slug_Joint_R_Shoulder_orientConstraint1.cro"
		;
connectAttr "slug_Joint_R_Shoulder.pim" "slug_Joint_R_Shoulder_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Shoulder.jo" "slug_Joint_R_Shoulder_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_R_Shoulder_FK.r" "slug_Joint_R_Shoulder_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Shoulder_FK.ro" "slug_Joint_R_Shoulder_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Shoulder_FK.pm" "slug_Joint_R_Shoulder_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Shoulder_FK.jo" "slug_Joint_R_Shoulder_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Shoulder_orientConstraint1.w0" "slug_Joint_R_Shoulder_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Shoulder_orientConstraint1.do";
connectAttr "slug_Joint_Mid_Chest.ro" "slug_Joint_Mid_Chest_orientConstraint1.cro"
		;
connectAttr "slug_Joint_Mid_Chest.pim" "slug_Joint_Mid_Chest_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_Mid_Chest.jo" "slug_Joint_Mid_Chest_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_Mid_Chest_FK.r" "slug_Joint_Mid_Chest_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Mid_Chest_FK.ro" "slug_Joint_Mid_Chest_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Mid_Chest_FK.pm" "slug_Joint_Mid_Chest_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Mid_Chest_FK.jo" "slug_Joint_Mid_Chest_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Mid_Chest_orientConstraint1.w0" "slug_Joint_Mid_Chest_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Mid_Chest_orientConstraint1.do";
connectAttr "slug_Joint_Chest3.ro" "slug_Joint_Chest3_orientConstraint1.cro";
connectAttr "slug_Joint_Chest3.pim" "slug_Joint_Chest3_orientConstraint1.cpim";
connectAttr "slug_Joint_Chest3.jo" "slug_Joint_Chest3_orientConstraint1.cjo";
connectAttr "slug_Joint_Chest3_FK.r" "slug_Joint_Chest3_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Chest3_FK.ro" "slug_Joint_Chest3_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Chest3_FK.pm" "slug_Joint_Chest3_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest3_FK.jo" "slug_Joint_Chest3_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Chest3_orientConstraint1.w0" "slug_Joint_Chest3_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Chest3_orientConstraint1.do";
connectAttr "slug_Joint_Chest2.ro" "slug_Joint_Chest2_orientConstraint1.cro";
connectAttr "slug_Joint_Chest2.pim" "slug_Joint_Chest2_orientConstraint1.cpim";
connectAttr "slug_Joint_Chest2.jo" "slug_Joint_Chest2_orientConstraint1.cjo";
connectAttr "slug_Joint_Chest2_FK.r" "slug_Joint_Chest2_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Chest2_FK.ro" "slug_Joint_Chest2_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Chest2_FK.pm" "slug_Joint_Chest2_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest2_FK.jo" "slug_Joint_Chest2_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Chest2_orientConstraint1.w0" "slug_Joint_Chest2_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Chest2_orientConstraint1.do";
connectAttr "slug_Joint_Chest.ro" "slug_Joint_Chest_orientConstraint1.cro";
connectAttr "slug_Joint_Chest.pim" "slug_Joint_Chest_orientConstraint1.cpim";
connectAttr "slug_Joint_Chest.jo" "slug_Joint_Chest_orientConstraint1.cjo";
connectAttr "slug_Joint_Chest_FK.r" "slug_Joint_Chest_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Chest_FK.ro" "slug_Joint_Chest_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Chest_FK.pm" "slug_Joint_Chest_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Chest_FK.jo" "slug_Joint_Chest_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Chest_orientConstraint1.w0" "slug_Joint_Chest_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Chest_orientConstraint1.do";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Leg_Front.do";
connectAttr "slug_Joint_R_Leg_Front.s" "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back.is"
		;
connectAttr "Layer_Skeleton.di" "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back.do"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back.s" "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.is"
		;
connectAttr "Layer_Skeleton.di" "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.do"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.s" "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.is"
		;
connectAttr "Layer_Skeleton.di" "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.do"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.tx" "slug_effector10.tx"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.ty" "slug_effector10.ty"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.tz" "slug_effector10.tz"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Leg_Front.do";
connectAttr "slug_Joint_L_Leg_Front.s" "slug_Joint_L_Knee_Front.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Knee_Front.do";
connectAttr "slug_Joint_L_Knee_Front.s" "slug_Joint_L_Ankle_Front.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Ankle_Front.do";
connectAttr "slug_Joint_L_Ankle_Front.s" "slug_Joint_L_Toe_Front.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Toe_Front.do";
connectAttr "slug_Joint_L_Toe_Front.tx" "slug_effector9.tx";
connectAttr "slug_Joint_L_Toe_Front.ty" "slug_effector9.ty";
connectAttr "slug_Joint_L_Toe_Front.tz" "slug_effector9.tz";
connectAttr "slug_Joint_Waist.ro" "slug_Joint_Waist_orientConstraint1.cro";
connectAttr "slug_Joint_Waist.pim" "slug_Joint_Waist_orientConstraint1.cpim";
connectAttr "slug_Joint_Waist.jo" "slug_Joint_Waist_orientConstraint1.cjo";
connectAttr "slug_Joint_Waist_FK.r" "slug_Joint_Waist_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Waist_FK.ro" "slug_Joint_Waist_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Waist_FK.pm" "slug_Joint_Waist_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Waist_FK.jo" "slug_Joint_Waist_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Waist_orientConstraint1.w0" "slug_Joint_Waist_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Waist_orientConstraint1.do";
connectAttr "slug_Joint_Waist.s" "slug_Joint_L_Leg_Mid.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Leg_Mid.do";
connectAttr "slug_Joint_L_Leg_Mid.s" "slug_Joint_L_Knee_Mid.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Knee_Mid.do";
connectAttr "slug_Joint_L_Knee_Mid.s" "slug_Joint_L_Ankle_Mid.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Ankle_Mid.do";
connectAttr "slug_Joint_L_Ankle_Mid.s" "slug_Joint_L_Toe_Mid.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Toe_Mid.do";
connectAttr "slug_Joint_L_Toe_Mid.tx" "slug_effector8.tx";
connectAttr "slug_Joint_L_Toe_Mid.ty" "slug_effector8.ty";
connectAttr "slug_Joint_L_Toe_Mid.tz" "slug_effector8.tz";
connectAttr "slug_Joint_Waist.s" "slug_Joint_R_Leg_Mid.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Leg_Mid.do";
connectAttr "slug_Joint_R_Leg_Mid.s" "slug_Joint_R_Knee_Mid.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Knee_Mid.do";
connectAttr "slug_Joint_R_Knee_Mid.s" "slug_Joint_R_Ankle_Mid.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Ankle_Mid.do";
connectAttr "slug_Joint_R_Ankle_Mid.s" "slug_Joint_R_Toe__Mid.is";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Toe__Mid.do";
connectAttr "slug_Joint_R_Toe__Mid.tx" "slug_effector11.tx";
connectAttr "slug_Joint_R_Toe__Mid.ty" "slug_effector11.ty";
connectAttr "slug_Joint_R_Toe__Mid.tz" "slug_effector11.tz";
connectAttr "slug_Joint_Root.s" "slug_Joint_Hip.is";
connectAttr "slug_Joint_Hip_orientConstraint1.crx" "slug_Joint_Hip.rx";
connectAttr "slug_Joint_Hip_orientConstraint1.cry" "slug_Joint_Hip.ry";
connectAttr "slug_Joint_Hip_orientConstraint1.crz" "slug_Joint_Hip.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Hip.do";
connectAttr "slug_Joint_Hip.s" "slug_Joint_Tail1.is";
connectAttr "slug_Joint_Tail1_orientConstraint1.crx" "slug_Joint_Tail1.rx";
connectAttr "slug_Joint_Tail1_orientConstraint1.cry" "slug_Joint_Tail1.ry";
connectAttr "slug_Joint_Tail1_orientConstraint1.crz" "slug_Joint_Tail1.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Tail1.do";
connectAttr "slug_Joint_Tail1.s" "slug_Joint_Tail2.is";
connectAttr "slug_Joint_Tail2_orientConstraint1.crx" "slug_Joint_Tail2.rx";
connectAttr "slug_Joint_Tail2_orientConstraint1.cry" "slug_Joint_Tail2.ry";
connectAttr "slug_Joint_Tail2_orientConstraint1.crz" "slug_Joint_Tail2.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Tail2.do";
connectAttr "slug_Joint_Tail2.s" "slug_Joint_Tail3.is";
connectAttr "slug_Joint_Tail3_orientConstraint1.crx" "slug_Joint_Tail3.rx";
connectAttr "slug_Joint_Tail3_orientConstraint1.cry" "slug_Joint_Tail3.ry";
connectAttr "slug_Joint_Tail3_orientConstraint1.crz" "slug_Joint_Tail3.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_Tail3.do";
connectAttr "slug_Joint_Tail3.ro" "slug_Joint_Tail3_orientConstraint1.cro";
connectAttr "slug_Joint_Tail3.pim" "slug_Joint_Tail3_orientConstraint1.cpim";
connectAttr "slug_Joint_Tail3.jo" "slug_Joint_Tail3_orientConstraint1.cjo";
connectAttr "slug_Joint_Tail3_FK.r" "slug_Joint_Tail3_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Tail3_FK.ro" "slug_Joint_Tail3_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Tail3_FK.pm" "slug_Joint_Tail3_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail3_FK.jo" "slug_Joint_Tail3_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Tail3_orientConstraint1.w0" "slug_Joint_Tail3_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_Tail3_IK.r" "slug_Joint_Tail3_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_Tail3_IK.ro" "slug_Joint_Tail3_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_Tail3_IK.pm" "slug_Joint_Tail3_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_Tail3_IK.jo" "slug_Joint_Tail3_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_Tail3_orientConstraint1.w1" "slug_Joint_Tail3_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Tail_IK_CNTRL.IK_Blend" "slug_Joint_Tail3_orientConstraint1.w0"
		;
connectAttr "Tail_Reverse_Node.ox" "slug_Joint_Tail3_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_Tail3_orientConstraint1.do";
connectAttr "slug_Joint_Tail2.ro" "slug_Joint_Tail2_orientConstraint1.cro";
connectAttr "slug_Joint_Tail2.pim" "slug_Joint_Tail2_orientConstraint1.cpim";
connectAttr "slug_Joint_Tail2.jo" "slug_Joint_Tail2_orientConstraint1.cjo";
connectAttr "slug_Joint_Tail2_FK.r" "slug_Joint_Tail2_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Tail2_FK.ro" "slug_Joint_Tail2_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Tail2_FK.pm" "slug_Joint_Tail2_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail2_FK.jo" "slug_Joint_Tail2_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Tail2_orientConstraint1.w0" "slug_Joint_Tail2_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_Tail2_IK.r" "slug_Joint_Tail2_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_Tail2_IK.ro" "slug_Joint_Tail2_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_Tail2_IK.pm" "slug_Joint_Tail2_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_Tail2_IK.jo" "slug_Joint_Tail2_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_Tail2_orientConstraint1.w1" "slug_Joint_Tail2_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Tail_IK_CNTRL.IK_Blend" "slug_Joint_Tail2_orientConstraint1.w0"
		;
connectAttr "Tail_Reverse_Node.ox" "slug_Joint_Tail2_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_Tail2_orientConstraint1.do";
connectAttr "slug_Joint_Tail1.ro" "slug_Joint_Tail1_orientConstraint1.cro";
connectAttr "slug_Joint_Tail1.pim" "slug_Joint_Tail1_orientConstraint1.cpim";
connectAttr "slug_Joint_Tail1.jo" "slug_Joint_Tail1_orientConstraint1.cjo";
connectAttr "slug_Joint_Tail1_FK.r" "slug_Joint_Tail1_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_Tail1_FK.ro" "slug_Joint_Tail1_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Tail1_FK.pm" "slug_Joint_Tail1_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Tail1_FK.jo" "slug_Joint_Tail1_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Tail1_orientConstraint1.w0" "slug_Joint_Tail1_orientConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_Tail1_IK.r" "slug_Joint_Tail1_orientConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_Tail1_IK.ro" "slug_Joint_Tail1_orientConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_Tail1_IK.pm" "slug_Joint_Tail1_orientConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_Tail1_IK.jo" "slug_Joint_Tail1_orientConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_Tail1_orientConstraint1.w1" "slug_Joint_Tail1_orientConstraint1.tg[1].tw"
		;
connectAttr "slug_Tail_IK_CNTRL.IK_Blend" "slug_Joint_Tail1_orientConstraint1.w0"
		;
connectAttr "Tail_Reverse_Node.ox" "slug_Joint_Tail1_orientConstraint1.w1";
connectAttr "Layer_Skeleton.di" "slug_Joint_Tail1_orientConstraint1.do";
connectAttr "pairBlend1.orx" "slug_Joint_L_Leg_Back.rx";
connectAttr "pairBlend1.ory" "slug_Joint_L_Leg_Back.ry";
connectAttr "pairBlend1.orz" "slug_Joint_L_Leg_Back.rz";
connectAttr "slug_Joint_Hip.s" "slug_Joint_L_Leg_Back.is";
connectAttr "pairBlend1.otx" "slug_Joint_L_Leg_Back.tx";
connectAttr "pairBlend1.oty" "slug_Joint_L_Leg_Back.ty";
connectAttr "pairBlend1.otz" "slug_Joint_L_Leg_Back.tz";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Leg_Back.do";
connectAttr "slug_Joint_L_Leg_Back.s" "slug_Joint_L_Knee_Back.is";
connectAttr "pairBlend2.otx" "slug_Joint_L_Knee_Back.tx";
connectAttr "pairBlend2.oty" "slug_Joint_L_Knee_Back.ty";
connectAttr "pairBlend2.otz" "slug_Joint_L_Knee_Back.tz";
connectAttr "pairBlend2.orx" "slug_Joint_L_Knee_Back.rx";
connectAttr "pairBlend2.ory" "slug_Joint_L_Knee_Back.ry";
connectAttr "pairBlend2.orz" "slug_Joint_L_Knee_Back.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Knee_Back.do";
connectAttr "slug_Joint_L_Knee_Back.s" "slug_Joint_L_Ankle_Back.is";
connectAttr "pairBlend3.otx" "slug_Joint_L_Ankle_Back.tx";
connectAttr "pairBlend3.oty" "slug_Joint_L_Ankle_Back.ty";
connectAttr "pairBlend3.otz" "slug_Joint_L_Ankle_Back.tz";
connectAttr "pairBlend3.orx" "slug_Joint_L_Ankle_Back.rx";
connectAttr "pairBlend3.ory" "slug_Joint_L_Ankle_Back.ry";
connectAttr "pairBlend3.orz" "slug_Joint_L_Ankle_Back.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Ankle_Back.do";
connectAttr "slug_Joint_L_Ankle_Back.s" "slug_Joint_L_Toe_Back.is";
connectAttr "pairBlend4.otx" "slug_Joint_L_Toe_Back.tx";
connectAttr "pairBlend4.oty" "slug_Joint_L_Toe_Back.ty";
connectAttr "pairBlend4.otz" "slug_Joint_L_Toe_Back.tz";
connectAttr "pairBlend4.orx" "slug_Joint_L_Toe_Back.rx";
connectAttr "pairBlend4.ory" "slug_Joint_L_Toe_Back.ry";
connectAttr "pairBlend4.orz" "slug_Joint_L_Toe_Back.rz";
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Toe_Back.do";
connectAttr "slug_Joint_L_Toe_Back.ro" "slug_Joint_L_Toe_orientConstraint1.cro";
connectAttr "slug_Joint_L_Toe_Back.pim" "slug_Joint_L_Toe_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Toe_Back.jo" "slug_Joint_L_Toe_orientConstraint1.cjo";
connectAttr "slug_Joint_L_Toe_FK.r" "slug_Joint_L_Toe_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Toe_FK.ro" "slug_Joint_L_Toe_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Toe_FK.pm" "slug_Joint_L_Toe_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Toe_FK.jo" "slug_Joint_L_Toe_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Toe_orientConstraint1.w0" "slug_Joint_L_Toe_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Toe_orientConstraint1.do";
connectAttr "slug_Joint_L_Toe_Back.ro" "slug_Joint_L_Toe_parentConstraint1.cro";
connectAttr "slug_Joint_L_Toe_Back.pim" "slug_Joint_L_Toe_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Toe_Back.rp" "slug_Joint_L_Toe_parentConstraint1.crp";
connectAttr "slug_Joint_L_Toe_Back.rpt" "slug_Joint_L_Toe_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Toe_Back.jo" "slug_Joint_L_Toe_parentConstraint1.cjo";
connectAttr "slug_Joint_L_Toe_FK.t" "slug_Joint_L_Toe_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Joint_L_Toe_FK.rp" "slug_Joint_L_Toe_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Joint_L_Toe_FK.rpt" "slug_Joint_L_Toe_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Joint_L_Toe_FK.r" "slug_Joint_L_Toe_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Toe_FK.ro" "slug_Joint_L_Toe_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Toe_FK.s" "slug_Joint_L_Toe_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Joint_L_Toe_FK.pm" "slug_Joint_L_Toe_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Toe_FK.jo" "slug_Joint_L_Toe_parentConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Toe_parentConstraint1.w0" "slug_Joint_L_Toe_parentConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_L_Toe_IK.t" "slug_Joint_L_Toe_parentConstraint1.tg[1].tt"
		;
connectAttr "slug_Joint_L_Toe_IK.rp" "slug_Joint_L_Toe_parentConstraint1.tg[1].trp"
		;
connectAttr "slug_Joint_L_Toe_IK.rpt" "slug_Joint_L_Toe_parentConstraint1.tg[1].trt"
		;
connectAttr "slug_Joint_L_Toe_IK.r" "slug_Joint_L_Toe_parentConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_L_Toe_IK.ro" "slug_Joint_L_Toe_parentConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_L_Toe_IK.s" "slug_Joint_L_Toe_parentConstraint1.tg[1].ts"
		;
connectAttr "slug_Joint_L_Toe_IK.pm" "slug_Joint_L_Toe_parentConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_L_Toe_IK.jo" "slug_Joint_L_Toe_parentConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_L_Toe_parentConstraint1.w1" "slug_Joint_L_Toe_parentConstraint1.tg[1].tw"
		;
connectAttr "Joint_L_Toe_parentConstraint1_Joint_L_Toe_FKW0.o" "slug_Joint_L_Toe_parentConstraint1.w0"
		;
connectAttr "Joint_L_Toe_parentConstraint1_Joint_L_Toe_IKW1.o" "slug_Joint_L_Toe_parentConstraint1.w1"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Toe_parentConstraint1.do";
connectAttr "slug_Joint_L_Ankle_Back.ro" "slug_Joint_L_Ankle_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Ankle_Back.pim" "slug_Joint_L_Ankle_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Ankle_Back.jo" "slug_Joint_L_Ankle_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_L_Ankle_FK.r" "slug_Joint_L_Ankle_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Ankle_FK.ro" "slug_Joint_L_Ankle_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Ankle_FK.pm" "slug_Joint_L_Ankle_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Ankle_FK.jo" "slug_Joint_L_Ankle_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Ankle_orientConstraint1.w0" "slug_Joint_L_Ankle_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Ankle_orientConstraint1.do";
connectAttr "slug_Joint_L_Ankle_Back.ro" "slug_Joint_L_Ankle_parentConstraint1.cro"
		;
connectAttr "slug_Joint_L_Ankle_Back.pim" "slug_Joint_L_Ankle_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Ankle_Back.rp" "slug_Joint_L_Ankle_parentConstraint1.crp"
		;
connectAttr "slug_Joint_L_Ankle_Back.rpt" "slug_Joint_L_Ankle_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Ankle_Back.jo" "slug_Joint_L_Ankle_parentConstraint1.cjo"
		;
connectAttr "slug_Joint_L_Ankle_FK.t" "slug_Joint_L_Ankle_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Joint_L_Ankle_FK.rp" "slug_Joint_L_Ankle_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Joint_L_Ankle_FK.rpt" "slug_Joint_L_Ankle_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Joint_L_Ankle_FK.r" "slug_Joint_L_Ankle_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Ankle_FK.ro" "slug_Joint_L_Ankle_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Ankle_FK.s" "slug_Joint_L_Ankle_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Joint_L_Ankle_FK.pm" "slug_Joint_L_Ankle_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Ankle_FK.jo" "slug_Joint_L_Ankle_parentConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Ankle_parentConstraint1.w0" "slug_Joint_L_Ankle_parentConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_L_Ankle_IK.t" "slug_Joint_L_Ankle_parentConstraint1.tg[1].tt"
		;
connectAttr "slug_Joint_L_Ankle_IK.rp" "slug_Joint_L_Ankle_parentConstraint1.tg[1].trp"
		;
connectAttr "slug_Joint_L_Ankle_IK.rpt" "slug_Joint_L_Ankle_parentConstraint1.tg[1].trt"
		;
connectAttr "slug_Joint_L_Ankle_IK.r" "slug_Joint_L_Ankle_parentConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_L_Ankle_IK.ro" "slug_Joint_L_Ankle_parentConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_L_Ankle_IK.s" "slug_Joint_L_Ankle_parentConstraint1.tg[1].ts"
		;
connectAttr "slug_Joint_L_Ankle_IK.pm" "slug_Joint_L_Ankle_parentConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_L_Ankle_IK.jo" "slug_Joint_L_Ankle_parentConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_L_Ankle_parentConstraint1.w1" "slug_Joint_L_Ankle_parentConstraint1.tg[1].tw"
		;
connectAttr "Joint_L_Ankle_parentConstraint1_Joint_L_Ankle_FKW0.o" "slug_Joint_L_Ankle_parentConstraint1.w0"
		;
connectAttr "Joint_L_Ankle_parentConstraint1_Joint_L_Ankle_IKW1.o" "slug_Joint_L_Ankle_parentConstraint1.w1"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Ankle_parentConstraint1.do";
connectAttr "slug_Joint_L_Knee_Back.ro" "slug_Joint_L_Knee_orientConstraint1.cro"
		;
connectAttr "slug_Joint_L_Knee_Back.pim" "slug_Joint_L_Knee_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Knee_Back.jo" "slug_Joint_L_Knee_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_L_Knee_FK.r" "slug_Joint_L_Knee_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Knee_FK.ro" "slug_Joint_L_Knee_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Knee_FK.pm" "slug_Joint_L_Knee_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Knee_FK.jo" "slug_Joint_L_Knee_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Knee_orientConstraint1.w0" "slug_Joint_L_Knee_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Knee_orientConstraint1.do";
connectAttr "slug_Joint_L_Knee_Back.ro" "slug_Joint_L_Knee_parentConstraint1.cro"
		;
connectAttr "slug_Joint_L_Knee_Back.pim" "slug_Joint_L_Knee_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Knee_Back.rp" "slug_Joint_L_Knee_parentConstraint1.crp"
		;
connectAttr "slug_Joint_L_Knee_Back.rpt" "slug_Joint_L_Knee_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Knee_Back.jo" "slug_Joint_L_Knee_parentConstraint1.cjo"
		;
connectAttr "slug_Joint_L_Knee_FK.t" "slug_Joint_L_Knee_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Joint_L_Knee_FK.rp" "slug_Joint_L_Knee_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Joint_L_Knee_FK.rpt" "slug_Joint_L_Knee_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Joint_L_Knee_FK.r" "slug_Joint_L_Knee_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Knee_FK.ro" "slug_Joint_L_Knee_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Knee_FK.s" "slug_Joint_L_Knee_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Joint_L_Knee_FK.pm" "slug_Joint_L_Knee_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Knee_FK.jo" "slug_Joint_L_Knee_parentConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Knee_parentConstraint1.w0" "slug_Joint_L_Knee_parentConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_L_Knee_IK.t" "slug_Joint_L_Knee_parentConstraint1.tg[1].tt"
		;
connectAttr "slug_Joint_L_Knee_IK.rp" "slug_Joint_L_Knee_parentConstraint1.tg[1].trp"
		;
connectAttr "slug_Joint_L_Knee_IK.rpt" "slug_Joint_L_Knee_parentConstraint1.tg[1].trt"
		;
connectAttr "slug_Joint_L_Knee_IK.r" "slug_Joint_L_Knee_parentConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_L_Knee_IK.ro" "slug_Joint_L_Knee_parentConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_L_Knee_IK.s" "slug_Joint_L_Knee_parentConstraint1.tg[1].ts"
		;
connectAttr "slug_Joint_L_Knee_IK.pm" "slug_Joint_L_Knee_parentConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_L_Knee_IK.jo" "slug_Joint_L_Knee_parentConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_L_Knee_parentConstraint1.w1" "slug_Joint_L_Knee_parentConstraint1.tg[1].tw"
		;
connectAttr "Joint_L_Knee_parentConstraint1_Joint_L_Knee_FKW0.o" "slug_Joint_L_Knee_parentConstraint1.w0"
		;
connectAttr "Joint_L_Knee_parentConstraint1_Joint_L_Knee_IKW1.o" "slug_Joint_L_Knee_parentConstraint1.w1"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Knee_parentConstraint1.do";
connectAttr "slug_Joint_L_Leg_Back.ro" "slug_Joint_L_Leg_orientConstraint1.cro";
connectAttr "slug_Joint_L_Leg_Back.pim" "slug_Joint_L_Leg_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Leg_Back.jo" "slug_Joint_L_Leg_orientConstraint1.cjo";
connectAttr "slug_Joint_L_Leg_FK.r" "slug_Joint_L_Leg_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Leg_FK.ro" "slug_Joint_L_Leg_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Leg_FK.pm" "slug_Joint_L_Leg_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Leg_FK.jo" "slug_Joint_L_Leg_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Leg_orientConstraint1.w0" "slug_Joint_L_Leg_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Leg_orientConstraint1.do";
connectAttr "slug_Joint_L_Leg_Back.ro" "slug_Joint_L_Leg_parentConstraint1.cro";
connectAttr "slug_Joint_L_Leg_Back.pim" "slug_Joint_L_Leg_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_L_Leg_Back.rp" "slug_Joint_L_Leg_parentConstraint1.crp";
connectAttr "slug_Joint_L_Leg_Back.rpt" "slug_Joint_L_Leg_parentConstraint1.crt"
		;
connectAttr "slug_Joint_L_Leg_Back.jo" "slug_Joint_L_Leg_parentConstraint1.cjo";
connectAttr "slug_Joint_L_Leg_FK.t" "slug_Joint_L_Leg_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Joint_L_Leg_FK.rp" "slug_Joint_L_Leg_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Joint_L_Leg_FK.rpt" "slug_Joint_L_Leg_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Joint_L_Leg_FK.r" "slug_Joint_L_Leg_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_L_Leg_FK.ro" "slug_Joint_L_Leg_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_L_Leg_FK.s" "slug_Joint_L_Leg_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Joint_L_Leg_FK.pm" "slug_Joint_L_Leg_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_L_Leg_FK.jo" "slug_Joint_L_Leg_parentConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_L_Leg_parentConstraint1.w0" "slug_Joint_L_Leg_parentConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_L_Leg_IK.t" "slug_Joint_L_Leg_parentConstraint1.tg[1].tt"
		;
connectAttr "slug_Joint_L_Leg_IK.rp" "slug_Joint_L_Leg_parentConstraint1.tg[1].trp"
		;
connectAttr "slug_Joint_L_Leg_IK.rpt" "slug_Joint_L_Leg_parentConstraint1.tg[1].trt"
		;
connectAttr "slug_Joint_L_Leg_IK.r" "slug_Joint_L_Leg_parentConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_L_Leg_IK.ro" "slug_Joint_L_Leg_parentConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_L_Leg_IK.s" "slug_Joint_L_Leg_parentConstraint1.tg[1].ts"
		;
connectAttr "slug_Joint_L_Leg_IK.pm" "slug_Joint_L_Leg_parentConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_L_Leg_IK.jo" "slug_Joint_L_Leg_parentConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_L_Leg_parentConstraint1.w1" "slug_Joint_L_Leg_parentConstraint1.tg[1].tw"
		;
connectAttr "Joint_L_Leg_parentConstraint1_Joint_L_Leg_FKW0.o" "slug_Joint_L_Leg_parentConstraint1.w0"
		;
connectAttr "Joint_L_Leg_parentConstraint1_Joint_L_Leg_IKW1.o" "slug_Joint_L_Leg_parentConstraint1.w1"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_L_Leg_parentConstraint1.do";
connectAttr "pairBlend5.orx" "slug_Joint_R_Leg_Back.rx";
connectAttr "pairBlend5.ory" "slug_Joint_R_Leg_Back.ry";
connectAttr "pairBlend5.orz" "slug_Joint_R_Leg_Back.rz";
connectAttr "slug_Joint_Hip.s" "slug_Joint_R_Leg_Back.is";
connectAttr "pairBlend5.otx" "slug_Joint_R_Leg_Back.tx";
connectAttr "pairBlend5.oty" "slug_Joint_R_Leg_Back.ty";
connectAttr "pairBlend5.otz" "slug_Joint_R_Leg_Back.tz";
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Leg_Back.do";
connectAttr "slug_Joint_R_Leg_Back.s" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.is"
		;
connectAttr "pairBlend6.otx" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.tx"
		;
connectAttr "pairBlend6.oty" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.ty"
		;
connectAttr "pairBlend6.otz" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.tz"
		;
connectAttr "pairBlend6.orx" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.rx"
		;
connectAttr "pairBlend6.ory" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.ry"
		;
connectAttr "pairBlend6.orz" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.rz"
		;
connectAttr "Layer_Skeleton.di" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.do"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.s" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.is"
		;
connectAttr "pairBlend7.otx" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.tx"
		;
connectAttr "pairBlend7.oty" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.ty"
		;
connectAttr "pairBlend7.otz" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.tz"
		;
connectAttr "pairBlend7.orx" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.rx"
		;
connectAttr "pairBlend7.ory" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.ry"
		;
connectAttr "pairBlend7.orz" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.rz"
		;
connectAttr "Layer_Skeleton.di" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.do"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.s" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.is"
		;
connectAttr "pairBlend8.otx" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.tx"
		;
connectAttr "pairBlend8.oty" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.ty"
		;
connectAttr "pairBlend8.otz" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.tz"
		;
connectAttr "pairBlend8.orx" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.rx"
		;
connectAttr "pairBlend8.ory" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.ry"
		;
connectAttr "pairBlend8.orz" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.rz"
		;
connectAttr "Layer_Skeleton.di" "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.do"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.ro" "slug_Joint_R_Toe_orientConstraint1.cro"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.pim" "slug_Joint_R_Toe_orientConstraint1.cpim"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.jo" "slug_Joint_R_Toe_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_R_Toe_FK.r" "slug_Joint_R_Toe_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Toe_FK.ro" "slug_Joint_R_Toe_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Toe_FK.pm" "slug_Joint_R_Toe_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Toe_FK.jo" "slug_Joint_R_Toe_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Toe_orientConstraint1.w0" "slug_Joint_R_Toe_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Toe_orientConstraint1.do";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.ro" "slug_Joint_R_Toe_parentConstraint1.cro"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.pim" "slug_Joint_R_Toe_parentConstraint1.cpim"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.rp" "slug_Joint_R_Toe_parentConstraint1.crp"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.rpt" "slug_Joint_R_Toe_parentConstraint1.crt"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.jo" "slug_Joint_R_Toe_parentConstraint1.cjo"
		;
connectAttr "slug_Joint_R_Toe_FK.t" "slug_Joint_R_Toe_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Joint_R_Toe_FK.rp" "slug_Joint_R_Toe_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Joint_R_Toe_FK.rpt" "slug_Joint_R_Toe_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Joint_R_Toe_FK.r" "slug_Joint_R_Toe_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Toe_FK.ro" "slug_Joint_R_Toe_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Toe_FK.s" "slug_Joint_R_Toe_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Joint_R_Toe_FK.pm" "slug_Joint_R_Toe_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Toe_FK.jo" "slug_Joint_R_Toe_parentConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Toe_parentConstraint1.w0" "slug_Joint_R_Toe_parentConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Toe_IK.t" "slug_Joint_R_Toe_parentConstraint1.tg[1].tt"
		;
connectAttr "slug_Joint_R_Toe_IK.rp" "slug_Joint_R_Toe_parentConstraint1.tg[1].trp"
		;
connectAttr "slug_Joint_R_Toe_IK.rpt" "slug_Joint_R_Toe_parentConstraint1.tg[1].trt"
		;
connectAttr "slug_Joint_R_Toe_IK.r" "slug_Joint_R_Toe_parentConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_R_Toe_IK.ro" "slug_Joint_R_Toe_parentConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_R_Toe_IK.s" "slug_Joint_R_Toe_parentConstraint1.tg[1].ts"
		;
connectAttr "slug_Joint_R_Toe_IK.pm" "slug_Joint_R_Toe_parentConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_R_Toe_IK.jo" "slug_Joint_R_Toe_parentConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_R_Toe_parentConstraint1.w1" "slug_Joint_R_Toe_parentConstraint1.tg[1].tw"
		;
connectAttr "Joint_R_Toe_parentConstraint1_Joint_R_Toe_FKW0.o" "slug_Joint_R_Toe_parentConstraint1.w0"
		;
connectAttr "Joint_R_Toe_parentConstraint1_Joint_R_Toe_IKW1.o" "slug_Joint_R_Toe_parentConstraint1.w1"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Toe_parentConstraint1.do";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.ro" "slug_Joint_R_Ankle_orientConstraint1.cro"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.pim" "slug_Joint_R_Ankle_orientConstraint1.cpim"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.jo" "slug_Joint_R_Ankle_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_R_Ankle_FK.r" "slug_Joint_R_Ankle_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Ankle_FK.ro" "slug_Joint_R_Ankle_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Ankle_FK.pm" "slug_Joint_R_Ankle_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Ankle_FK.jo" "slug_Joint_R_Ankle_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Ankle_orientConstraint1.w0" "slug_Joint_R_Ankle_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Ankle_orientConstraint1.do";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.ro" "slug_Joint_R_Ankle_parentConstraint1.cro"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.pim" "slug_Joint_R_Ankle_parentConstraint1.cpim"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.rp" "slug_Joint_R_Ankle_parentConstraint1.crp"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.rpt" "slug_Joint_R_Ankle_parentConstraint1.crt"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.jo" "slug_Joint_R_Ankle_parentConstraint1.cjo"
		;
connectAttr "slug_Joint_R_Ankle_FK.t" "slug_Joint_R_Ankle_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Joint_R_Ankle_FK.rp" "slug_Joint_R_Ankle_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Joint_R_Ankle_FK.rpt" "slug_Joint_R_Ankle_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Joint_R_Ankle_FK.r" "slug_Joint_R_Ankle_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Ankle_FK.ro" "slug_Joint_R_Ankle_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Ankle_FK.s" "slug_Joint_R_Ankle_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Joint_R_Ankle_FK.pm" "slug_Joint_R_Ankle_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Ankle_FK.jo" "slug_Joint_R_Ankle_parentConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Ankle_parentConstraint1.w0" "slug_Joint_R_Ankle_parentConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Ankle_IK.t" "slug_Joint_R_Ankle_parentConstraint1.tg[1].tt"
		;
connectAttr "slug_Joint_R_Ankle_IK.rp" "slug_Joint_R_Ankle_parentConstraint1.tg[1].trp"
		;
connectAttr "slug_Joint_R_Ankle_IK.rpt" "slug_Joint_R_Ankle_parentConstraint1.tg[1].trt"
		;
connectAttr "slug_Joint_R_Ankle_IK.r" "slug_Joint_R_Ankle_parentConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_R_Ankle_IK.ro" "slug_Joint_R_Ankle_parentConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_R_Ankle_IK.s" "slug_Joint_R_Ankle_parentConstraint1.tg[1].ts"
		;
connectAttr "slug_Joint_R_Ankle_IK.pm" "slug_Joint_R_Ankle_parentConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_R_Ankle_IK.jo" "slug_Joint_R_Ankle_parentConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_R_Ankle_parentConstraint1.w1" "slug_Joint_R_Ankle_parentConstraint1.tg[1].tw"
		;
connectAttr "Joint_R_Ankle_parentConstraint1_Joint_R_Ankle_FKW0.o" "slug_Joint_R_Ankle_parentConstraint1.w0"
		;
connectAttr "Joint_R_Ankle_parentConstraint1_Joint_R_Ankle_IKW1.o" "slug_Joint_R_Ankle_parentConstraint1.w1"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Ankle_parentConstraint1.do";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.ro" "slug_Joint_R_Knee_orientConstraint1.cro"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.pim" "slug_Joint_R_Knee_orientConstraint1.cpim"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.jo" "slug_Joint_R_Knee_orientConstraint1.cjo"
		;
connectAttr "slug_Joint_R_Knee_FK.r" "slug_Joint_R_Knee_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Knee_FK.ro" "slug_Joint_R_Knee_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Knee_FK.pm" "slug_Joint_R_Knee_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Knee_FK.jo" "slug_Joint_R_Knee_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Knee_orientConstraint1.w0" "slug_Joint_R_Knee_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Knee_orientConstraint1.do";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.ro" "slug_Joint_R_Knee_parentConstraint1.cro"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.pim" "slug_Joint_R_Knee_parentConstraint1.cpim"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.rp" "slug_Joint_R_Knee_parentConstraint1.crp"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.rpt" "slug_Joint_R_Knee_parentConstraint1.crt"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.jo" "slug_Joint_R_Knee_parentConstraint1.cjo"
		;
connectAttr "slug_Joint_R_Knee_FK.t" "slug_Joint_R_Knee_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Joint_R_Knee_FK.rp" "slug_Joint_R_Knee_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Joint_R_Knee_FK.rpt" "slug_Joint_R_Knee_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Joint_R_Knee_FK.r" "slug_Joint_R_Knee_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Knee_FK.ro" "slug_Joint_R_Knee_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Knee_FK.s" "slug_Joint_R_Knee_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Joint_R_Knee_FK.pm" "slug_Joint_R_Knee_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Knee_FK.jo" "slug_Joint_R_Knee_parentConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Knee_parentConstraint1.w0" "slug_Joint_R_Knee_parentConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Knee_IK.t" "slug_Joint_R_Knee_parentConstraint1.tg[1].tt"
		;
connectAttr "slug_Joint_R_Knee_IK.rp" "slug_Joint_R_Knee_parentConstraint1.tg[1].trp"
		;
connectAttr "slug_Joint_R_Knee_IK.rpt" "slug_Joint_R_Knee_parentConstraint1.tg[1].trt"
		;
connectAttr "slug_Joint_R_Knee_IK.r" "slug_Joint_R_Knee_parentConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_R_Knee_IK.ro" "slug_Joint_R_Knee_parentConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_R_Knee_IK.s" "slug_Joint_R_Knee_parentConstraint1.tg[1].ts"
		;
connectAttr "slug_Joint_R_Knee_IK.pm" "slug_Joint_R_Knee_parentConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_R_Knee_IK.jo" "slug_Joint_R_Knee_parentConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_R_Knee_parentConstraint1.w1" "slug_Joint_R_Knee_parentConstraint1.tg[1].tw"
		;
connectAttr "Joint_R_Knee_parentConstraint1_Joint_R_Knee_FKW0.o" "slug_Joint_R_Knee_parentConstraint1.w0"
		;
connectAttr "Joint_R_Knee_parentConstraint1_Joint_R_Knee_IKW1.o" "slug_Joint_R_Knee_parentConstraint1.w1"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Knee_parentConstraint1.do";
connectAttr "slug_Joint_R_Leg_Back.ro" "slug_Joint_R_Leg_orientConstraint1.cro";
connectAttr "slug_Joint_R_Leg_Back.pim" "slug_Joint_R_Leg_orientConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Leg_Back.jo" "slug_Joint_R_Leg_orientConstraint1.cjo";
connectAttr "slug_Joint_R_Leg_FK.r" "slug_Joint_R_Leg_orientConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Leg_FK.ro" "slug_Joint_R_Leg_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Leg_FK.pm" "slug_Joint_R_Leg_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Leg_FK.jo" "slug_Joint_R_Leg_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Leg_orientConstraint1.w0" "slug_Joint_R_Leg_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Leg_orientConstraint1.do";
connectAttr "slug_Joint_R_Leg_Back.ro" "slug_Joint_R_Leg_parentConstraint1.cro";
connectAttr "slug_Joint_R_Leg_Back.pim" "slug_Joint_R_Leg_parentConstraint1.cpim"
		;
connectAttr "slug_Joint_R_Leg_Back.rp" "slug_Joint_R_Leg_parentConstraint1.crp";
connectAttr "slug_Joint_R_Leg_Back.rpt" "slug_Joint_R_Leg_parentConstraint1.crt"
		;
connectAttr "slug_Joint_R_Leg_Back.jo" "slug_Joint_R_Leg_parentConstraint1.cjo";
connectAttr "slug_Joint_R_Leg_FK.t" "slug_Joint_R_Leg_parentConstraint1.tg[0].tt"
		;
connectAttr "slug_Joint_R_Leg_FK.rp" "slug_Joint_R_Leg_parentConstraint1.tg[0].trp"
		;
connectAttr "slug_Joint_R_Leg_FK.rpt" "slug_Joint_R_Leg_parentConstraint1.tg[0].trt"
		;
connectAttr "slug_Joint_R_Leg_FK.r" "slug_Joint_R_Leg_parentConstraint1.tg[0].tr"
		;
connectAttr "slug_Joint_R_Leg_FK.ro" "slug_Joint_R_Leg_parentConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_R_Leg_FK.s" "slug_Joint_R_Leg_parentConstraint1.tg[0].ts"
		;
connectAttr "slug_Joint_R_Leg_FK.pm" "slug_Joint_R_Leg_parentConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_R_Leg_FK.jo" "slug_Joint_R_Leg_parentConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_R_Leg_parentConstraint1.w0" "slug_Joint_R_Leg_parentConstraint1.tg[0].tw"
		;
connectAttr "slug_Joint_R_Leg_IK.t" "slug_Joint_R_Leg_parentConstraint1.tg[1].tt"
		;
connectAttr "slug_Joint_R_Leg_IK.rp" "slug_Joint_R_Leg_parentConstraint1.tg[1].trp"
		;
connectAttr "slug_Joint_R_Leg_IK.rpt" "slug_Joint_R_Leg_parentConstraint1.tg[1].trt"
		;
connectAttr "slug_Joint_R_Leg_IK.r" "slug_Joint_R_Leg_parentConstraint1.tg[1].tr"
		;
connectAttr "slug_Joint_R_Leg_IK.ro" "slug_Joint_R_Leg_parentConstraint1.tg[1].tro"
		;
connectAttr "slug_Joint_R_Leg_IK.s" "slug_Joint_R_Leg_parentConstraint1.tg[1].ts"
		;
connectAttr "slug_Joint_R_Leg_IK.pm" "slug_Joint_R_Leg_parentConstraint1.tg[1].tpm"
		;
connectAttr "slug_Joint_R_Leg_IK.jo" "slug_Joint_R_Leg_parentConstraint1.tg[1].tjo"
		;
connectAttr "slug_Joint_R_Leg_parentConstraint1.w1" "slug_Joint_R_Leg_parentConstraint1.tg[1].tw"
		;
connectAttr "Joint_R_Leg_parentConstraint1_Joint_R_Leg_FKW0.o" "slug_Joint_R_Leg_parentConstraint1.w0"
		;
connectAttr "Joint_R_Leg_parentConstraint1_Joint_R_Leg_IKW1.o" "slug_Joint_R_Leg_parentConstraint1.w1"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_R_Leg_parentConstraint1.do";
connectAttr "slug_Joint_Hip.ro" "slug_Joint_Hip_orientConstraint1.cro";
connectAttr "slug_Joint_Hip.pim" "slug_Joint_Hip_orientConstraint1.cpim";
connectAttr "slug_Joint_Hip.jo" "slug_Joint_Hip_orientConstraint1.cjo";
connectAttr "slug_Joint_Hip_FK.r" "slug_Joint_Hip_orientConstraint1.tg[0].tr";
connectAttr "slug_Joint_Hip_FK.ro" "slug_Joint_Hip_orientConstraint1.tg[0].tro";
connectAttr "slug_Joint_Hip_FK.pm" "slug_Joint_Hip_orientConstraint1.tg[0].tpm";
connectAttr "slug_Joint_Hip_FK.jo" "slug_Joint_Hip_orientConstraint1.tg[0].tjo";
connectAttr "slug_Joint_Hip_orientConstraint1.w0" "slug_Joint_Hip_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Hip_orientConstraint1.do";
connectAttr "slug_Joint_Root.ro" "slug_Joint_Root_orientConstraint1.cro";
connectAttr "slug_Joint_Root.pim" "slug_Joint_Root_orientConstraint1.cpim";
connectAttr "slug_Joint_Root.jo" "slug_Joint_Root_orientConstraint1.cjo";
connectAttr "slug_Joint_Root_FK.r" "slug_Joint_Root_orientConstraint1.tg[0].tr";
connectAttr "slug_Joint_Root_FK.ro" "slug_Joint_Root_orientConstraint1.tg[0].tro"
		;
connectAttr "slug_Joint_Root_FK.pm" "slug_Joint_Root_orientConstraint1.tg[0].tpm"
		;
connectAttr "slug_Joint_Root_FK.jo" "slug_Joint_Root_orientConstraint1.tg[0].tjo"
		;
connectAttr "slug_Joint_Root_orientConstraint1.w0" "slug_Joint_Root_orientConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Root_orientConstraint1.do";
connectAttr "slug_Joint_Root.pim" "slug_Joint_Root_pointConstraint1.cpim";
connectAttr "slug_Joint_Root.rp" "slug_Joint_Root_pointConstraint1.crp";
connectAttr "slug_Joint_Root.rpt" "slug_Joint_Root_pointConstraint1.crt";
connectAttr "slug_Cube_Root.t" "slug_Joint_Root_pointConstraint1.tg[0].tt";
connectAttr "slug_Cube_Root.rp" "slug_Joint_Root_pointConstraint1.tg[0].trp";
connectAttr "slug_Cube_Root.rpt" "slug_Joint_Root_pointConstraint1.tg[0].trt";
connectAttr "slug_Cube_Root.pm" "slug_Joint_Root_pointConstraint1.tg[0].tpm";
connectAttr "slug_Joint_Root_pointConstraint1.w0" "slug_Joint_Root_pointConstraint1.tg[0].tw"
		;
connectAttr "Layer_Skeleton.di" "slug_Joint_Root_pointConstraint1.do";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[3].llnk";
connectAttr "slug_shader.msg" "lightLinker1.lnk[3].olnk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "slug_file.oc" "slug_material.c";
connectAttr "slug_material.oc" "slug_shader.ss";
connectAttr "slug_meshShape.iog" "slug_shader.dsm" -na;
connectAttr "slug_shader.msg" "materialInfo1.sg";
connectAttr "slug_material.msg" "materialInfo1.m";
connectAttr "slug_file.msg" "materialInfo1.t" -na;
connectAttr "layerManager.dli[8]" "GEO.id";
connectAttr "layerManager.dli[9]" "Layer_Control.id";
connectAttr "layerManager.dli[10]" "M_IK.id";
connectAttr "layerManager.dli[11]" "L_IK.id";
connectAttr "layerManager.dli[12]" "R_IK.id";
connectAttr "layerManager.dli[13]" "Layer_Skeleton.id";
connectAttr "layerManager.dli[14]" "Layer_Skeleton_FK.id";
connectAttr "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.ctx" "unitConversion1.i"
		;
connectAttr "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.cty" "unitConversion2.i"
		;
connectAttr "slug_Handle_Joint_L_Leg_IK_Joint_L_Ankle_IK_poleVectorConstraint1.ctz" "unitConversion3.i"
		;
connectAttr "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.ctx" "unitConversion4.i"
		;
connectAttr "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.cty" "unitConversion5.i"
		;
connectAttr "slug_Handle_Joint_R_Leg_IK_Joint_R_Ankle_IK_poleVectorConstraint1.ctz" "unitConversion6.i"
		;
connectAttr "slug_Tail_IK_CNTRL.IK_Blend" "Tail_Reverse_Node.ix";
connectAttr "slug_Tail_IK_CNTRL.IK_Blend" "Cube_Tail1_visibility.i";
connectAttr "unitConversion7.o" "L_FK_MUltiply_UTL.i1x";
connectAttr "slug_Cube_L_Hand.rx" "unitConversion7.i";
connectAttr "L_FK_MUltiply_UTL.ox" "unitConversion8.i";
connectAttr "L_FK_MUltiply_UTL.ox" "unitConversion9.i";
connectAttr "unitConversion10.o" "L_IK_MUltiply_UTL.i1x";
connectAttr "slug_Const_Joint_L_Wrist_IK.rx" "unitConversion10.i";
connectAttr "L_IK_MUltiply_UTL.ox" "unitConversion11.i";
connectAttr "slug_L_arm_IKHandle_poleVectorConstraint1.ctx" "unitConversion12.i"
		;
connectAttr "slug_L_arm_IKHandle_poleVectorConstraint1.cty" "unitConversion13.i"
		;
connectAttr "slug_L_arm_IKHandle_poleVectorConstraint1.ctz" "unitConversion14.i"
		;
connectAttr "slug_Const_Joint_L_Wrist_IK.IK_Blend" "L_reverse_UTL.ix";
connectAttr "slug_Const_Joint_L_Wrist_IK.IK_Blend" "Pole_Joint_L_Wrist_IK_visibility.i"
		;
connectAttr "unitConversion15.o" "R_FK_MUltiply_UTL.i1x";
connectAttr "slug_Cube_R_Hand.rx" "unitConversion15.i";
connectAttr "R_FK_MUltiply_UTL.ox" "unitConversion16.i";
connectAttr "R_FK_MUltiply_UTL.ox" "unitConversion17.i";
connectAttr "unitConversion18.o" "R_IK_MUltiply_UTL.i1x";
connectAttr "slug_Const_Joint_R_Wrist_IK.rx" "unitConversion18.i";
connectAttr "R_IK_MUltiply_UTL.ox" "unitConversion19.i";
connectAttr "slug_R_arm_IKHandle_poleVectorConstraint1.ctx" "unitConversion20.i"
		;
connectAttr "slug_R_arm_IKHandle_poleVectorConstraint1.cty" "unitConversion21.i"
		;
connectAttr "slug_R_arm_IKHandle_poleVectorConstraint1.ctz" "unitConversion22.i"
		;
connectAttr "slug_Const_Joint_R_Wrist_IK.IK_Blend" "R_reverse_UTL.ix";
connectAttr "slug_Const_Joint_R_Wrist_IK.IK_Blend" "Cube_R_Arm_visibility.i";
connectAttr "slug_Const_Joint_R_Wrist_IK.IK_Blend" "Pole_Joint_R_Wrist_IK_visibility.i"
		;
connectAttr "slug_Joint_L_Leg_orientConstraint1.crx" "pairBlend1.irx1";
connectAttr "slug_Joint_L_Leg_orientConstraint1.cry" "pairBlend1.iry1";
connectAttr "slug_Joint_L_Leg_orientConstraint1.crz" "pairBlend1.irz1";
connectAttr "slug_Joint_L_Leg_Back.blendParent1" "pairBlend1.w";
connectAttr "slug_Joint_L_Leg_Back.ro" "pairBlend1.ro";
connectAttr "slug_Joint_L_Leg_parentConstraint1.ctx" "pairBlend1.itx2";
connectAttr "slug_Joint_L_Leg_parentConstraint1.cty" "pairBlend1.ity2";
connectAttr "slug_Joint_L_Leg_parentConstraint1.ctz" "pairBlend1.itz2";
connectAttr "slug_Joint_L_Leg_parentConstraint1.crx" "pairBlend1.irx2";
connectAttr "slug_Joint_L_Leg_parentConstraint1.cry" "pairBlend1.iry2";
connectAttr "slug_Joint_L_Leg_parentConstraint1.crz" "pairBlend1.irz2";
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Joint_L_Leg_parentConstraint1_Joint_L_Leg_FKW0.i"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Joint_L_Leg_parentConstraint1_Joint_L_Leg_IKW1.i"
		;
connectAttr "slug_Joint_L_Knee_orientConstraint1.crx" "pairBlend2.irx1";
connectAttr "slug_Joint_L_Knee_orientConstraint1.cry" "pairBlend2.iry1";
connectAttr "slug_Joint_L_Knee_orientConstraint1.crz" "pairBlend2.irz1";
connectAttr "slug_Joint_L_Knee_Back.blendParent1" "pairBlend2.w";
connectAttr "slug_Joint_L_Knee_Back.ro" "pairBlend2.ro";
connectAttr "slug_Joint_L_Knee_parentConstraint1.ctx" "pairBlend2.itx2";
connectAttr "slug_Joint_L_Knee_parentConstraint1.cty" "pairBlend2.ity2";
connectAttr "slug_Joint_L_Knee_parentConstraint1.ctz" "pairBlend2.itz2";
connectAttr "slug_Joint_L_Knee_parentConstraint1.crx" "pairBlend2.irx2";
connectAttr "slug_Joint_L_Knee_parentConstraint1.cry" "pairBlend2.iry2";
connectAttr "slug_Joint_L_Knee_parentConstraint1.crz" "pairBlend2.irz2";
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Joint_L_Knee_parentConstraint1_Joint_L_Knee_FKW0.i"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Joint_L_Knee_parentConstraint1_Joint_L_Knee_IKW1.i"
		;
connectAttr "slug_Joint_L_Ankle_orientConstraint1.crx" "pairBlend3.irx1";
connectAttr "slug_Joint_L_Ankle_orientConstraint1.cry" "pairBlend3.iry1";
connectAttr "slug_Joint_L_Ankle_orientConstraint1.crz" "pairBlend3.irz1";
connectAttr "slug_Joint_L_Ankle_Back.blendParent1" "pairBlend3.w";
connectAttr "slug_Joint_L_Ankle_Back.ro" "pairBlend3.ro";
connectAttr "slug_Joint_L_Ankle_parentConstraint1.ctx" "pairBlend3.itx2";
connectAttr "slug_Joint_L_Ankle_parentConstraint1.cty" "pairBlend3.ity2";
connectAttr "slug_Joint_L_Ankle_parentConstraint1.ctz" "pairBlend3.itz2";
connectAttr "slug_Joint_L_Ankle_parentConstraint1.crx" "pairBlend3.irx2";
connectAttr "slug_Joint_L_Ankle_parentConstraint1.cry" "pairBlend3.iry2";
connectAttr "slug_Joint_L_Ankle_parentConstraint1.crz" "pairBlend3.irz2";
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Joint_L_Ankle_parentConstraint1_Joint_L_Ankle_FKW0.i"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Joint_L_Ankle_parentConstraint1_Joint_L_Ankle_IKW1.i"
		;
connectAttr "slug_Joint_L_Toe_orientConstraint1.crx" "pairBlend4.irx1";
connectAttr "slug_Joint_L_Toe_orientConstraint1.cry" "pairBlend4.iry1";
connectAttr "slug_Joint_L_Toe_orientConstraint1.crz" "pairBlend4.irz1";
connectAttr "slug_Joint_L_Toe_Back.blendParent1" "pairBlend4.w";
connectAttr "slug_Joint_L_Toe_Back.ro" "pairBlend4.ro";
connectAttr "slug_Joint_L_Toe_parentConstraint1.ctx" "pairBlend4.itx2";
connectAttr "slug_Joint_L_Toe_parentConstraint1.cty" "pairBlend4.ity2";
connectAttr "slug_Joint_L_Toe_parentConstraint1.ctz" "pairBlend4.itz2";
connectAttr "slug_Joint_L_Toe_parentConstraint1.crx" "pairBlend4.irx2";
connectAttr "slug_Joint_L_Toe_parentConstraint1.cry" "pairBlend4.iry2";
connectAttr "slug_Joint_L_Toe_parentConstraint1.crz" "pairBlend4.irz2";
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Joint_L_Toe_parentConstraint1_Joint_L_Toe_FKW0.i"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Joint_L_Toe_parentConstraint1_Joint_L_Toe_IKW1.i"
		;
connectAttr "slug_Joint_R_Leg_orientConstraint1.crx" "pairBlend5.irx1";
connectAttr "slug_Joint_R_Leg_orientConstraint1.cry" "pairBlend5.iry1";
connectAttr "slug_Joint_R_Leg_orientConstraint1.crz" "pairBlend5.irz1";
connectAttr "slug_Joint_R_Leg_Back.blendParent1" "pairBlend5.w";
connectAttr "slug_Joint_R_Leg_Back.ro" "pairBlend5.ro";
connectAttr "slug_Joint_R_Leg_parentConstraint1.ctx" "pairBlend5.itx2";
connectAttr "slug_Joint_R_Leg_parentConstraint1.cty" "pairBlend5.ity2";
connectAttr "slug_Joint_R_Leg_parentConstraint1.ctz" "pairBlend5.itz2";
connectAttr "slug_Joint_R_Leg_parentConstraint1.crx" "pairBlend5.irx2";
connectAttr "slug_Joint_R_Leg_parentConstraint1.cry" "pairBlend5.iry2";
connectAttr "slug_Joint_R_Leg_parentConstraint1.crz" "pairBlend5.irz2";
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Joint_R_Leg_parentConstraint1_Joint_R_Leg_FKW0.i"
		;
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Joint_R_Leg_parentConstraint1_Joint_R_Leg_IKW1.i"
		;
connectAttr "slug_Joint_R_Knee_orientConstraint1.crx" "pairBlend6.irx1";
connectAttr "slug_Joint_R_Knee_orientConstraint1.cry" "pairBlend6.iry1";
connectAttr "slug_Joint_R_Knee_orientConstraint1.crz" "pairBlend6.irz1";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.blendParent1" "pairBlend6.w"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.ro" "pairBlend6.ro"
		;
connectAttr "slug_Joint_R_Knee_parentConstraint1.ctx" "pairBlend6.itx2";
connectAttr "slug_Joint_R_Knee_parentConstraint1.cty" "pairBlend6.ity2";
connectAttr "slug_Joint_R_Knee_parentConstraint1.ctz" "pairBlend6.itz2";
connectAttr "slug_Joint_R_Knee_parentConstraint1.crx" "pairBlend6.irx2";
connectAttr "slug_Joint_R_Knee_parentConstraint1.cry" "pairBlend6.iry2";
connectAttr "slug_Joint_R_Knee_parentConstraint1.crz" "pairBlend6.irz2";
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Joint_R_Knee_parentConstraint1_Joint_R_Knee_FKW0.i"
		;
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Joint_R_Knee_parentConstraint1_Joint_R_Knee_IKW1.i"
		;
connectAttr "slug_Joint_R_Ankle_orientConstraint1.crx" "pairBlend7.irx1";
connectAttr "slug_Joint_R_Ankle_orientConstraint1.cry" "pairBlend7.iry1";
connectAttr "slug_Joint_R_Ankle_orientConstraint1.crz" "pairBlend7.irz1";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.blendParent1" "pairBlend7.w"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.ro" "pairBlend7.ro"
		;
connectAttr "slug_Joint_R_Ankle_parentConstraint1.ctx" "pairBlend7.itx2";
connectAttr "slug_Joint_R_Ankle_parentConstraint1.cty" "pairBlend7.ity2";
connectAttr "slug_Joint_R_Ankle_parentConstraint1.ctz" "pairBlend7.itz2";
connectAttr "slug_Joint_R_Ankle_parentConstraint1.crx" "pairBlend7.irx2";
connectAttr "slug_Joint_R_Ankle_parentConstraint1.cry" "pairBlend7.iry2";
connectAttr "slug_Joint_R_Ankle_parentConstraint1.crz" "pairBlend7.irz2";
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Joint_R_Ankle_parentConstraint1_Joint_R_Ankle_FKW0.i"
		;
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Joint_R_Ankle_parentConstraint1_Joint_R_Ankle_IKW1.i"
		;
connectAttr "slug_Joint_R_Toe_orientConstraint1.crx" "pairBlend8.irx1";
connectAttr "slug_Joint_R_Toe_orientConstraint1.cry" "pairBlend8.iry1";
connectAttr "slug_Joint_R_Toe_orientConstraint1.crz" "pairBlend8.irz1";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.blendParent1" "pairBlend8.w"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back|slug_Joint_R_Toe.ro" "pairBlend8.ro"
		;
connectAttr "slug_Joint_R_Toe_parentConstraint1.ctx" "pairBlend8.itx2";
connectAttr "slug_Joint_R_Toe_parentConstraint1.cty" "pairBlend8.ity2";
connectAttr "slug_Joint_R_Toe_parentConstraint1.ctz" "pairBlend8.itz2";
connectAttr "slug_Joint_R_Toe_parentConstraint1.crx" "pairBlend8.irx2";
connectAttr "slug_Joint_R_Toe_parentConstraint1.cry" "pairBlend8.iry2";
connectAttr "slug_Joint_R_Toe_parentConstraint1.crz" "pairBlend8.irz2";
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Joint_R_Toe_parentConstraint1_Joint_R_Toe_FKW0.i"
		;
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Joint_R_Toe_parentConstraint1_Joint_R_Toe_IKW1.i"
		;
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Cube_L_Leg_visibility.i";
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Cube_L_Knee_visibility.i";
connectAttr "slug_Const_Joint_L_Ankle_IK.IK_Blend" "Cube_L_Ankle_visibility.i";
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Cube_R_Leg_visibility.i";
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Cube_R_Knee_visibility.i";
connectAttr "slug_Const_Joint_R_Ankle_IK.IK_Blend" "Cube_R_Ankle_visibility.i";
connectAttr "slug_Const_Joint_L_Ankle_IK.Roll" "Joint_L_Heel_RF_rotateX.i";
connectAttr "slug_Const_Joint_L_Ankle_IK.Roll" "Joint_L_Ball_RF_rotateX.i";
connectAttr "slug_Const_Joint_L_Ankle_IK.Roll" "Joint_L_Toe_RF_rotateX.i";
connectAttr "slug_Const_Joint_L_Ankle_IK.Toe" "Joint_L_Toe_IK_rotateX.i";
connectAttr "slug_Const_Joint_R_Ankle_IK.Roll" "Joint_R_Heel_RF_rotateX.i";
connectAttr "slug_Const_Joint_R_Ankle_IK.Roll" "Joint_R_Ball_RF_rotateX.i";
connectAttr "slug_Const_Joint_R_Ankle_IK.Roll" "Joint_R_Toe_RF_rotateX.i";
connectAttr "slug_Const_Joint_R_Ankle_IK.Toe" "Joint_R_Toe_IK_rotateX.i";
connectAttr ":time1.o" "L_Front_IK_Blend.tim";
connectAttr "slug_Const_Joint_L_Front_Ankle_IK.msg" "L_Front_IK_Blend.obm";
connectAttr ":time1.o" "L_Middle_IK_Blend.tim";
connectAttr "slug_Const_Joint_L_Front_Ankle_IK.msg" "L_Middle_IK_Blend.obm";
connectAttr ":time1.o" "R_Middle_IK_Blend.tim";
connectAttr "slug_Const_Joint_L_Front_Ankle_IK.msg" "R_Middle_IK_Blend.obm";
connectAttr ":time1.o" "R_Front_IK_Blend.tim";
connectAttr "slug_Const_Joint_L_Front_Ankle_IK.msg" "R_Front_IK_Blend.obm";
connectAttr "slug_Joint_Root.msg" "bindPose1.m[1]";
connectAttr "slug_Joint_Waist.msg" "bindPose1.m[2]";
connectAttr "slug_Joint_Chest.msg" "bindPose1.m[3]";
connectAttr "slug_Joint_Chest2.msg" "bindPose1.m[4]";
connectAttr "slug_Joint_Chest3.msg" "bindPose1.m[5]";
connectAttr "slug_Joint_Mid_Chest.msg" "bindPose1.m[6]";
connectAttr "slug_Joint_Neck1.msg" "bindPose1.m[7]";
connectAttr "slug_Joint_Head.msg" "bindPose1.m[8]";
connectAttr "slug_Joint_L_Shoulder.msg" "bindPose1.m[10]";
connectAttr "slug_Joint_L_Arm.msg" "bindPose1.m[11]";
connectAttr "slug_Joint_L_Elbow.msg" "bindPose1.m[12]";
connectAttr "slug_Joint_L_Forearm.msg" "bindPose1.m[13]";
connectAttr "slug_Joint_L_Wrist.msg" "bindPose1.m[14]";
connectAttr "slug_Joint_R_Shoulder.msg" "bindPose1.m[16]";
connectAttr "slug_Joint_R_Arm.msg" "bindPose1.m[17]";
connectAttr "slug_Joint_R_Elbow.msg" "bindPose1.m[18]";
connectAttr "slug_Joint_R_Forearm.msg" "bindPose1.m[19]";
connectAttr "slug_Joint_R_Wrist.msg" "bindPose1.m[20]";
connectAttr "slug_Joint_Hip.msg" "bindPose1.m[22]";
connectAttr "slug_Joint_Tail1.msg" "bindPose1.m[23]";
connectAttr "slug_Joint_Tail2.msg" "bindPose1.m[24]";
connectAttr "slug_Joint_Tail3.msg" "bindPose1.m[25]";
connectAttr "slug_Joint_L_Leg_Back.msg" "bindPose1.m[26]";
connectAttr "slug_Joint_L_Knee_Back.msg" "bindPose1.m[27]";
connectAttr "slug_Joint_L_Ankle_Back.msg" "bindPose1.m[28]";
connectAttr "slug_Joint_R_Leg_Back.msg" "bindPose1.m[30]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.msg" "bindPose1.m[31]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.msg" "bindPose1.m[32]"
		;
connectAttr "slug_Joint_L_Leg_Mid.msg" "bindPose1.m[34]";
connectAttr "slug_Joint_L_Knee_Mid.msg" "bindPose1.m[35]";
connectAttr "slug_Joint_L_Ankle_Mid.msg" "bindPose1.m[36]";
connectAttr "slug_Joint_L_Leg_Front.msg" "bindPose1.m[37]";
connectAttr "slug_Joint_L_Knee_Front.msg" "bindPose1.m[38]";
connectAttr "slug_Joint_L_Ankle_Front.msg" "bindPose1.m[39]";
connectAttr "slug_Joint_R_Leg_Front.msg" "bindPose1.m[40]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back.msg" "bindPose1.m[41]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.msg" "bindPose1.m[42]"
		;
connectAttr "slug_Joint_R_Leg_Mid.msg" "bindPose1.m[43]";
connectAttr "slug_Joint_R_Knee_Mid.msg" "bindPose1.m[44]";
connectAttr "slug_Joint_R_Ankle_Mid.msg" "bindPose1.m[45]";
connectAttr "bindPose1.w" "bindPose1.p[0]";
connectAttr "bindPose1.m[0]" "bindPose1.p[1]";
connectAttr "bindPose1.m[1]" "bindPose1.p[2]";
connectAttr "bindPose1.m[2]" "bindPose1.p[3]";
connectAttr "bindPose1.m[3]" "bindPose1.p[4]";
connectAttr "bindPose1.m[4]" "bindPose1.p[5]";
connectAttr "bindPose1.m[5]" "bindPose1.p[6]";
connectAttr "bindPose1.m[6]" "bindPose1.p[7]";
connectAttr "bindPose1.m[7]" "bindPose1.p[8]";
connectAttr "bindPose1.m[6]" "bindPose1.p[10]";
connectAttr "bindPose1.m[10]" "bindPose1.p[11]";
connectAttr "bindPose1.m[11]" "bindPose1.p[12]";
connectAttr "bindPose1.m[12]" "bindPose1.p[13]";
connectAttr "bindPose1.m[13]" "bindPose1.p[14]";
connectAttr "bindPose1.m[6]" "bindPose1.p[16]";
connectAttr "bindPose1.m[16]" "bindPose1.p[17]";
connectAttr "bindPose1.m[17]" "bindPose1.p[18]";
connectAttr "bindPose1.m[18]" "bindPose1.p[19]";
connectAttr "bindPose1.m[19]" "bindPose1.p[20]";
connectAttr "bindPose1.m[1]" "bindPose1.p[22]";
connectAttr "bindPose1.m[22]" "bindPose1.p[23]";
connectAttr "bindPose1.m[23]" "bindPose1.p[24]";
connectAttr "bindPose1.m[24]" "bindPose1.p[25]";
connectAttr "bindPose1.m[22]" "bindPose1.p[26]";
connectAttr "bindPose1.m[26]" "bindPose1.p[27]";
connectAttr "bindPose1.m[27]" "bindPose1.p[28]";
connectAttr "bindPose1.m[22]" "bindPose1.p[30]";
connectAttr "bindPose1.m[30]" "bindPose1.p[31]";
connectAttr "bindPose1.m[31]" "bindPose1.p[32]";
connectAttr "bindPose1.m[2]" "bindPose1.p[34]";
connectAttr "bindPose1.m[34]" "bindPose1.p[35]";
connectAttr "bindPose1.m[35]" "bindPose1.p[36]";
connectAttr "bindPose1.m[3]" "bindPose1.p[37]";
connectAttr "bindPose1.m[37]" "bindPose1.p[38]";
connectAttr "bindPose1.m[38]" "bindPose1.p[39]";
connectAttr "bindPose1.m[3]" "bindPose1.p[40]";
connectAttr "bindPose1.m[40]" "bindPose1.p[41]";
connectAttr "bindPose1.m[41]" "bindPose1.p[42]";
connectAttr "bindPose1.m[2]" "bindPose1.p[43]";
connectAttr "bindPose1.m[43]" "bindPose1.p[44]";
connectAttr "bindPose1.m[44]" "bindPose1.p[45]";
connectAttr "slug_Joint_Root.bps" "bindPose1.wm[1]";
connectAttr "slug_Joint_Waist.bps" "bindPose1.wm[2]";
connectAttr "slug_Joint_Chest.bps" "bindPose1.wm[3]";
connectAttr "slug_Joint_Chest2.bps" "bindPose1.wm[4]";
connectAttr "slug_Joint_Chest3.bps" "bindPose1.wm[5]";
connectAttr "slug_Joint_Mid_Chest.bps" "bindPose1.wm[6]";
connectAttr "slug_Joint_Neck1.bps" "bindPose1.wm[7]";
connectAttr "slug_Joint_Head.bps" "bindPose1.wm[8]";
connectAttr "slug_Joint_L_Shoulder.bps" "bindPose1.wm[10]";
connectAttr "slug_Joint_L_Arm.bps" "bindPose1.wm[11]";
connectAttr "slug_Joint_L_Elbow.bps" "bindPose1.wm[12]";
connectAttr "slug_Joint_L_Forearm.bps" "bindPose1.wm[13]";
connectAttr "slug_Joint_L_Wrist.bps" "bindPose1.wm[14]";
connectAttr "slug_Joint_R_Shoulder.bps" "bindPose1.wm[16]";
connectAttr "slug_Joint_R_Arm.bps" "bindPose1.wm[17]";
connectAttr "slug_Joint_R_Elbow.bps" "bindPose1.wm[18]";
connectAttr "slug_Joint_R_Forearm.bps" "bindPose1.wm[19]";
connectAttr "slug_Joint_R_Wrist.bps" "bindPose1.wm[20]";
connectAttr "slug_Joint_Hip.bps" "bindPose1.wm[22]";
connectAttr "slug_Joint_Tail1.bps" "bindPose1.wm[23]";
connectAttr "slug_Joint_Tail2.bps" "bindPose1.wm[24]";
connectAttr "slug_Joint_Tail3.bps" "bindPose1.wm[25]";
connectAttr "slug_Joint_L_Leg_Back.bps" "bindPose1.wm[26]";
connectAttr "slug_Joint_L_Knee_Back.bps" "bindPose1.wm[27]";
connectAttr "slug_Joint_L_Ankle_Back.bps" "bindPose1.wm[28]";
connectAttr "slug_Joint_R_Leg_Back.bps" "bindPose1.wm[30]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.bps" "bindPose1.wm[31]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.bps" "bindPose1.wm[32]"
		;
connectAttr "slug_Joint_L_Leg_Mid.bps" "bindPose1.wm[34]";
connectAttr "slug_Joint_L_Knee_Mid.bps" "bindPose1.wm[35]";
connectAttr "slug_Joint_L_Ankle_Mid.bps" "bindPose1.wm[36]";
connectAttr "slug_Joint_L_Leg_Front.bps" "bindPose1.wm[37]";
connectAttr "slug_Joint_L_Knee_Front.bps" "bindPose1.wm[38]";
connectAttr "slug_Joint_L_Ankle_Front.bps" "bindPose1.wm[39]";
connectAttr "slug_Joint_R_Leg_Front.bps" "bindPose1.wm[40]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back.bps" "bindPose1.wm[41]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.bps" "bindPose1.wm[42]"
		;
connectAttr "slug_Joint_R_Leg_Mid.bps" "bindPose1.wm[43]";
connectAttr "slug_Joint_R_Knee_Mid.bps" "bindPose1.wm[44]";
connectAttr "slug_Joint_R_Ankle_Mid.bps" "bindPose1.wm[45]";
connectAttr "skinCluster2GroupParts.og" "skinCluster2.ip[0].ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2.ip[0].gi";
connectAttr "slug_Joint_Root.wm" "skinCluster2.ma[0]";
connectAttr "slug_Joint_Waist.wm" "skinCluster2.ma[1]";
connectAttr "slug_Joint_Chest.wm" "skinCluster2.ma[2]";
connectAttr "slug_Joint_Chest2.wm" "skinCluster2.ma[3]";
connectAttr "slug_Joint_Chest3.wm" "skinCluster2.ma[4]";
connectAttr "slug_Joint_Mid_Chest.wm" "skinCluster2.ma[5]";
connectAttr "slug_Joint_Neck1.wm" "skinCluster2.ma[6]";
connectAttr "slug_Joint_Head.wm" "skinCluster2.ma[7]";
connectAttr "slug_Joint_L_Shoulder.wm" "skinCluster2.ma[9]";
connectAttr "slug_Joint_L_Arm.wm" "skinCluster2.ma[10]";
connectAttr "slug_Joint_L_Elbow.wm" "skinCluster2.ma[11]";
connectAttr "slug_Joint_L_Wrist.wm" "skinCluster2.ma[13]";
connectAttr "slug_Joint_R_Shoulder.wm" "skinCluster2.ma[15]";
connectAttr "slug_Joint_R_Arm.wm" "skinCluster2.ma[16]";
connectAttr "slug_Joint_R_Elbow.wm" "skinCluster2.ma[17]";
connectAttr "slug_Joint_R_Wrist.wm" "skinCluster2.ma[19]";
connectAttr "slug_Joint_R_Leg_Front.wm" "skinCluster2.ma[21]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back.wm" "skinCluster2.ma[22]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.wm" "skinCluster2.ma[23]"
		;
connectAttr "slug_Joint_L_Leg_Front.wm" "skinCluster2.ma[25]";
connectAttr "slug_Joint_L_Knee_Front.wm" "skinCluster2.ma[26]";
connectAttr "slug_Joint_L_Ankle_Front.wm" "skinCluster2.ma[27]";
connectAttr "slug_Joint_L_Leg_Mid.wm" "skinCluster2.ma[29]";
connectAttr "slug_Joint_L_Knee_Mid.wm" "skinCluster2.ma[30]";
connectAttr "slug_Joint_L_Ankle_Mid.wm" "skinCluster2.ma[31]";
connectAttr "slug_Joint_R_Leg_Mid.wm" "skinCluster2.ma[33]";
connectAttr "slug_Joint_R_Knee_Mid.wm" "skinCluster2.ma[34]";
connectAttr "slug_Joint_R_Ankle_Mid.wm" "skinCluster2.ma[35]";
connectAttr "slug_Joint_Hip.wm" "skinCluster2.ma[37]";
connectAttr "slug_Joint_Tail1.wm" "skinCluster2.ma[38]";
connectAttr "slug_Joint_Tail2.wm" "skinCluster2.ma[39]";
connectAttr "slug_Joint_Tail3.wm" "skinCluster2.ma[40]";
connectAttr "slug_Joint_L_Leg_Back.wm" "skinCluster2.ma[41]";
connectAttr "slug_Joint_L_Knee_Back.wm" "skinCluster2.ma[42]";
connectAttr "slug_Joint_L_Ankle_Back.wm" "skinCluster2.ma[43]";
connectAttr "slug_Joint_R_Leg_Back.wm" "skinCluster2.ma[45]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.wm" "skinCluster2.ma[46]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.wm" "skinCluster2.ma[47]"
		;
connectAttr "slug_Joint_Root.liw" "skinCluster2.lw[0]";
connectAttr "slug_Joint_Waist.liw" "skinCluster2.lw[1]";
connectAttr "slug_Joint_Chest.liw" "skinCluster2.lw[2]";
connectAttr "slug_Joint_Chest2.liw" "skinCluster2.lw[3]";
connectAttr "slug_Joint_Chest3.liw" "skinCluster2.lw[4]";
connectAttr "slug_Joint_Mid_Chest.liw" "skinCluster2.lw[5]";
connectAttr "slug_Joint_Neck1.liw" "skinCluster2.lw[6]";
connectAttr "slug_Joint_Head.liw" "skinCluster2.lw[7]";
connectAttr "slug_Joint_L_Shoulder.liw" "skinCluster2.lw[9]";
connectAttr "slug_Joint_L_Arm.liw" "skinCluster2.lw[10]";
connectAttr "slug_Joint_L_Elbow.liw" "skinCluster2.lw[11]";
connectAttr "slug_Joint_L_Wrist.liw" "skinCluster2.lw[13]";
connectAttr "slug_Joint_R_Shoulder.liw" "skinCluster2.lw[15]";
connectAttr "slug_Joint_R_Arm.liw" "skinCluster2.lw[16]";
connectAttr "slug_Joint_R_Elbow.liw" "skinCluster2.lw[17]";
connectAttr "slug_Joint_R_Wrist.liw" "skinCluster2.lw[19]";
connectAttr "slug_Joint_R_Leg_Front.liw" "skinCluster2.lw[21]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back.liw" "skinCluster2.lw[22]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.liw" "skinCluster2.lw[23]"
		;
connectAttr "slug_Joint_L_Leg_Front.liw" "skinCluster2.lw[25]";
connectAttr "slug_Joint_L_Knee_Front.liw" "skinCluster2.lw[26]";
connectAttr "slug_Joint_L_Ankle_Front.liw" "skinCluster2.lw[27]";
connectAttr "slug_Joint_L_Leg_Mid.liw" "skinCluster2.lw[29]";
connectAttr "slug_Joint_L_Knee_Mid.liw" "skinCluster2.lw[30]";
connectAttr "slug_Joint_L_Ankle_Mid.liw" "skinCluster2.lw[31]";
connectAttr "slug_Joint_R_Leg_Mid.liw" "skinCluster2.lw[33]";
connectAttr "slug_Joint_R_Knee_Mid.liw" "skinCluster2.lw[34]";
connectAttr "slug_Joint_R_Ankle_Mid.liw" "skinCluster2.lw[35]";
connectAttr "slug_Joint_Hip.liw" "skinCluster2.lw[37]";
connectAttr "slug_Joint_Tail1.liw" "skinCluster2.lw[38]";
connectAttr "slug_Joint_Tail2.liw" "skinCluster2.lw[39]";
connectAttr "slug_Joint_Tail3.liw" "skinCluster2.lw[40]";
connectAttr "slug_Joint_L_Leg_Back.liw" "skinCluster2.lw[41]";
connectAttr "slug_Joint_L_Knee_Back.liw" "skinCluster2.lw[42]";
connectAttr "slug_Joint_L_Ankle_Back.liw" "skinCluster2.lw[43]";
connectAttr "slug_Joint_R_Leg_Back.liw" "skinCluster2.lw[45]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.liw" "skinCluster2.lw[46]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.liw" "skinCluster2.lw[47]"
		;
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "skinCluster2GroupId.msg" "skinCluster2Set.gn" -na;
connectAttr "slug_meshShape.iog.og[9]" "skinCluster2Set.dsm" -na;
connectAttr "skinCluster2.msg" "skinCluster2Set.ub[0]";
connectAttr "tweak1.og[0]" "skinCluster2GroupParts.ig";
connectAttr "skinCluster2GroupId.id" "skinCluster2GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "slug_meshShape.iog.og[10]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "slug_meshShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "slug_Joint_Root.msg" "bindPose2.m[1]";
connectAttr "slug_Joint_Waist.msg" "bindPose2.m[2]";
connectAttr "slug_Joint_Chest.msg" "bindPose2.m[3]";
connectAttr "slug_Joint_Chest2.msg" "bindPose2.m[4]";
connectAttr "slug_Joint_Chest3.msg" "bindPose2.m[5]";
connectAttr "slug_Joint_Mid_Chest.msg" "bindPose2.m[6]";
connectAttr "slug_Joint_Neck1.msg" "bindPose2.m[7]";
connectAttr "slug_Joint_Head.msg" "bindPose2.m[8]";
connectAttr "slug_Joint_L_Shoulder.msg" "bindPose2.m[10]";
connectAttr "slug_Joint_L_Arm.msg" "bindPose2.m[11]";
connectAttr "slug_Joint_L_Elbow.msg" "bindPose2.m[12]";
connectAttr "slug_Joint_L_Forearm.msg" "bindPose2.m[13]";
connectAttr "slug_Joint_L_Wrist.msg" "bindPose2.m[14]";
connectAttr "slug_Joint_R_Shoulder.msg" "bindPose2.m[16]";
connectAttr "slug_Joint_R_Arm.msg" "bindPose2.m[17]";
connectAttr "slug_Joint_R_Elbow.msg" "bindPose2.m[18]";
connectAttr "slug_Joint_R_Forearm.msg" "bindPose2.m[19]";
connectAttr "slug_Joint_R_Wrist.msg" "bindPose2.m[20]";
connectAttr "slug_Joint_R_Leg_Front.msg" "bindPose2.m[22]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back.msg" "bindPose2.m[23]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Waist|slug_Joint_Chest|slug_Joint_R_Leg_Front|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.msg" "bindPose2.m[24]"
		;
connectAttr "slug_Joint_L_Leg_Front.msg" "bindPose2.m[26]";
connectAttr "slug_Joint_L_Knee_Front.msg" "bindPose2.m[27]";
connectAttr "slug_Joint_L_Ankle_Front.msg" "bindPose2.m[28]";
connectAttr "slug_Joint_L_Leg_Mid.msg" "bindPose2.m[30]";
connectAttr "slug_Joint_L_Knee_Mid.msg" "bindPose2.m[31]";
connectAttr "slug_Joint_L_Ankle_Mid.msg" "bindPose2.m[32]";
connectAttr "slug_Joint_R_Leg_Mid.msg" "bindPose2.m[34]";
connectAttr "slug_Joint_R_Knee_Mid.msg" "bindPose2.m[35]";
connectAttr "slug_Joint_R_Ankle_Mid.msg" "bindPose2.m[36]";
connectAttr "slug_Joint_Hip.msg" "bindPose2.m[38]";
connectAttr "slug_Joint_Tail1.msg" "bindPose2.m[39]";
connectAttr "slug_Joint_Tail2.msg" "bindPose2.m[40]";
connectAttr "slug_Joint_Tail3.msg" "bindPose2.m[41]";
connectAttr "slug_Joint_L_Leg_Back.msg" "bindPose2.m[42]";
connectAttr "slug_Joint_L_Knee_Back.msg" "bindPose2.m[43]";
connectAttr "slug_Joint_L_Ankle_Back.msg" "bindPose2.m[44]";
connectAttr "slug_Joint_R_Leg_Back.msg" "bindPose2.m[46]";
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back.msg" "bindPose2.m[47]"
		;
connectAttr "|slug_skeleton|slug_Joint_Root|slug_Joint_Hip|slug_Joint_R_Leg_Back|slug_Joint_R_Knee_Back|slug_Joint_R_Ankle_Back.msg" "bindPose2.m[48]"
		;
connectAttr "bindPose2.w" "bindPose2.p[0]";
connectAttr "bindPose2.m[0]" "bindPose2.p[1]";
connectAttr "bindPose2.m[1]" "bindPose2.p[2]";
connectAttr "bindPose2.m[2]" "bindPose2.p[3]";
connectAttr "bindPose2.m[3]" "bindPose2.p[4]";
connectAttr "bindPose2.m[4]" "bindPose2.p[5]";
connectAttr "bindPose2.m[5]" "bindPose2.p[6]";
connectAttr "bindPose2.m[6]" "bindPose2.p[7]";
connectAttr "bindPose2.m[7]" "bindPose2.p[8]";
connectAttr "bindPose2.m[6]" "bindPose2.p[10]";
connectAttr "bindPose2.m[10]" "bindPose2.p[11]";
connectAttr "bindPose2.m[11]" "bindPose2.p[12]";
connectAttr "bindPose2.m[12]" "bindPose2.p[13]";
connectAttr "bindPose2.m[13]" "bindPose2.p[14]";
connectAttr "bindPose2.m[6]" "bindPose2.p[16]";
connectAttr "bindPose2.m[16]" "bindPose2.p[17]";
connectAttr "bindPose2.m[17]" "bindPose2.p[18]";
connectAttr "bindPose2.m[18]" "bindPose2.p[19]";
connectAttr "bindPose2.m[19]" "bindPose2.p[20]";
connectAttr "bindPose2.m[3]" "bindPose2.p[22]";
connectAttr "bindPose2.m[22]" "bindPose2.p[23]";
connectAttr "bindPose2.m[23]" "bindPose2.p[24]";
connectAttr "bindPose2.m[3]" "bindPose2.p[26]";
connectAttr "bindPose2.m[26]" "bindPose2.p[27]";
connectAttr "bindPose2.m[27]" "bindPose2.p[28]";
connectAttr "bindPose2.m[2]" "bindPose2.p[30]";
connectAttr "bindPose2.m[30]" "bindPose2.p[31]";
connectAttr "bindPose2.m[31]" "bindPose2.p[32]";
connectAttr "bindPose2.m[2]" "bindPose2.p[34]";
connectAttr "bindPose2.m[34]" "bindPose2.p[35]";
connectAttr "bindPose2.m[35]" "bindPose2.p[36]";
connectAttr "bindPose2.m[1]" "bindPose2.p[38]";
connectAttr "bindPose2.m[38]" "bindPose2.p[39]";
connectAttr "bindPose2.m[39]" "bindPose2.p[40]";
connectAttr "bindPose2.m[40]" "bindPose2.p[41]";
connectAttr "bindPose2.m[38]" "bindPose2.p[42]";
connectAttr "bindPose2.m[42]" "bindPose2.p[43]";
connectAttr "bindPose2.m[43]" "bindPose2.p[44]";
connectAttr "bindPose2.m[38]" "bindPose2.p[46]";
connectAttr "bindPose2.m[46]" "bindPose2.p[47]";
connectAttr "bindPose2.m[47]" "bindPose2.p[48]";
connectAttr "place2dTexture2.c" "slug_file.c";
connectAttr "place2dTexture2.tf" "slug_file.tf";
connectAttr "place2dTexture2.rf" "slug_file.rf";
connectAttr "place2dTexture2.mu" "slug_file.mu";
connectAttr "place2dTexture2.mv" "slug_file.mv";
connectAttr "place2dTexture2.s" "slug_file.s";
connectAttr "place2dTexture2.wu" "slug_file.wu";
connectAttr "place2dTexture2.wv" "slug_file.wv";
connectAttr "place2dTexture2.re" "slug_file.re";
connectAttr "place2dTexture2.of" "slug_file.of";
connectAttr "place2dTexture2.r" "slug_file.ro";
connectAttr "place2dTexture2.n" "slug_file.n";
connectAttr "place2dTexture2.vt1" "slug_file.vt1";
connectAttr "place2dTexture2.vt2" "slug_file.vt2";
connectAttr "place2dTexture2.vt3" "slug_file.vt3";
connectAttr "place2dTexture2.vc1" "slug_file.vc1";
connectAttr "place2dTexture2.o" "slug_file.uv";
connectAttr "place2dTexture2.ofs" "slug_file.fs";
connectAttr "slug_Const_Joint_L_Wrist_IK.IK_Blend" "Cube_L_Arm_visibility.i";
connectAttr "slug_shader.pa" ":renderPartition.st" -na;
connectAttr "slug_material.msg" ":defaultShaderList1.s" -na;
connectAttr "Tail_Reverse_Node.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_FK_MUltiply_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_IK_MUltiply_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "L_reverse_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_FK_MUltiply_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_IK_MUltiply_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "R_reverse_UTL.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "slug_file.msg" ":defaultTextureList1.tx" -na;
connectAttr "ikSCsolver.msg" ":ikSystem.sol" -na;
connectAttr "ikRPsolver.msg" ":ikSystem.sol" -na;
// End of slug_animations.ma
