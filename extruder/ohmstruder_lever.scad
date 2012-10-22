// FFF extruder using geared stepper motor http://www.2engineers.com/shop/motor-1/
// Designed by OhmEye (github.com/OhmEye)
// uses blddk hobb, 605zz bearing, 2x3/8" corner brace from Ace hardware, and some fasteners.
// Copyright 2012 OhmEye, James L Paul
// Licensed GPLv3

module lever(){

$HEIGHT=11;
$THICK=12;

difference(){

hull(){
translate([0,0,$HEIGHT])cube([1,$THICK,1]);
translate([1,0,0])cube([1,$THICK,1]);
translate([44,0,0.7])cube([1,$THICK,7+$HEIGHT]);
translate([44,0,0])cube([1,$THICK,1]);
}

hull(){
translate([-0.1,$THICK-4,$HEIGHT-10])cube([1,2,30]);
translate([40.1,$THICK-4,$HEIGHT-3])cube([1,2,37]);
}

translate([10,0,8])rotate([0,-8.5,0])holes();
}
translate([10,0,13])rotate([0,-8.5,0])translate([31,4.5,0])rotate([0,8.5,0])translate([0,0,-16])cylinder(r=4.3,h=0.3,$fn=6,center=true);

module holes() {
rotate([90,0,0])cylinder(r=2.6,h=30,$fn=24,center=true);
translate([25.5,0,0])rotate([90,0,0])cylinder(r=2.6,h=30,$fn=24,center=true);

translate([0-4.5,4,0])rotate([0,8.5,0])cylinder(r=2,h=90,$fn=24,center=true);
translate([31,4.5,0])rotate([0,8.5,0])cylinder(r=2.4,h=90,$fn=24,center=true);
translate([31,4.5,0])rotate([0,8.5,0])translate([0,0,-16])cylinder(r=5,h=10,$fn=6,center=true);
//translate([31,4.5,0])rotate([0,8.5,0])translate([0,0,-16])cylinder(r=5,h=0.3,$fn=6,center=true);
}



}

lever();















