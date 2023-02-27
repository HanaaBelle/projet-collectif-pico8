function create_toxic_smoke()
    toxic_smoke={
        sprite = 82,
        x = 22,
        y = 5
        }
        toxic_smoke_anim_time = 0
        toxic_smoke_anim_wait = 0.1
    end 
    
    
    function update_toxic_smoke()
        if time() - toxic_smoke_anim_time > toxic_smoke_anim_wait then
            toxic_smoke.sprite +=2
            toxic_smoke_anim_time=time()
    
            if toxic_smoke.sprite > 88 then 
                toxic_smoke.sprite=82
            end
        
        end 
        
    end
        
    function draw_toxic_smoke()
        spr(toxic_smoke.sprite,toxic_smoke.x*8,toxic_smoke.y*8,2,2)
    end 
    
        
        