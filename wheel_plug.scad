module wheel_plug() {
    difference() {
        union() {
            color("blue") rotate([90,90,0]) cylinder(h=9, r1=3, r2=3, $fn=50);
            color("gray") rotate([90,90,0]) cylinder(h=1.1, r1=3.8, r2=3.8, $fn=50);
            translate([0,1.29,0])rotate([90,90,0]) cylinder(h=1.3, r1=3, r2=3.8, $fn=50);
        }
        color("red") translate([0, 5, 0]) rotate([90,90,0]) cylinder(h=20, r1=1.9, r2=1.9, $fn=50);
        color("green") translate([0, -5, 0]) cube(size=[2, 13, 10], center=true);
        color("pink") translate([0, -1, 3.83]) rotate([0,90,0]) cube(size=[2, 5, 10], center=true);
        mirror([0, 0, 1]) 
        translate([0, -1, 3.83]) rotate([0,90,0]) cube(size=[2, 5, 10], center=true);
    }
}
wheel_plug();
translate([0, -8, 0]) {
 cube(size=[10, 5, 10], center=true);
}    