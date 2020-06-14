if(follow != noone && instance_exists(follow)) {
	// the collision_point function returns the instance id of any instance
	// of a ceratin object at the defined point (the x and y of our player).
	// if it doesn't find anything it'll just return "noone"
	var cam_area = collision_point(follow.x, follow.y, oCamera_area, false, true);
	
	// checks if collision_point returned an instance and if that instance has a defined point.
	if(cam_area != noone && cam_area.point != noone) {
		
		x = cam_area.point.x;
		y = cam_area.point.y;
	}
	else {
		// if it can't find a camera_area with a defined camera_point it'll just follow the player
		x = follow.x;	
		y = follow.y;
	}
} 

// this smooths the camera for more fluid camera movement
// rounds the position so we don't get any strange graphical effects
cam_x += round((x - cam_x)/smooth);
cam_y += round((y - cam_y)/smooth);

// sets the camera position
var vm = matrix_build_lookat(cam_x,cam_y,-10,cam_x,cam_y,0,0,1,0);
camera_set_view_mat(camera, vm);