$fn = 200;
s = 0.0001;

module base(){
    minkowski(){
        translate([1,1,0]) cube([18, 18, 2]);
        cylinder(1,1,1);
    }
}

module thore(thore_radius, tube_diameter, angle){
    rotate_extrude(angle=angle) {
        translate([thore_radius - tube_diameter/2, 0])circle(d=tube_diameter);
    }
}
//translate([0,0,-10]) color("red")
color("green") base();

translate([0, 10, 2.5])
color("gray")
union(){
    translate([5.5,0,0])
    difference(){
        difference(){
            cylinder(1, 7.5, 7.5);
            cylinder(2, 6.5, 6.5);
            translate([-20, -10, -1]) cube(20);
        }
    }
    translate([5.5, -7, 1]) rotate([-90, 0, 0]) cube([1, 1, 14]);
    
    translate([0, 4.5, 1]) rotate([0, 90, 0]) cube([1, 1, 6]);
    translate([0, -5.5, 1]) rotate([0, 90, 0]) cube([1, 1, 6]);
    translate([15, -0.5, 1]) rotate([0, 90, 0]) cube([1, 1, 5]);
    translate([3.5, -7.5, 1]) rotate([-90, 0, 0]) cube([1, 1, 15]);
    translate([14.4, 0, 0])
    difference(){
        cylinder(1, 1.5, 1.5);
        translate([0, 0, -0.5]) cylinder(2, 0.5, 0.5);
    }
}    