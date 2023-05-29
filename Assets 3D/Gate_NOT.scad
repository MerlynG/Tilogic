$fn = 100;
s = 0.0001;

//minkowski(){
//    translate([1,1,0]) cube([18, 18, 2]);
//    cylinder(1,1,1);
//}

module thore(thore_radius, tube_diameter, angle){
    rotate_extrude(angle=angle) {
        translate([thore_radius - tube_diameter/2, 0])circle(d=tube_diameter);
    }
}

//translate([0, 10, 0]) rotate([0, 90, 0]) cylinder(5, 0.5,0.5);
//translate([5, 5, 0]) rotate([-90, 0, 0]) cylinder(10, 0.5,0.5);
//translate([5.5,5,0]) rotate([0,0,180]) thore(1, 1, 130);
//translate([5.5,15,0]) rotate([180,0,180]) thore(1, 1, 130);
//translate([5.8, 4.6, 0]) rotate([-90, 0, -50]) cylinder(10, 0.5,0.5);
//translate([13.482, 8.955, 0]) rotate([-90, 0, 50]) cylinder(10, 0.5,0.5);

translate([0,0,3])
minkowski(){
    translate([8, 10, 0]) cylinder(s, 5, 5, $fn=3);
    sphere(0.5);
}
translate([0, 10, 3]) rotate([0, 90, 0]) cylinder(7, 0.5, 0.5);
translate([16, 10, 3]) rotate([0, 90, 0]) cylinder(4, 0.5, 0.5);
translate([14.5, 10, 3]) thore(2, 1, 360);
//minkowski(){
//    color("red") linear_extrude(0.000001) square(20);
//    sphere(1);
//}