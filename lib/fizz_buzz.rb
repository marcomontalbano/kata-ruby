module FizzBuzz
  class Player

    CanNotSayZero      = Class.new RuntimeError
    CanNotSayNegatives = Class.new RuntimeError

    def say number
      number = Integer(number)

      fail CanNotSayZero      if (number == 0)
      fail CanNotSayNegatives if (number < 0)

      iSay = Array.new
      iSay.push "Fizz" if canISayFizz?(number)
      iSay.push "Buzz" if canISayBuzz?(number)
      
      iSay.push number if iSay.empty?

      iSay.join(" ")
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