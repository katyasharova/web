#!/usr/bin/ruby
# frozen_string_literal: true

# count the number of iterations for srecified accuracy
module Counter
  def self.count_func(eps)
    return 0 if eps > 0.5 || eps <= 0

    splitting = 5
    integral = 0

    my_enumerator = Enumerator.new do |parts|
      k = 1.0 / splitting
      x = 0.0
      loop do
        x += k
        parts << x * k / Math.sqrt(1 + x**3)
      end
    end

    while (integral - 0.4297983840323041).abs > eps
      splitting *= 2
      integral = my_enumerator.take(splitting).sum
    end

    splitting
  end
end