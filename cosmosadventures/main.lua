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
   draw_player()
   draw_enemies()
   print(enemy.x,20,20)
   draw_ui()
   draw_dialogues() 
   x,y=30,8
   z=2
   if player.gems == 6 then
      
      --print(dialogue_title,w,z,7)
      print("Congrats! You Won.",x,y,7)
      rectfill(39,1,39+ #dialogue_title*4,z+6,2)
      sfx(2)
   end
  if (player.x == enemy.x and player.y == enemy.y) then 
   --rectfill(39,1,39+ #dialogue_title*4,z+6,2)
      print("Too Bad, Game Over",x,y,7) 
      
  end
end
  
--and (player.x == enemy.x and player.y == enemy.y) 