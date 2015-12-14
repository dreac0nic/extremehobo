/// SpringViewToPosition(view_id, spring_value, mass, dampening)
// Move arguments into namable variables.
var delta = 0.000001*delta_time;
var view_id = argument0;
var pos_x = self.x - view_wview[view_id]/2;
var pos_y = self.y - view_hview[view_id]/2;
var spring_value = argument1;
var mass = argument2;
var damp = argument3;
var acceleration = 0;
var spring_direction = 0;

// Reset speed values
view_hspeed[view_id] = 0.0;
view_vspeed[view_id] = 0.0;

// Calculate acceleration using Hooke's Law
acceleration = -spring_value*sqrt(power(pos_x - view_xview[view_id], 2) + power(pos_y - view_yview[view_id], 2));
acceleration -= damp*sqrt(power(self.hspeed - view_hspeed[view_id], 2) + power(self.vspeed - view_vspeed[view_id], 2));
acceleration /= mass;

spring_direction = 0.0174533*point_direction(pos_x, pos_y, view_xview[view_id], view_yview[view_id]);

view_hspeed[view_id] += acceleration*cos(spring_direction)*delta;
view_vspeed[view_id] -= acceleration*sin(spring_direction)*delta;

//*
view_xview[view_id] += view_hspeed[view_id]*delta;
view_yview[view_id] += view_vspeed[view_id]*delta;
//*/
