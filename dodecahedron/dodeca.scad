$fn = 24;

difference() {
  translate([-4,-4, 0]) cube([170, 28, 3]);
  linear_extrude(height=17 )
  text("Thundercats", font = "Liberation Sans:style=Bold", size=20);

//  translate([49.803,50,-5]) color("red") cube([1,50,35]);
}
//rotate([60,0,0])
//rotate([0,90,0])  stick3();

//difference() {
//  difference() {
//    color("green") cylinder(r=7,h=3);
//    union() {
//      union() {
//        translate([0,0,-20])
//          rotate([0,-90,0]) stick3();
//          rotate([0,0,60]) rotate([0,-90,0]) stick3();
//      }
//    }
//    //middle hole
//    color("red") translate([0,0,-1]) cylinder(d=4,h=10);
//  }
//  for(i=[0:5]) {
//    rotate([0,0,i*60]) translate([7.5,0,0]) cylinder(h=100,d=4);
//  }
//  
  //outer holes
//  union(){
//    color("red");
//    for(i=[0:2]) {
//      rotate([0,0,120*i]) 
//      translate([-6,0,-1]) cylinder(d=4,h=10);
//    }
//  }  
//}

//corner fitting
//translate([-80,0,0]) 
//difference() {
//  color("red") translate([0,0,-7]) cylinder(r=12,h=18);
//    
//  union() rotate([0,-36,0]) {
//    rotate([60,-(180-58.3),0]) stick3();
//    rotate([0,0,-54]) {
//      rotate([-30,0,0]) stick3();
//      rotate([-90,0,108]) stick3();
//    }
//  }
//}
//color("red") translate([-6,-4,0]) cube([10,8,3]);

//difference(){
//  difference() {
//    difference() {
//      clipBase();
//      stick3();
//    }
//    union() {
//      for(i=[0:2]) {
//        color("green") rotate([0,0,120*i]) translate([8.0,0,-1]) cylinder(d=4.0, h=5);
//      }
//    }
//  }
//  translate([0,0,-1]) cylinder(d=4,h=10);
//}
//module clipBase() {
//    for(i=[0:2]) {
//      color("red") rotate([0,0,120*i]) translate([-3,-3,0]) cube([10,6,3.2]);
//    }
//}
//
//module stick3() {
//  union() {
////    translate([5,0,0])
////    rotate([0,90,0])
//    for(i=[0:2]) {
//      rotate([0,0,120*i]) translate([5,0,-7]) cylinder(h=400, d=3.0);
//    }
//  }
//}