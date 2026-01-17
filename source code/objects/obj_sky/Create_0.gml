/// @description make the floor size like the map

randomize();

skybox_size = 640000; // Cloud shader map size
skybox_color = CAMERA_SKY_COLOR; // This var uses Constant.Color, undefined = no skybox; Example: make_colour_rgb(255, 255, 255);
skybox_speed_x = random_range(-1, 1);
skybox_speed_y = random_range(-1, 1);

skybox_thunder = {
	enable: true,
	max_time: 720,
	time_current: 0,
	color: [
		make_colour_rgb(40, 40, 40),
		make_colour_rgb(56, 56, 56),
		make_colour_rgb(96, 96, 96),
		make_colour_rgb(255, 255, 255)
	],
	effect: {
		enable: false,
		times: 15, // These are max thunder effects before the timer resets (based on mod 3)
		times_current: 0,
		default_color: skybox_color
	}
};

x = room_width / 2;
y = room_height / 2;
depth = -1500;	// works as Z axis

shader = shd_clouds;
u_time =			shader_get_uniform(shader, "u_time");
u_tile_size =		shader_get_uniform(shader, "u_tile_size");
u_cloud_period =	shader_get_uniform(shader, "u_cloud_period");
u_cloud_speed_x =	shader_get_uniform(shader, "u_cloud_speed_x");
u_cloud_speed_y =	shader_get_uniform(shader, "u_cloud_speed_y");
u_cloud_colour =	shader_get_uniform(shader, "u_cloud_colour");