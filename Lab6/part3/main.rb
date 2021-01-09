#!/usr/bin/ruby
# frozen_string_literal: true

def print_root(val)
  val == -10 ? 'does not exist' : "is #{val.round(1)}"
end

def root(a, b)
  x = a
  x += 0.01 while (yield(x).abs > 0.01) && (x <= b)
  return -10 if x > b

  x
end
