# frozen_string_literal: true

require './main'

puts "\nInput the expression"
str = gets.chomp

trio = Triple.new(str)
trio.print_string
print " = #{trio.count}\n"

trio_in_brackets = Triple_in_brackets.new(str)
trio_in_brackets.print_string
print " = #{trio_in_brackets.count}\n"