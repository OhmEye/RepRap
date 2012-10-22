// FFF extruder using geared stepper motor http://www.2engineers.com/shop/motor-1/
// Designed by OhmEye (github.com/OhmEye)
// uses blddk hobb, 605zz bearing, 2x3/8" corner brace from Ace hardware, and some fasteners.
// Copyright 2012 OhmEye, James L Paul
// Licensed GPLv3


use <ohmstruder_lever.scad>;
translate([33,60,0])rotate([0,0,-90])lever();


translate([0,0,7])rotate([-90,0,0]){

difference(){
	union(){	
		translate([0,0,0])cube([80,7,16.8]); // lower body
		translate([67,-7.5,10])cylinder(r=5,h=5,$fn=24,center=true); // well screw riser
		hull(){
			translate([13,0,53])cube([50,7,1]); // upright body
			translate([0,0,9])cube([80,7,10]); // upright body
			}
		translate([0,-19,0])cube([80,20,10]); // groovemount flange
		hull(){
			translate([0,0,0])cube([3,3,19]); // end brace
			translate([0,-19,0])cube([3,3,10]); // end brace
			}
		hull(){
			translate([77,0,0])cube([3,3,19]); // end brace
			translate([77,-19,0])cube([3,3,10]); // end brace
			}
		}
		translate([33,-9,0])groovemountholes();
		translate([21.5,0,13.8])motorholes();
		
		translate([67,-7.5,8])cylinder(r=2.55,h=10,$fn=24,center=true); // well screw hole for M5x10
	}
}




module motorholes(){
	translate([0,0,0])rotate([90,0,0])cylinder(r=1.6,h=30,$fn=18,center=true);
	translate([36,0,0])rotate([90,0,0])cylinder(r=1.6,h=30,$fn=18,center=true);
	translate([0,0,36])rotate([90,0,0])cylinder(r=2,h=30,$fn=18,center=true);
	translate([36,0,36])rotate([90,0,0])cylinder(r=1.6,h=30,$fn=18,center=true);

	translate([18,0,18])rotate([90,0,0])cylinder(r=21.7,h=30,$fn=96,center=true);
	translate([18,0,36])cube([25,30,10],center=true);
//	hull(){
//	translate([18,0,8])rotate([90,0,0])cylinder(r=9,h=30,$fn=36,center=true);
//	translate([0,0,8])rotate([90,0,0])cylinder(r=5,h=30,$fn=36,center=true);
//	}
//	translate([11.5,-12,0])cylinder(r1=1.6,r2=4,h=30,$fn=18,center=true);
}
module groovemountholes(){
	translate([0,0,0])cylinder(r=8,h=12,$fn=64,center=true);
	translate([0,0,8])cylinder(r1=1.6,r2=2.6,h=4.1,$fn=64,center=true);
	translate([-25,0,0])cylinder(r=2.6,h=30,$fn=64,center=true);
	translate([25,0,0])cylinder(r=2.6,h=30,$fn=64,center=true);
	translate([-25,0,9])cylinder(r=4.5,h=4,$fn=6,center=true);
	translate([25,0,9])cylinder(r=4.5,h=4,$fn=6,center=true);
}