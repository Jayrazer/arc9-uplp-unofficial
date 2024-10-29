// Created by Crowbar 0.74

$modelname "weapons\arc9\c_uplp_m249.mdl"

$bodygroup "studio"
{
	studio "c_lowpolym249.smd"
}
$bodygroup "1"
{
	blank
	studio "defhs.smd"
	studio "modhs.smd"
}
$bodygroup "2"
{
	studio "ststock.smd"
	studio "buffer.smd"
	studio "buffertube.smd"
}
$bodygroup "3"
{
	studio "stbar.smd"
	studio "commandobar.smd"
	studio "sawbar.smd"
	studio "redbar.smd"
}
$bodygroup "4"
{
	studio "100box.smd"
	studio "defbox.smd"
	studio "30mag.smd"
	studio "60mag.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\arc9\uplp"

$texturegroup "skinfamilies"
{
	{ "LightBlackWire" "2GreenMag" "DarkTan" }
	{ "Wireframe"      "2GreenMag" "DarkTan" }
	{ "LightBlackWire" "Black"     "Black"   }
}

$attachment "1" "barrel" 0 0 0 rotate -90 0 0
$attachment "2" "brass" 0 0 -1 rotate -10 -180 -180
$attachment "3" "camera" 0 0 0 rotate 0 0 0

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


$sectionframes 30 120

$poseparameter "sights" 0 1 loop 0

$sequence "exp" {
	"c_uplp_m249_anims\exp.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "idle" {
	"c_uplp_m249_anims\idle.smd"
	"c_uplp_m249_anims\idle_2.smd"
	activity "ACT_VM_IDLE" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	node "Ready"
	snap
	fps 60
	loop
}

$sequence "idle_empty" {
	"c_uplp_m249_anims\idle_empty.smd"
	"c_uplp_m249_anims\idle_empty_2.smd"
	activity "ACT_VM_IDLE" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	node "Ready"
	snap
	fps 60
	loop
}

$sequence "fire" {
	"c_uplp_m249_anims\fire.smd"
	"c_uplp_m249_anims\fire_2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.03
	fadeout 0.03
	fps 60
}

$sequence "fire_empty" {
	"c_uplp_m249_anims\fire_empty.smd"
	"c_uplp_m249_anims\fire_empty_2.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.03
	fadeout 0.03
	fps 60
}

$sequence "ready" {
	"c_uplp_m249_anims\ready.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "draw" {
	"anims\draw_new.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "holster" {
	"anims\holster.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "reload" {
	"c_uplp_m249_anims\reload.smd"
	"c_uplp_m249_anims\reload_2.smd"
	activity "ACT_VM_RELOAD" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "reload_empty" {
	"c_uplp_m249_anims\reload_empty.smd"
	"c_uplp_m249_anims\reload_empty_2.smd"
	activity "ACT_VM_RELOAD" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "reload_100" {
	"c_uplp_m249_anims\reload_100.smd"
	"c_uplp_m249_anims\reload_100_2.smd"
	activity "ACT_VM_RELOAD" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "reload_empty_100" {
	"c_uplp_m249_anims\reload_empty_100.smd"
	"c_uplp_m249_anims\reload_empty_100_2.smd"
	activity "ACT_VM_RELOAD" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "reload_30" {
	"c_uplp_m249_anims\reload_30.smd"
	"c_uplp_m249_anims\reload_30_2.smd"
	activity "ACT_VM_RELOAD" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "reload_empty_30" {
	"c_uplp_m249_anims\reload_empty_30.smd"
	"c_uplp_m249_anims\reload_empty_30_2.smd"
	activity "ACT_VM_RELOAD" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "enter_inspect" {
	"c_uplp_m249_anims\enter_inspect.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "idle_inspect" {
	"c_uplp_m249_anims\idle_inspect.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit_inspect" {
	"c_uplp_m249_anims\exit_inspect.smd"
	"c_uplp_m249_anims\exit_inspect_2.smd"
	activity "ACT_VM_IDLE" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "enter_inspect_empty" {
	"c_uplp_m249_anims\enter_inspect_empty.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "idle_inspect_empty" {
	"c_uplp_m249_anims\idle_inspect_empty.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit_inspect_empty" {
	"c_uplp_m249_anims\exit_inspect_empty.smd"
	"c_uplp_m249_anims\exit_inspect_empty_2.smd"
	activity "ACT_VM_IDLE" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "enter_inspect_100" {
	"c_uplp_m249_anims\enter_inspect_100.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "idle_inspect_100" {
	"c_uplp_m249_anims\idle_inspect_100.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit_inspect_100" {
	"c_uplp_m249_anims\exit_inspect_100.smd"
	"c_uplp_m249_anims\exit_inspect_100_2.smd"
	activity "ACT_VM_IDLE" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "enter_inspect_empty_100" {
	"c_uplp_m249_anims\enter_inspect_empty_100.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "idle_inspect_empty_100" {
	"c_uplp_m249_anims\idle_inspect_empty_100.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit_inspect_empty_100" {
	"c_uplp_m249_anims\exit_inspect_empty_100.smd"
	"c_uplp_m249_anims\exit_inspect_empty_100_2.smd"
	activity "ACT_VM_IDLE" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "enter_inspect_30" {
	"c_uplp_m249_anims\enter_inspect_30.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "idle_inspect_30" {
	"c_uplp_m249_anims\idle_inspect_30.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit_inspect_30" {
	"c_uplp_m249_anims\exit_inspect_30.smd"
	"c_uplp_m249_anims\exit_inspect_30_2.smd"
	activity "ACT_VM_IDLE" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "enter_inspect_empty_30" {
	"c_uplp_m249_anims\enter_inspect_empty_30.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "idle_inspect_empty_30" {
	"c_uplp_m249_anims\idle_inspect_empty_30.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}

$sequence "exit_inspect_empty_30" {
	"c_uplp_m249_anims\exit_inspect_empty_30.smd"
	"c_uplp_m249_anims\exit_inspect_empty_30_2.smd"
	activity "ACT_VM_IDLE" 1
	blend "sights" 0 1
	blendwidth 2
	fadein 0.2
	fadeout 0.2
	snap
	fps 60
}
