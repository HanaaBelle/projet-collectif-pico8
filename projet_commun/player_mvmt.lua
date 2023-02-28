function create_player()
    player={ 
        x = 0, 
        y = 6, 
        ox = 0, 
        oy = 0,
        startox=0, 
        startoy=0,
        sprite = 3,
        anim_t=0,
        gems=0
    } 
end

function draw_player()
    --spr(player.anim_t>=0.5 and 10 or 9, player.x*8 + player.ox, player.y*8 + player.oy, 1, 1, player.flip)
spr(player.sprite, player.x*8 + player.ox, player.y*8 + player.oy, 1, 1, player.flip)
end
function player_movement()
    newx=player.x
    newy=player.y

    if player.anim_t==0 then

        newox,newoy=0,0
        if (btn(➡️)) then 
            newx+=1
            newox=-8
            player.flip=false
        end
        if (btn(⬅️)) then
            newx-=1
            newox=8
            player.flip=true  
        end
        if (btn(⬆️)) then
            newy-=1
            newoy=8
        end
        if (btn(⬇️)) then 
            newy+=1
            newoy=-8
        end
    end  
    interact(newx,newy)

    if not check_flag(0, newx, newy) and (player.x != newx or player.y != newy) and (player.gems!=6) then
    --y-a-un-obstacle-on avance--
    player.x=mid(0, newx, 127)
    player.y=mid(0, newy, 63)
    player.startox=newox
    player.startoy=newoy
    player.anim_t=1
    end

    --animation---
    player.anim_t=max(player.anim_t-0.125,0)
    player.ox=player.startox*player.anim_t
    player.oy=player.startoy*player.anim_t
end

function interact(x,y)
    if check_flag(1,x,y) then
        pick_up_gems(x,y)
    end
end 

