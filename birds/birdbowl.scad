// Bird cage water/food feeder bowl for standard door mounting
// Copyright 2011 OhmEye, James Paul
// Licensed GPLv3


$WIDTH=81.5; // width of cage door
$HEIGHT=26; // bowl height
$MOAT=26; // moat height
$LENGTH=70; // bowl 1 length
$THICK=1.4; // wall thickness use perimeters .52mm
$FLANGE=0; // width of flange tabs
$FACES=64; // cylinder 
$SPACE=-3; // space between bowls
$LIP=15;


// flange
translate([0,2,0])rotate([0,0,0])cube([$WIDTH+$FLANGE,$THICK,$HEIGHT]);

// lip
translate([0,-9,$HEIGHT-$THICK*1.6])cube([$WIDTH+$FLANGE,13,$THICK*2]);
translate([-5,0-$LIP,$HEIGHT-$THICK*1.6])cube([$WIDTH+$FLANGE+10,$LIP,$THICK*2]);


// water bowl
difference(){
union(){
	translate([$WIDTH/2+$FLANGE/2,$LENGTH/1.5,0])cylinder(r=$WIDTH/2,h=$MOAT,$fn=$FACES);
	translate([$FLANGE/2,0,0])cube([$WIDTH,$LENGTH/1.5,$MOAT]);
}
	translate([$WIDTH/2+$FLANGE/2,$LENGTH/1.5,$THICK])cylinder(r=$WIDTH/2-$THICK,h=$HEIGHT,$fn=$FACES);
	translate([$FLANGE/2+$THICK,0,$THICK])cube([$WIDTH-$THICK*2,$LENGTH/1.5-$THICK,$HEIGHT]);

	// bevel
	translate([0,-18,0])rotate([0,0,0])cube([$WIDTH+20+$FLANGE,$THICK+20,$HEIGHT+20]);
}



