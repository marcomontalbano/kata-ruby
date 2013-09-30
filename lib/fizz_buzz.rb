class FizzBuzz

	def say number
		iSay = Array.new

		fail CanNotSayZero if (number == 0)
		

		if (number % 3 === 0)
			iSay.push "Fizz"
		end

		if (number % 5 === 0)
			iSay.push "Buzz"
		end

		if (iSay.count == 0)
			return number
		end

		iSay.join " "
	end

	CanNotSayZero = RuntimeError.new

end