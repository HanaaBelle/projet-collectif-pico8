function _init()
	create_player()
	init_camera()
	create_rocket_fire()
	create_toxic_smoke()
end

function _update()
	player_movement()
	update_camera()
	update_rocket_fire()
	update_toxic_smoke()
     
end
function _draw()   
	cls()
    draw_map()
    draw_rocket_fire()
	draw_toxic_smoke()
	draw_player() 
	
end 