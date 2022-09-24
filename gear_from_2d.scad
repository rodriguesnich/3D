linear_extrude(height=10, center=true, convexity=10, twist=0) {
    circle(10); 

for (angle=[0:45:315]) {
    rotate([0, 0, angle]) translate([9, 0, 0]) square([2,1]);
}
}

