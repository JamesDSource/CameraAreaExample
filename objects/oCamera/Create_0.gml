camera = view_camera[0];

// emables views, this does the same thing as checking the "Enable Viewports"
// box in the room properties.
view_enabled = true;

// low res game needs a small view
view_width = 1920/8;
view_height = 1080/8;

// sets up view properties
view_set_visible(0, true);
view_set_wport(0, view_width);
view_set_hport(0, view_height);
view_set_camera(0, camera);

// sets up camera projections 
var pm = matrix_build_projection_ortho(view_width, view_height, -10000000, 10000000);
camera_set_proj_mat(camera, pm);

// resizing application_surface is for making sure everything streaches well.
// you can scale it up like i do to let pixels rotate
surface_resize(application_surface, view_width * 4, view_height * 4);

follow = oPlayer;
cam_x = x;
cam_y = y;
smooth = 10;