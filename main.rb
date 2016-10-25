#!/usr/bin/ruby

require "./lib/fizz-buzz"

player = FizzBuzz::Player.new

1.upto(100) do |number|
  puts "#{'%03i' % number} - #{player.say number}"
end
