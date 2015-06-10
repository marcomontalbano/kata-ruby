require "rspec"
require "./lib/bowling"

module Bowling
  describe Player do

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
      expect(player.score).to be == 0
    end

    it "can scores 1 point for each frames" do
      knockOverPins(1, 20)
      expect(player.score).to be == 20
    end

    it "can spares" do
      player.rolls(5).rolls(5).rolls(2)
      knockOverPins(0, 17)
      expect(player.score).to be == 14
    end

    it "can strike" do
      player.rolls(10).rolls(2).rolls(5)
      knockOverPins(0, 16)
      expect(player.score).to be == 24
    end

    it "can do a perfect game" do
      knockOverPins(10, 12)
      expect(player.score).to be == 300
    end

    it "can really play a game" do
      player
      .rolls(5).rolls(3)
      .rolls(5).rolls(1)
      .rolls(6).rolls(4)
      .rolls(8).rolls(1)
      .rolls(10)
      .rolls(5).rolls(4)
      .rolls(6).rolls(4)
      .rolls(10)
      .rolls(10)
      .rolls(6).rolls(4).rolls(4)
      expect(player.score).to be == 149
    end
  end
end
