var size = 90;
var margin = 20;

for(var i = 0; i < 3; i++){
	var xx = margin + (i * (size + 10));
	var yy = margin;
	
	//Disegniamo lo sfondo (nero)
	draw_set_alpha(0.5);
	draw_rectangle_color(xx, yy, xx + size, yy + size, c_black, c_black, c_black, c_black, true);
	
	draw_set_alpha(1);
	draw_rectangle_color(xx, yy, xx + size, yy + size, c_white, c_white, c_white, c_white, true);
}	