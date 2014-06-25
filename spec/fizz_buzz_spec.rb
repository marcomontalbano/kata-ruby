require "rspec"
require "./lib/fizz-buzz"

module FizzBuzz
  describe Player do

    let(:player){FizzBuzz::Player.new}

    context "for a given string" do
      it "should throw an error" do
        expect{player.say "blah blah blah"}.to raise_error ::ArgumentError
      end
    end
    
    context "for a given number" do
      it "cannot say zero" do
        expect{player.say 0}.to raise_error FizzBuzz::Player::CanNotSayZero
      end

      it "cannot say negative numbers" do
        [-1, -2, -43, -432].each do |negative_number|
          expect{player.say negative_number}.to raise_error FizzBuzz::Player::CanNotSayNegatives
        end
      end

      it "can say 'Fizz' when number is divisible by three" do
        [3,6,9,12,18,21,24,27,33,36,39,42,48,51,54,57].each do |number|
          expect(player.say(number)).to be == "Fizz"
        end
      end

      it "can say 'Buzz' when number is divisible by five" do
        [5,10,20,25,35,40,50,55,65,70,80,85,95,100].each do |number|
          expect(player.say(number)).to be == "Buzz"
        end
      end

      it "can say 'Fizz Buzz'" do
        [15,30,45,60,75,90,105,120,135,150,165,180,195,210,225,240,255].each do |number|
          expect(player.say(number)).to be == "Fizz Buzz"
        end
      end

      it "can say the number" do
        [1,2,4,7,8,11,13,14,16,17,19,22,23,26,28,29,31,32].each do |number|
          expect(player.say(number)).to be == number.to_s
        end
      end
    end

  end
end