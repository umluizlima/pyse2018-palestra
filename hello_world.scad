

union() {
	union() {
		difference() {
			cube(size = [32, 20, 1.5000000000]);
			translate(v = [3, 10, 0]) {
				scale(v = [0.1000000000, 0.1000000000, 1]) {
					cylinder(h = 10, r = 10);
				}
			}
		}
		linear_extrude(height = 3) {
			translate(v = [5, 11, 0]) {
				text(font = "Roboto:style=Black", size = 8, text = "hello");
			}
		}
	}
	linear_extrude(height = 3) {
		translate(v = [5, 1, 0]) {
			text(font = "Roboto:style=Black", size = 8, text = "world");
		}
	}
}
/***********************************************
*********      SolidPython code:      **********
************************************************
 
from solid import *
from subprocess import run

d = cube([32, 20, 1.5]) - \
    translate([3, 10, 0])(
        scale([0.1, 0.1, 1])(
            cylinder(h=10, r=10))) + \
    linear_extrude(3)(
        translate([5, 11, 0])(
            text('hello', size=8, font='Roboto:style=Black'))) + \
    linear_extrude(3)(
        translate([5, 1, 0])(
            text('world', size=8, font='Roboto:style=Black')))

scad_render_to_file(d, 'hello_world.scad')
exec('run (["openscad", "-o", "{}", "{}"])'.format('hello_world.stl', 'hello_world.scad')) 
 
************************************************/
