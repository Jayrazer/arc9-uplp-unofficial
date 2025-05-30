// Created by Crowbar 0.74

$modelname "weapons/arc9/uplp_unofficial/magazines/panzerfaust.mdl"

$bodygroup "body"
{
	studio "panzerfaust_spenttube.smd"
	blank
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\arc9\uplp\"
$cdmaterials "effects\arc9\"

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$sequence "idle" {
	"panzerfaust_spenttube.smd"
}

$collisionmodel "panzerfaust_spenttube.smd"
{
	$mass 80
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
