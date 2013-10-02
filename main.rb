#!/usr/bin/ruby

require "./lib/fizz_buzz"

puts "Fizz Buzz!";

player = FizzBuzz::Player.new

1.upto(100) do |number|
    print "#{'%03i' % number} - "
    puts player.say number
end