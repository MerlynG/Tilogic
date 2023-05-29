$fn = 100;
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
//base();

translate([5.5,10,3])
minkowski(){
    difference(){
        cylinder(s, 7, 7);
        translate([-20, -10, -1]) cube(20);
    }
    sphere(0.5);
}
translate([0, 15, 3]) rotate([0, 90, 0]) cylinder(6, 0.5, 0.5);
translate([0, 5, 3]) rotate([0, 90, 0]) cylinder(6, 0.5, 0.5);
translate([11, 10, 3]) rotate([0, 90, 0]) cylinder(9, 0.5, 0.5);