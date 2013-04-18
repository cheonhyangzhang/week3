class RpsController < ApplicationController
	def homerps
	end
	def choose
		@PlayingChoicesToNum = {"rock" => 0, "paper" => 1, "scissors" => 2}
		@PlayingChoicesToString = {0 => "rock" ,1 =>"paper",2 =>"scissors" }
		@userChoice = params[:choose]
		@userChoiceNum = @PlayingChoicesToNum[@userChoice]
		@cpuChoiceNum = rand(3);
		@cpuChoice = @PlayingChoicesToString[@cpuChoiceNum]

		@userPic = "rps_" + @userChoice + ".png"
		@cpuPic = "rps_" + @cpuChoice + ".png"

		@resultNum = @userChoiceNum * 3 + @cpuChoiceNum

		if @resultNum == 0 or @resultNum == 4 or @resultNum == 8
			#Tie
			@resultInfo="It's a tie"
		elsif @resultNum == 2 or @resultNum == 3 or @resultNum == 7
			#win
			@resultInfo = "You win!"
		else
			#lose
			@resultInfo = "Oops, you lose!"
		end
	end
end