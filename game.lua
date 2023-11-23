function update_game()
    if (not game_over and not game_won) then
		remaining_time = timer_start - time()
		if(btnp(LevelArray[LevelIndex][currentIndex][3])) then
			currentIndex += 1
            if(btnp(❎) or btnp(🅾️) ) then sfx(01)
            else sfx(02) end
			mapx = LevelArray[LevelIndex][currentIndex][1]
			mapy = LevelArray[LevelIndex][currentIndex][2]
		elseif (btnp(0) or btnp(1) or btnp(2) or btnp(3) or btnp(🅾️) or btnp(❎)) then
			shake+=0.1
            sfx(00)-- hit sound
			if remaining_time <= 5 then remaining_time = 0
			else timer_start -= 5
			end
		end
		if (currentIndex >= #LevelArray[LevelIndex]) then
			LevelIndex += 1
			currentIndex = 1
			timer_start = time() + 15
		end 

		if (LevelIndex >= LevelArrayLenght+1) then 
			game_won = true
            scene = "gamewon"
		end

		if remaining_time <= 0 then
			game_over = true 
            scene = "gameover"
		end
	end
end

function draw_game()
    cls()
	pal()
	map(mapx,mapy,0,0,16,16)

    print("timer: " .. flr(remaining_time), 8, 8, 7)
	print("level: " .. flr(LevelIndex), 70, 8, 11)
	doshake()
	


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