
function draw_map()
    --map(tilex,tiley,ecranx,ecrany)
      map(0, 0, 0, 0, 128, 64)
    end
    
    function check_flag(flag,x,y)
      local sprite=mget(x,y)
      return fget(sprite,flag)

    end
    function init_camera()
        camx,camy=0,0
    end

function update_camera()
        camx=mid(0, (player.x-7.5)*8+player.ox, (31-15)*8)
        camy=mid(0, (player.y-7.5)*8+player.oy, (31-15)*8)
        camera(camx, camy) 
    end

    function next_tile(x,y)
        sprite=mget(x,y)
        mset(x,y,sprite+1) 	
       end
       
       function pick_up_gems(x,y)
           next_tile(x,y)
           player.gems+=1
           sfx(1)
       end
  