$fn = 100;
s = 0.0001;

module base(){
    minkowski(){
        translate([1,1,0]) cube([18, 18, 2]);
        cylinder(1,1,1);
    }
}

//translate([0,0,-10]) color("red")
//base();

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

translate([0, 10, 2.5])
union(){
    translate([8, 0, 0]) cylinder(1, 6, 6, $fn=3);
    translate([14.5, 0, 0])
    difference(){
            cylinder(1, 1.5, 1.5);
            translate([0, 0, -0.5]) cylinder(2, 0.5, 0.5);
    }
}
//minkowski(){
//    color("red") linear_extrude(0.000001) square(20);
//    sphere(1);
//}