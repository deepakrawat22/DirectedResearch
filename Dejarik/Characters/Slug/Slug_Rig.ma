//Maya ASCII 7.0 scene
//Name: slug_rig.ma
//Last modified: Sat, Oct 09, 2010 06:54:02 PM
requires maya "7.0";
currentUnit -l foot -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya Unlimited 7.0";
fileInfo "version" "7.0.1";
fileInfo "cutIdentifier" "200511200915-660870";
fileInfo "osv" "Professional  (Build 7600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.6653562324401143 4.5839013203895886 8.0407759778761996 ;
	setAttr ".r" -type "double3" -12.374437667919345 45.400000000342786 -2.1629399087986396e-013 ;
	setAttr ".rp" -type "double3" -2.9139711932418806e-017 -2.3311769545935046e-015 
		3.7298831273496072e-015 ;
	setAttr ".rpt" -type "double3" -6.259504886715094e-015 1.5350414789414016e-015 -5.4315012028512657e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".ncp" 0.0032808398950131233;
	setAttr ".coi" 12.459457252944848;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 58.333996567750418 -15.374902653151807 ;
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
	setAttr ".lr" -type "double3" 0 -18.000000000000004 0 ;
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
	setAttr ".lr" -type "double3" 0 -18.000000000000004 0 ;
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
	setAttr ".lr" -type "double3" 0 -48.716213850000003 0 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_L_Arm_IK" -p "slug_Joint_L_Shoulder_FK";
	setAttr ".t" -type "double3" 0.18678507263273222 -0.0013139613630145249 0.00828652805502046 ;
	setAttr ".r" -type "double3" -5.6051791914069655 0.059207119157364485 -0.0028983938693025106 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Elbow_IK" -p "slug_Joint_L_Arm_IK";
	setAttr ".t" -type "double3" 0.40923981431746864 9.3247078183740181e-016 -0.045744999999998523 ;
	setAttr ".r" -type "double3" -4.2885737349273912e-015 -4.0535482067557932e-013 -3.8366053535225548e-014 ;
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
	setAttr ".lr" -type "double3" 5.6051791914069682 -0.05920711915736817 -0.0028983938692276568 ;
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
	setAttr ".lr" -type "double3" 0 18.000000000000004 0 ;
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
	setAttr ".lr" -type "double3" 0 18.000000000000004 0 ;
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
	setAttr ".lr" -type "double3" 5.1690563550971258e-014 52.741418409999994 4.0713854373892709e-014 ;
	setAttr ".rsrr" -type "double3" 1.2722218725854067e-014 6.6208594470752379e-032 
		-5.9635400277440939e-016 ;
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Arm_IK" -p "slug_Joint_R_Shoulder_FK";
	setAttr ".t" -type "double3" -0.18678507263273222 -0.0013139613630145249 0.0082865280550209249 ;
	setAttr ".r" -type "double3" -5.605178780069294 -0.059207114826306202 0.0028983934442380834 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Elbow_IK" -p "slug_Joint_R_Arm_IK";
	setAttr ".t" -type "double3" -0.40923981431746864 6.9935308637805131e-016 -0.045744999999998988 ;
	setAttr ".r" -type "double3" -3.8987045182510457e-015 3.6850448856500131e-013 3.4878240531818279e-014 ;
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
	setAttr ".lr" -type "double3" 5.6051787800692994 0.059207114826309373 0.0028983934441731379 ;
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
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_Tail2_IK" -p "slug_Joint_Tail1_IK";
	setAttr ".t" -type "double3" 0 0.0052319500125999957 -1.0121749517765994 ;
	setAttr ".r" -type "double3" -5.8940516167876436e-014 0 0 ;
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
	setAttr ".lr" -type "double3" 0.12262594870000003 0.11320878840000002 0.12092894480000003 ;
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
	setAttr ".r" -type "double3" 0.91918995028206307 -0.52316982331515482 0.0097855754070605497 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Knee_IK" -p "slug_Joint_L_Leg_IK";
	setAttr ".t" -type "double3" 0.49309368144501975 -0.10801943036269625 -0.015824369762944098 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_L_Ankle_IK" -p "slug_Joint_L_Knee_IK";
	setAttr ".t" -type "double3" 0.23409498007995977 -0.30578196063944568 0.026885237046158347 ;
	setAttr ".r" -type "double3" -0.91931760561686426 0.52294570565093257 -0.018177756934284917 ;
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
	setAttr ".r" -type "double3" 0.91919030775743493 0.52317002680624902 -0.0097855775806481946 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Knee_IK" -p "slug_Joint_R_Leg_IK";
	setAttr ".t" -type "double3" -0.49309368144501953 -0.10801943036269625 -0.015824369762943862 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode joint -n "slug_Joint_R_Ankle_IK" -p "slug_Joint_R_Knee_IK";
	setAttr ".t" -type "double3" -0.23409498007995999 -0.30578196063944579 0.026885237046158115 ;
	setAttr ".r" -type "double3" -0.91931791728829104 -0.5229455002348764 0.018177758308511982 ;
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
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr -av ".rz";
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
	setAttr -av ".ry";
	setAttr -av ".rx";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".rz";
	setAttr -av ".ry";
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
	setAttr ".r" -type "double3" 0 18 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".r" -type "double3" 0 18 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 52.741418410000001 0 ;
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".r" -type "double3" 0 -18 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".r" -type "double3" 0 -18 0 ;
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr ".r" -type "double3" 0 -48.716213850000003 0 ;
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".r" -type "double3" 0.1226259487 0.1132087884 0.12092894480000001 ;
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.8298000000000001 1.8298000000000001 1.8298000000000001 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.6318340625634165 2.0280776154508229 1.4748698938406766 ;
	setAttr ".sp" -type "double3" -1.6318340625634165 2.0280776154508229 1.4748698938406766 ;
	setAttr -k on ".IK_Blend" 1;
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
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr ".s" -type "double3" 1.8298000000000001 1.8298000000000001 1.8298000000000001 ;
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 1.6318340625634162 2.0280776154508224 1.4748698938406761 ;
	setAttr ".sp" -type "double3" 1.6318340625634162 2.0280776154508224 1.4748698938406761 ;
	setAttr -k on ".IK_Blend" 1;
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
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" -1.1097449442742402 0.39528222749574954 -1.1806615530586544 ;
	setAttr ".sp" -type "double3" -1.1097449442742402 0.39528222749574954 -1.1806615530586544 ;
	setAttr -k on ".IK_Blend" 1;
	setAttr -av -k on ".Toe";
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
	setAttr ".t" -type "double3" 0 0.73235366889999998 -0.63312379210000003 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
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
	setAttr -k on ".IK_Blend" 1;
	setAttr -av -k on ".Toe";
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
	setAttr ".t" -type "double3" 0 0.73235366889999998 -0.63312379210000003 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
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
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0.78959488837861502 -3.7140250880350738 ;
	setAttr ".sp" -type "double3" 0 0.78959488837861502 -3.7140250880350862 ;
	setAttr -k on ".IK_Blend" 1;
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
	setAttr ".t" -type "double3" 0 1.165588477e-016 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".t" -type "double3" 0 1.165588477e-016 0 ;
	setAttr -av ".tx";
	setAttr -av ".ty";
	setAttr -av ".tz";
	setAttr -av ".rx";
	setAttr -av ".ry";
	setAttr -av ".rz";
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
	setAttr ".lr" -type "double3" 0 -18.000000000000007 0 ;
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
	setAttr ".lr" -type "double3" 0 -18.000000000000007 0 ;
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
	setAttr ".lr" -type "double3" 0 -48.716213850000003 0 ;
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
	setAttr ".lr" -type "double3" 2.981770013872047e-016 0 0 ;
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
	setAttr ".lr" -type "double3" 0 18.000000000000007 0 ;
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
	setAttr ".lr" -type "double3" 0 18.000000000000007 0 ;
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
	setAttr ".lr" -type "double3" -5.5968430110766057e-015 52.741418410000009 -1.4434935927225568e-015 ;
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
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_R_Leg_Front" -p "slug_Joint_Chest";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 3;
	setAttr ".t" -type "double3" -0.38255628274926057 -0.0091303896076049169 -0.016522416160940852 ;
	setAttr ".r" -type "double3" 2.6837463222040684e-006 2.7271919113784983e-006 -4.1042519304609904e-008 ;
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
	setAttr ".r" -type "double3" 5.5715005957005899e-014 -5.3255218236101356e-014 -5.3388676153585456e-013 ;
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
	setAttr ".r" -type "double3" -5.1375168283583685e-014 3.0564133186864441e-015 -4.1072655654313686e-013 ;
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
	setAttr ".r" -type "double3" -0.047381363427657745 -0.04745211341773279 -0.053040531383806634 ;
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
	setAttr ".r" -type "double3" 0.013758101293962405 0.013150688478605902 0.13183644188038271 ;
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
	setAttr ".r" -type "double3" -0.012686434419218044 -0.00075474180272226796 0.10142361957928805 ;
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
	setAttr -k on ".w0";
createNode joint -n "slug_Joint_L_Leg_Mid" -p "slug_Joint_Waist";
	addAttr -ci true -k true -sn "blendParent1" -ln "blendParent1" -bt "aDBL" -dv 1 
		-smn 0 -smx 1 -at "double";
	addAttr -ci true -sn "liw" -ln "lockInfluenceWeights" -bt "lock" -min 0 -max 1 -at "bool";
	setAttr ".uoc" yes;
	setAttr ".oc" 2;
	setAttr ".t" -type "double3" 0.38255628274926062 -0.013132654788263981 0.030469351901841305 ;
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
	setAttr ".r" -type "double3" 3.8813624668976345e-006 3.9441955600118511e-006 -5.93576159027268e-008 ;
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
	setAttr ".r" -type "double3" -8.7647104131100284e-016 1.1548846745798644e-015 1.9427778316782651e-014 ;
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
	setAttr ".r" -type "double3" 2.4277034387010307e-016 2.9677532415095199e-018 1.6071786893792701e-014 ;
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
	setAttr ".lr" -type "double3" 0.12262594870000004 0.11320878840000005 0.12092894480000005 ;
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
	setAttr ".lr" -type "double3" 0.12262594870000004 0.11320878840000005 0.12092894480000005 ;
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
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 10 -ast 0 -aet 10 ";
	setAttr ".st" 6;
createNode script -n "MoveLister";
	addAttr -ci true -sn "totalMoves" -ln "totalMoves" -at "long";
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
createNode animCurveUU -n "Cube_L_Arm_visibility";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 0.10000000149011612 1;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 152;
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
connectAttr "Layer_Control.di" "slug_Cube_Root.do";
connectAttr "Layer_Control.di" "curveShape40.do";
connectAttr "Layer_Control.di" "slug_Cube_Waist.do";
connectAttr "Layer_Control.di" "curveShape41.do";
connectAttr "Layer_Control.di" "slug_Cube_Chest.do";
connectAttr "Layer_Control.di" "curveShape42.do";
connectAttr "Layer_Control.di" "slug_Cube_Chest2.do";
connectAttr "Layer_Control.di" "curveShape43.do";
connectAttr "Layer_Control.di" "slug_Cube_Chest3.do";
connectAttr "Layer_Control.di" "curveShape44.do";
connectAttr "Layer_Control.di" "slug_Cube_Mid_Chest.do";
connectAttr "Layer_Control.di" "curveShape45.do";
connectAttr "Layer_Control.di" "slug_Cube_Neck1.do";
connectAttr "Layer_Control.di" "curveShape46.do";
connectAttr "Layer_Control.di" "slug_Cube_Head.do";
connectAttr "Layer_Control.di" "curveShape47.do";
connectAttr "Layer_Control.di" "slug_Cube_R_Shoulder.do";
connectAttr "Cube_R_Arm_visibility.o" "slug_Cube_R_Arm.v" -l on;
connectAttr "Layer_Control.di" "slug_Cube_R_Arm.do";
connectAttr "Layer_Control.di" "curveShape54.do";
connectAttr "Layer_Control.di" "slug_Cube_R_Elbow.do";
connectAttr "Layer_Control.di" "curveShape55.do";
connectAttr "Layer_Control.di" "slug_Cube_R_Hand.do";
connectAttr "Layer_Control.di" "curveShape56.do";
connectAttr "Layer_Control.di" "slug_Cube_L_Shoulder.do";
connectAttr "Cube_L_Arm_visibility.o" "slug_Cube_L_Arm.v" -l on;
connectAttr "Layer_Control.di" "slug_Cube_L_Arm.do";
connectAttr "Layer_Control.di" "curveShape48.do";
connectAttr "Layer_Control.di" "slug_Cube_L_Elbow.do";
connectAttr "Layer_Control.di" "curveShape49.do";
connectAttr "Layer_Control.di" "slug_Cube_L_Hand.do";
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
connectAttr "Layer_Control.di" "slug_Cube_R_Leg.do";
connectAttr "Layer_Control.di" "curveShape60.do";
connectAttr "Cube_R_Knee_visibility.o" "slug_Cube_R_Knee.v" -l on;
connectAttr "Layer_Control.di" "slug_Cube_R_Knee.do";
connectAttr "Layer_Control.di" "curveShape61.do";
connectAttr "Cube_R_Ankle_visibility.o" "slug_Cube_R_Ankle.v" -l on;
connectAttr "Layer_Control.di" "slug_Cube_R_Ankle.do";
connectAttr "Layer_Control.di" "curveShape62.do";
connectAttr "Layer_Control.di" "slug_Cube_Hip.do";
connectAttr "Layer_Control.di" "curveShape65.do";
connectAttr "Cube_Tail1_visibility.o" "slug_Cube_Tail1.v" -l on;
connectAttr "Layer_Control.di" "slug_Cube_Tail1.do";
connectAttr "Layer_Control.di" "curveShape50.do";
connectAttr "Layer_Control.di" "slug_Cube_Tail2.do";
connectAttr "Layer_Control.di" "curveShape51.do";
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
connectAttr "R_IK.di" "slug_Const_Joint_R_Wrist_IK.do";
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
connectAttr "L_IK.di" "slug_Const_Joint_L_Wrist_IK.do";
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
connectAttr "R_IK.di" "slug_Const_Joint_R_Ankle_IK.do";
connectAttr "R_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_R_Ankle_IK|curveShape34.do"
		;
connectAttr "R_IK.di" "slug_Pole_Joint_R_Ankle_IK.do";
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
connectAttr "L_IK.di" "slug_Const_Joint_L_Ankle_IK.do";
connectAttr "L_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_L_Ankle_IK|curveShape33.do"
		;
connectAttr "L_IK.di" "slug_Pole_Joint_L_Ankle_IK.do";
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
connectAttr "M_IK.di" "slug_Tail_IK_CNTRL.do";
connectAttr "M_IK.di" "curveShape68.do";
connectAttr "slug_Joint_Tail1_IK.msg" "slug_Tail_IK_HANDLE.hsj";
connectAttr "slug_effector5.hp" "slug_Tail_IK_HANDLE.hee";
connectAttr "ikRPsolver.msg" "slug_Tail_IK_HANDLE.hsv";
connectAttr "M_IK.di" "slug_Tail_IK_HANDLE.do";
connectAttr "R_IK.di" "slug_Const_Joint_R_Middle_Ankle_IK.do";
connectAttr "R_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_R_Middle_Ankle_IK|curveShape34.do"
		;
connectAttr "L_IK.di" "slug_Const_Joint_L_Middle_Ankle_IK.do";
connectAttr "L_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_L_Middle_Ankle_IK|curveShape33.do"
		;
connectAttr "L_IK.di" "slug_Const_Joint_L_Front_Ankle_IK.do";
connectAttr "L_IK.di" "|slug_control|slug_Const_Character|slug_Const_Joint_L_Front_Ankle_IK|curveShape33.do"
		;
connectAttr "R_IK.di" "slug_Const_Joint_R_Front_Ankle_IK.do";
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
// End of slug_rig.ma
