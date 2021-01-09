# frozen_string_literal: true

require './main'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_comparation
    assert Counter.count_func(0.01) < Counter.count_func(0.001)
  end

  def test_zero
    assert_equal Counter.count_func(0), 0
  end

  def test_incorrect_eps
    assert_equal Counter.count_func(2), 0
  end

  def test_accurate
    assert Counter.count_func(0.00001) > 1000
  end

  def teardown; end
end
