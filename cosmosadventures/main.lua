-----Main-----

function _init()
	create_player()
	init_camera()
	create_rocket_fire()
	create_toxic_smoke()
   create_enemies()
   init_dialogue()
   create_dialogue("Hey!I'm Jean-Loup.", "Press X to start!")
   
end

--dialogues={"Salut !" ,"Au revoir !"}
--dialogues[1] ça affiche "Salut !"

function _update60()

   if not dialogues[1] then
      player_movement()
   end  
	update_camera()
	update_rocket_fire()
	update_toxic_smoke()
   update_dialogue()
   update_enemies()  
end

function _draw()   
	cls()
   draw_map()
   change_color() 
   draw_rocket_fire()
	draw_toxic_smoke()
   draw_enemies()
	draw_player()
   draw_ui()
   draw_dialogues() 
   if player.gems == 6 then
      local x,y=30,8
      --local w,z=50,2
      --print(dialogue_title,w,z,7)
      print("Congrats! You Won.",x,y,7)
      sfx(2)
   elseif (player.x == enemy.x and player.y == enemy.y) then
      print("Too Bad, Game Over",22,1,7) 
   
   end
end
