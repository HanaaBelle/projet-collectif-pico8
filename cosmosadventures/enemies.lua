function create_enemies()
   

    enemy={
       
        x = flr(rnd(18)) + 20, 
        y = flr(rnd(1)) + 12,


        sprite = 119 
        
        }
        
        enemies_anim_time = 0
        enemies_anim_wait = 0.2
    end 

function update_enemies()
    if (time() - enemies_anim_time > enemies_anim_wait) then
        enemy.sprite +=1
        enemies_anim_time=time()
        
        if (enemy.sprite > 120) then 
            enemy.sprite=119
        end
    end      
end

function draw_enemies()

      if (player.x == enemy.x and player.y == enemy.y) then
      
      print("Too Bad, Game Over",30,8,7) 
   end
    spr(enemy.sprite,enemy.x*8,enemy.y*8,1,1)

end

