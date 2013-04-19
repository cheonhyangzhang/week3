class DiceController < ApplicationController
	def homedice
	end
	def rollFirst
		@dice1Num = rand(6) + 1
		@dice2Num = rand(6) + 1
		@dice1Pic = "dice/" + @dice1Num.to_s + ".png"
		@dice2Pic = "dice/" + @dice2Num.to_s + ".png"


		@diceSum = @dice1Num + @dice2Num

		if @diceSum == 7 or @diceSum == 11
			#win
			@tipInfo = "You Win!"
			@buttonText = "Start Over"
			@buttonGoto = "/dice"
			@buttonType = "get"
		elsif @diceSum == 2 or @diceSum == 3 or @diceSum == 12
			#lose
			@tipInfo = "You Lose."
			@buttonText = "Play again"
			@buttonGoto = "/dice"
			@buttonType = "get"
		else
			#Continue
			@tipInfo = "Your point is now " + @diceSum.to_s + " Now try to get #{@diceSum.to_s} again
			before you roll a 7."
			@buttonText = "Roll the dice"
			@buttonGoto = "roll?point=#{@diceSum.to_s}" 
			@buttonType = "post"
		end
	end

	def rollMore
		@goal = params[:point]
		@dice1Num = rand(6) + 1
		@dice2Num = rand(6) + 1
		@dice1Pic = "dice/" + @dice1Num.to_s + ".png"
		@dice2Pic = "dice/" + @dice2Num.to_s + ".png"
		@diceSum = @dice1Num + @dice2Num

		if @diceSum == @goal.to_i
			#win
			@tipInfo = "You Win!"
			@buttonText = "Start Over"
			@buttonGoto = "/dice"
			@buttonType = "get"
		elsif @diceSum == 7
			#lose
			@tipInfo = "You Lose."
			@buttonText = "Play again"
			@buttonGoto = "/dice"
			@buttonType = "get"
		else
			#continue
			@tipInfo = "Your point is " + @diceSum.to_s + " You can roll again"
			@buttonText = "Roll again"
			@buttonGoto = "roll?point=#{@goal.to_s}" 
			@buttonType = "post"
		end
		render "rollFirst"
			

	end
end