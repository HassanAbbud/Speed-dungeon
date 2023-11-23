function _init()
	scene = "menu"
	mapx = 0
	mapy = 0 
	LevelArray = {{{0, 0, ⬆️}, {16, 0,⬆️}, {32, 0, ⬆️}, {48, 0, ⬆️}, {64, 0, ⬅️}, {0, 0, ⬆️}, {80, 0, ⬆️}, {96, 0, ⬆️}, {112, 0, ➡️}, {0, 0, ⬆️}, {96, 48, ⬆️}, {112, 48, ⬆️}, {32, 48, ⬆️}}, 
	{{0, 0, ⬆️}, {16, 0,⬆️}, {32, 0, ⬆️}, {48, 0, ⬆️}, {64, 0, ⬅️}, {0, 0, ⬆️}, {0, 16, ⬆️}, {16, 16, ⬆️}, {32, 16, 🅾️},{0, 0, ⬆️}, {80, 0, ⬆️}, {96, 0, ⬆️}, {112, 0, ➡️}, {0, 0, ⬆️}, {96, 48, ⬆️}, {112, 48, ⬆️}, {32, 48, ⬆️}}, 
	{{0, 0, ⬆️}, {32, 0, ⬆️}, {48, 0, ⬆️}, {64, 0, ⬅️}, {80, 0, ⬆️}, {96, 0, ⬆️}, {112, 0, ➡️}, {48, 16, ⬆️}, {64, 16, ⬆️}, {80, 16, 🅾️}, {96, 16, 🅾️}, {0, 16, ⬆️}, {16, 16, ⬆️}, {32, 16, 🅾️}, {80, 0, ⬆️}, {96, 0, ⬆️}, {112, 0, ➡️}, {0, 0, ⬆️}, {96, 48, ⬆️}, {112, 48, ⬆️}, {32, 48, ⬆️}},
	{{0, 0, ⬆️}, {0, 16, ⬆️}, {16, 16, ⬆️}, {32, 16, 🅾️}, {48, 16, ⬆️}, {64, 16, ⬆️}, {80, 16, 🅾️}, {96, 16, 🅾️}, {80, 0, ⬆️}, {96, 0, ⬆️}, {112, 0, ➡️}, {0, 0, ⬆️}, {48, 16, ⬆️}, {64, 16, ⬆️}, {80, 16, 🅾️}, {112, 16, ❎}, {96, 16, 🅾️}, {80, 0, ⬆️}, {96, 0, ⬆️}, {112, 0, ➡️}, {48, 16, ⬆️}, {64, 16, ⬆️}, {80, 16, 🅾️}, {96, 16, 🅾️}, {96, 48, ⬆️}, {112, 48, ⬆️}, {32, 48, ⬆️} }
	}
	currentIndex = 1
	LevelIndex = 1
	LevelArrayLenght = #LevelArray
	shake = 0
	timer_start = time() + 15
	game_over = false
	game_won = false
	remaining_time = 0
end

function _update()
	if (scene == "menu") then
		update_menu()
	elseif (scene == "game") then
		update_game()
	elseif (scene == "gamewon") then
		update_gamewon()
	elseif (scene == "gameover") then
		update_gameover()
	end
end

function _draw()
	if (scene == "menu") then
		draw_menu()
	elseif (scene == "game") then
		draw_game()
	elseif (scene == "gamewon") then
		draw_gamewon()
	elseif (scene == "gameover") then
		draw_gameover()
	end
end

	



--0⬅️
--1➡️
--2⬆️
--3⬇️
--OZ
--XX
