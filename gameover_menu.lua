--main menus
function update_gameover()
    if (btnp(❎)) then 
        _init()
        scene = "game"
    end
end

function draw_gameover()
    cls()
    print("game over...", 45, 50, 8)
    print("press ❎ to try again", 8,63)
end

