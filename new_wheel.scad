module new_wheel() {
    difference() {
        rotate([90,90,0]) cylinder(h=5, r1=5, r2=5, $fn=50, center=true);
        union(){
        color("gray") rotate([90,90,0]) cylinder(h=5, r1=3.4, r2=3.4, $fn=50);
        rotate([90,90,0]) cylinder(h=1.2, r1=4, r2=4, $fn=50);
        color("red") translate([0,1.45,0]) rotate([90,90,0]) cylinder(h=1.46, r1=3.2, r2=4, $fn=50);
        }
        // translate([0, 0, -5]) {
        //     cube(size=[10, 10, 10], center=true);
        // } 
    }   
}

new_wheel();