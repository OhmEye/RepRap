
//ymount();
translate([30,0,0])zmount();

//Y Mount
module ymount() {
difference(){
	cube([20,25,4]);
	translate([7,7,0])cube([6,25,5]);
}
}

//Z mount
module zmount() {
	cube([20,28,4]);
	difference() {
		translate([0,0,0])cube([20,4,35]);
		translate([7,0,15])cube([6,5,25]);
	}
	difference(){
		union(){
			translate([30,5,0])cube([10,55,6]);
			translate([35,5,0])cylinder(r=5,h=10,$fn=24);
			translate([40,40,0])cube([6,20,27]);
		}
		translate([35,5,0])rotate([0,0,0])cylinder(r=2.3,h=20,$fn=24);
//		translate([35,46,22])rotate([0,90,0])cylinder(r=1.5,h=20,$fn=24);
//		translate([35,54,22])rotate([0,90,0])cylinder(r=1.5,h=20,$fn=24);
	}
}
