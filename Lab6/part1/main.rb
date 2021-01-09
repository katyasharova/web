#!/usr/bin/ruby
# frozen_string_literal: true

# count the number of iterations for srecified accuracy
module Counter
  def self.count_func(epsilon)
    return 0 if epsilon >= 0.5 || epsilon <= 0

    splitting = 5
    prev_value = 0.0
    cur_value = 1.0
    while (cur_value - prev_value).abs > epsilon
      splitting *= 2
      k = 1.0 / splitting
      prev_value = cur_value
      cur_value = 0.0
      x = 0.0
      splitting.times do
        x += k
        cur_value += x * k / Math.sqrt(1 + x**3)
      end
    end
    splitting
  end
end
