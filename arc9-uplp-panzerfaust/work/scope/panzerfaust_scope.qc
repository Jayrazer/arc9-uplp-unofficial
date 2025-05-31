// Created by Crowbar 0.74

$modelname "weapons/arc9/uplp_unofficial/attachments/panzerfaust_scope.mdl"

$bodygroup "body"
{
	studio "scop.smd"
	blank
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\arc9\uplp\"
$cdmaterials "effects\arc9\"

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$definebone "pzr_body" "" 0 -28.860395 -10.866986 0 0 89.999982 0 0 0 0 0 0


$sequence "idle" {
	"panzerfaust_scope_anims\idle.smd"
	fadein 0
	fadeout 0.2
	fps 30
	loop
}
