module FizzBuzz
    class Player

        CanNotSayZero = RuntimeError.new

        def say number
            number = Integer(number)

            fail CanNotSayZero if (number == 0)
            
            iSay = Array.new
            
            if canISayFizz?(number)
                iSay.push "Fizz"
            end

            if canISayBuzz?(number)
                iSay.push "Buzz"
            end

            iSay.any? ? iSay.join(" ") : number
        end

        private

        def canISayFizz? number
            number % 3 == 0
        end

        def canISayBuzz? number
            number % 5 == 0
        end
    end
end