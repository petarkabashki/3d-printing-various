
// Change this to false to remove the helper geometry
debug = true;

// Global resolution
$fs = 0.1;  // Don't generate smaller facets than 0.1 mm
$fa = 5;    // Don't generate larger angles than 5 degrees

sr = 1.20;
sh = 290;
num = 24;

//polygon(ngon(5, 150));
//color("Green") polygon(ngon(5, 140));
  
module polyplate(r,height) {
    linear_extrude(height=height)
      polygon(ngon(5, r));
}

difference() {
  linear_extrude(height=5)
    difference() {
      circle(r=33);
      circle(r=27);
    }


  for(i=[0:num-1]) {
    rotate([0,0,i*360/num]) 
    rotate([30,0,0]) 
    translate([30,0,0]) 
    translate([0,0,60]) 
    stick(center=true);
  }
}
//polyplate(150, 10);
//color("Green") polyplate(140,10);
/*
linear_extrude(height=5)
  difference() {
    pentagon(70);
    pentagon(50);
  }
*/
module pentagon(r) 
  polygon(ngon(5, r));


function ngon(num, r) = 
  [for (i=[0:num-1], a=i*360/num) [ r*cos(a), r*sin(a) ]];
    
module stick(center=false) {
cylinder(h=sh, r=sr, center=center);
}

