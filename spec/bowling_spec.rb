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
            player.rolls(5).rolls(5).rolls(2)
            knockOverPins(0, 17)
            player.score.should == 14
        end

        it "can strike" do
            player.rolls(10).rolls(2).rolls(5)
            knockOverPins(0, 16)
            player.score.should == 24
        end

        it "can do a perfect game" do
            knockOverPins(10, 12)
            player.score.should == 300
        end

        it "can play bowling" do
            player
                .rolls(5)
                .rolls(3)
                .rolls(5)
                .rolls(1)
                .rolls(6)
                .rolls(4)
                .rolls(8)
                .rolls(1)
                .rolls(10)
                .rolls(5)
                .rolls(4)
                .rolls(6)
                .rolls(4)
                .rolls(10)
                .rolls(10)
                .rolls(6)
                .rolls(4)
                .rolls(4)
            player.score.should == 149
        end
    end
end