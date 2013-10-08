module Bowling
    class Player

        FRAMES = 10
        
        def initialize
            @rolls       = Array.new(21) { 0 }
            @currentRoll = 0
        end

        def rolls pins
            @rolls[ @currentRoll ] = pins
            @currentRoll += 1
            self
        end

        def score
            score = 0

            i = 0
            (1..FRAMES).each do
                if (@rolls[i] == 10)
                    score += 10 + @rolls[i+1] + @rolls[i+2]
                    i += 1
                elsif (@rolls[i] + @rolls[i+1] == 10)
                    score += 10 + @rolls[i+2]
                    i += 2
                else
                    score += @rolls[i] + @rolls[i+1]
                    i += 2
                end
            end

            score
        end
    end
end