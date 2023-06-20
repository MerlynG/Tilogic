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
union(){
    difference(){
        intersection(){
            translate([0,-2,0]) cylinder(1, 7, 7);
            translate([0,2,0]) cylinder(1, 7, 7);
        }
        translate([-7,0,-1]) cylinder(3, 7, 7);
    }
}