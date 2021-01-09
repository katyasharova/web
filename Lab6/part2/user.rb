# frozen_string_literal: true

require './main'

puts "number of iterations for epsilon = 0.001 is #{Counter.count_func(0.001)}"

puts "number of iterations for epsilon = 0.0001 is #{Counter.count_func(0.0001)}"
