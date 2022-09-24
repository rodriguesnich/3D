use <wheel_plug.scad>
use <new_wheel.scad>

module lateral_upper_cut () { 
    color("black") translate([0,-9.45,6.8]) rotate([70.1,-3,0]) cube([60.6,15,3.1], center=true);
}


module lateral_bottom_cut () {
    color("gray") translate([0,10.5,-3.4]) rotate([85,0,0]) cube([61,15,2], center=true);
}

module front_bootm_lateral_cut () {
    color("cyan") translate([-30,-5,-5]) rotate([0,-10,16]) cube([2,11,15], center=true);
}


difference() {
    // Base model
    cube([60,20,20], center=true);


   translate([30,0,-4]) rotate([0,10,0]) cube([3,20,13], center=true);

    translate([19,0,2]) cube([18,15,10], center=true);

    // Front Upper Cut
    color("red") translate([9,0,11]) rotate([0,10,0]) cube([45,21,10], center=true);
    // Back Upper Cut
    color("green") translate([-15,0,12]) rotate([0,-26,0]) cube([39,21,10], center=true);

    lateral_upper_cut();
    mirror([0, 1, 0])
    lateral_upper_cut();

    lateral_bottom_cut();
    mirror([0, 1, 0])
    lateral_bottom_cut();

    color("blue") translate([-30,0,-5]) rotate([0,-10,0]) cube([2,20,11], center=true);

    front_bootm_lateral_cut();
    mirror([0, 1, 0])
    front_bootm_lateral_cut();
}

translate([-18, 13.5, -7.1]) {
  wheel_plug();  
  translate([0, 10, -0.5]) rotate([-90,0,0]) new_wheel();
} 
mirror([0, 1, 0]) {
    translate([-18, 13.5, -7.1]) {
    wheel_plug();  
    translate([0, 10, -0.5]) rotate([-90,0,0]) new_wheel();
    } 
}


translate([17, 13.5, -7.1]) {
  wheel_plug();  
  translate([0, 10, -0.5]) rotate([-90,0,0]) new_wheel();
} 
mirror([0, 1, 0]) {
    translate([17, 13.5, -7.1]) {
    wheel_plug();  
    translate([0, 10, -0.5]) rotate([-90,0,0]) new_wheel();
    } 
}