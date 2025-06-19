// Created by Crowbar 0.74

$modelname "weapons\arc9\magazines\uplp_m249_100.mdl"

$bodygroup "studio"
{
	studio "100box_dropped.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\arc9\uplp"

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$sectionframes 30 120

$sequence "idle" {
	"100box_dropped.smd"
}

$collisionmodel "100box_dropped.smd" {
	
	$mass 13.0

}