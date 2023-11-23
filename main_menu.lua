--main menus
function update_menu()
    if (btnp(❎)) then 
        scene = "game"
    end
end

function draw_menu()
    cls()
    print("press ❎ to start the game", 8,63)
end

