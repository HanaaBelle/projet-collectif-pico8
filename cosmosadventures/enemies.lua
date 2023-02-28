function create_enemies()
   
     
    enemy={
       
        x = rnd(18) + 20, 
        y = rnd(1) + 17,
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
   
    
    spr(enemy.sprite,enemy.x*8,enemy.y*8,1,1)


end

