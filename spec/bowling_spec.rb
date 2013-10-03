require "rspec"
require "./lib/bowling"

module Bowling
    describe "a bowling player" do

        let(:player){Bowling::Player.new}

        def knockOverPins(pins, times)
            times.times do
                player.rolls( pins )
            end
        end

        it "can knocks over pins" do
            player.rolls(0)
        end

        it "can scores 0 points" do
            knockOverPins(0, 20)
            player.score.should == 0
        end

        it "can scores 1 point for each frames" do
            knockOverPins(1, 20)
            player.score.should == 20
        end

        it "can spares" do
            #pending
            player.rolls(5).rolls(5).rolls(2)
            knockOverPins(0, 17)
            player.score.should == 14
        end
    end
end