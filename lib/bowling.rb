module Bowling
  class Player

    MAX_FRAMES = 10

    def initialize
      @rolls        = Array.new(21) { 0 }
      @current_roll = 0
    end

    def rolls pins
      @rolls[ @current_roll ] = pins
      @current_roll += 1
      self
    end

    def score
      score = 0
      roll_index = 0
      (1..MAX_FRAMES).each do
        if is_strike? roll_index
          score += roll_strike(roll_index)
          roll_index += 1
        elsif is_spare? roll_index
          score += roll_spare(roll_index)
          roll_index += 2
        else
          score += roll_pins_frame(roll_index)
          roll_index += 2
        end
      end

      score
    end

    private

    def is_strike? roll_index
      @rolls[roll_index] == 10
    end

    def is_spare? roll_index
      @rolls[roll_index] + @rolls[roll_index + 1] == 10
    end

    def roll_strike roll_index
      10 + @rolls[roll_index + 1] + @rolls[roll_index + 2]
    end

    def roll_spare roll_index
      10 + @rolls[roll_index + 2]
    end

    def roll_pins_frame roll_index
      @rolls[roll_index] + @rolls[roll_index + 1]
    end

  end
end