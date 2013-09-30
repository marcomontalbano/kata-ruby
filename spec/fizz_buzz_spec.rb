require "rspec"
require "./lib/fizz_buzz"

describe FizzBuzz do

	let(:player){FizzBuzz.new}

	it "can't say number 0" do
		expect{player.say(0)}.to raise_error FizzBuzz::CanNotSayZero
	end
	
	it "say 'Fizz'" do
		[3,6,9,12,15,18,21,24,27,30,33,36,39,42,45,48,51,54,57,60].each do |index|
			player.say(index).should include("Fizz")
		end
	end

	it "say 'Buzz'" do
		[5,10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90,95,100,105].each do |index|
			player.say(index).should include("Buzz")
		end
	end

	it "say 'Fizz Buzz'" do
		[15,30,45,60,75,90,105,120,135,150,165,180,195,210,225,240,255].each do |index|
			player.say(index).should include("Fizz", "Buzz")
		end
	end

	it "say the number" do
		[1,2,4,7,8,11,13,14,16,17,19,22,23,26,28,29,31,32].each do |index|
			player.say(index).should eq( index )
		end
	end

end