function _init()
	print("hello world")
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
	 
	 if (not game_over and not game_won) then
		remaining_time = timer_start - time()
		if(btnp(LevelArray[LevelIndex][currentIndex][3])) then
			currentIndex += 1
			mapx = LevelArray[LevelIndex][currentIndex][1]
			mapy = LevelArray[LevelIndex][currentIndex][2]
		elseif (btnp(0) or btnp(1) or btnp(2) or btnp(3) or btnp(🅾️) or btnp(❎)) then
			shake+=0.1
			if remaining_time <= 5 then remaining_time = 0
			else timer_start -= 5
			end
		end
		if (currentIndex >= #LevelArray[LevelIndex]) then
			LevelIndex += 1
			currentIndex = 1
			timer_start = time() + 15
			print("End reached")
		end 

		if (LevelIndex >= LevelArrayLenght+1) then 
			game_won = true
		end

		if remaining_time <= 0 then
			game_over = true 
		end
	end
end

function _draw()
	cls()
	pal()
	map(mapx,mapy,0,0,16,16)

    print("timer: " .. flr(remaining_time), 8, 8, 7)
	print("level: " .. flr(LevelIndex), 70, 8, 11)
	doshake()
	

	if game_over then
        print("game Over!", 45, 60, 8)
	elseif game_won then
		print("game Won!!!", 45, 60, 11)
	end
end

function doshake()
	local shakex=16-rnd(32)
	local shakey=16-rnd(32)

	shakex*=shake
	shakey*=shake

	camera(shakex,shakey)
 
	shake = shake*0.95
	if (shake<0.05) shake=0
end
	



--0⬅️
--1➡️
--2⬆️
--3⬇️
--OZ
--XX
