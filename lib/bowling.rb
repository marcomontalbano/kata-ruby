module Bowling
    class Player

        def initialize
            @rolls = []
        end

        def rolls pins
            @rolls.push pins
            self
        end

        def score
            score = 0

            i = 0
            while i < @rolls.length do
                score += @rolls[i]
                i += 1
            end

            score
        end
    end
end