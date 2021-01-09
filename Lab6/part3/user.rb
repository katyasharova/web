# frozen_string_literal: true

require './main'

puts 'input a and b'

a = gets.to_f
b = gets.to_f

root_f1 = root(a, b) { |x| (x**2 + Math.sin(x / 2)) }

root_f2 = root(a, b, &->(x) { Math.atan(x) + x - 1 })

puts "the minimum root of the function f(x) = sin(x / 2) + x^2 on the interval [#{a}, #{b}] " + print_root(root_f1)

puts "the minimum root of the function f(x) = arctg(x) + x - 1 on the interval [#{a}, #{b}] " + print_root(root_f2)
