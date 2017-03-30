draw_surface(application_surface,0,0);
if (surface_exists(main_surface)) {
	draw_surface(main_surface,0,0);
}
else {
	main_surface = surface_create(1280,720);
}
