// Created by Crowbar 0.74

$modelname "weapons/arc9/uplp_unofficial/panzerfaust.mdl"

$bodygroup "body"
{
	studio "panzerfaust_body.smd"
	blank
}
$bodygroup "hellobiden"
{
	studio "panzerfaust_warhead.smd"
	studio "panzerfaust_warhead_bunker.smd"
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\arc9\uplp\"
$cdmaterials "effects\arc9\"

$attachment "1" "pzr_body" 0 4 12 rotate -90 0 0
$attachment "2" "pzr_body" 0 0 0 rotate -90 0 0
$attachment "3" "camera" 0 0 0 rotate -90 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$bonemerge "ValveBiped.Bip01_Spine4"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Wrist"


$sequence "idle" {
	"panzerfaust_anims\idle.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
	loop
}

$sequence "reload" {
	"panzerfaust_anims\reload.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"panzerfaust_anims\fire.smd"
	fadein 0
	fadeout 0.2
	snap
	fps 30
}

$sequence "draw" {
	"panzerfaust_anims\draw.smd"
	fadein 0
	fadeout 0.2
	snap
	fps 30
}

$sequence "holster" {
	"panzerfaust_anims\holster.smd"
	fadein 0.1
	fadeout 0.2
	fps 30
}

$sequence "inspect" {
	"panzerfaust_anims\inspect.smd"
	fadein 0.1
	fadeout 0.1
	fps 30
}

$collisionmodel "panzerfaust_physics.smd"
{
	$mass 800
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
