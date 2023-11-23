--main menus
function update_gamewon()
    if (btnp(❎)) then
        _init() 
        scene = "game"
    end
end

function draw_gamewon()
    cls()
    print("game Won!!!", 45, 50, 11)
    print("press ❎ to replay the game", 8,63)
end

