/*
 * Enclosure for Molex_7880x_bus_tap
 */

// true = taller cover with clips at the corners
// false = shorter simpler cover that needs glue or adhesive tape
with_clips = true;

mil = 0.0254;

pcb_w = 1600*mil;
pcb_d = 1650*mil;
pcb_h = 1.6;
pcb_r = 100*mil;

molex_w = 940*mil;
//ffc_w = 6;      // ffc connector width
//ffc_d = 36;     // ffc connector depth
//ph_w = 300*mil; // pin header width
ph_d = 1400*mil;  // pin header depth

bottom_h = 2;

wt = 1;   // wall thickness
cr = 0.5; // corner/fillet radius

//mw = 0.8; // minimum allowed wall thickness
fc = 0.2; // fitment clearance
e = 0.1;  // epsilon (overlap/overcut)
//$fa = 2;
//$fs = 0.1;
$fn = 36;


ih = pcb_h+bottom_h;
or = fc+wt;
ow = or+pcb_w+or;
od = or+pcb_d+or;
oh = or+ih+or;

// =================================================================

use <inc/handy.scad>

module fit_parts() {
  import("inc/pcb.stl");
}

module body () {
     difference() {

      // add
      // exterior
      translate([0,0,oh/2-bottom_h-wt]) rounded_cube(w=ow,d=od,h=oh,rh=pcb_r+or,rv=or,t=0);

      // cut
      union () {
        // top
        if (!with_clips) translate([0,0,oh/2+pcb_h-fc]) cube([e+ow+e,e+od+e,oh],center=true);
        // pcb
        translate([0,0,oh/2-fc]) rounded_cube(w=fc+pcb_w+fc,d=fc+pcb_d+fc,h=oh,rh=pcb_r+fc,rv=fc,t=0);
        // bottom
        translate([0,0,oh/2-bottom_h]) rounded_cube(w=pcb_w-wt-wt,d=pcb_d-wt-wt,h=oh,rh=pcb_r-wt,rv=cr,t=0);

        if (with_clips) {
          r = 75*mil;
          translate([0,0,oh-r]) rounded_cube(w=e+r+ow+r+e,d=ph_d+r,h=oh,rh=r,rv=r,t=0);
        }

        // debugging cutaway
        //translate([0,od/4+e/2,oh/2-bottom_h-wt-e]) cube([e+ow+e,od/2+e,e+oh+e],center=true);

      }
    }

    if (with_clips) {
      cs = 3;
      cd = oh/2-pcb_h-0.05;
      cl = ow/2-molex_w/2-cs;
      hr = pcb_r+fc;
      mirror_copy([0,1,0])
        mirror_copy([1,0,0])
          intersection () {
            translate([molex_w/2+cs,pcb_d/2+fc,cd/2+pcb_h])
              rotate([0,90,0])
                cylinder(d=cd,h=cl);
      
            translate([pcb_w/2-cl-hr+fc+e,pcb_d/2-hr*2+fc+e,0])
              hull() {
                translate([cl,hr,0]) cylinder(r=hr,h=oh);
                cube([cl,hr*2,oh]);
              }
         }
    }

}

// =================================================================

%fit_parts();
body();
