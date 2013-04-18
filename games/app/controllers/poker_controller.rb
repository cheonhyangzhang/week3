class PokerController < ApplicationController
	def homepoker
		@kinds = {0 => "C", 1 => "D", 2 => "H", 3 => "S"}
		@cardNum = {0 => "A", 1 => "2", 2 => "3", 3 => "4", 4 => "5", 5 => "6", 
					6 => "7", 7 => "8", 8 => "9", 9 => "T", 10 => "J", 11 => "Q",
					12 => "K"}
		#pick the five card
		@cardPickNums = [0, 0, 0, 0, 0]

		i = 1
		while i <= 5 do
			puts "The " + i.to_s + " loop"
			@cardRandomPickNum = rand(52)
			puts "Get number " + @cardRandomPickNum.to_s
			j = 1
			@alreadyHas = 0
			while j < i do
				puts "\ttest " + j.to_s + " time"
				if @cardPickNums[j] == @cardRandomPickNum
					puts "		Already has!!!!!!!!!!!!"
					@alreadyHas = 1
					break
				end
				j += 1
			end
			if @alreadyHas == 0
				@cardPickNums[i] = @cardRandomPickNum
				i += 1
			end
		end #while
		@cardPickPic = ["", "", "", "", ""]

		for i in 1..5
			@cardPickKindNum = @cardPickNums[i] /13
			@cardPickCardNum = @cardPickNums[i] % 13
			puts @cardPickKindNum
			puts @cardPickCardNum
			@cardPickPic[i] = "poker/" + @kinds[@cardPickKindNum]  + @cardNum[@cardPickCardNum] + ".png"
		end

	end
end
