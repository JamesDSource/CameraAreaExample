// movement using arrow keys
// not important for the camera stuff
var hDir = keyboard_check(vk_right) - keyboard_check(vk_left);
var vDir = keyboard_check(vk_down) - keyboard_check(vk_up);

if(hDir != 0) image_xscale = hDir;

if(hDir != 0 || vDir != 0) image_angle += 6 * -image_xscale;

x += hDir * 2;
y += vDir * 2;