# frozen_string_literal: true

require './main'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_proc_given_root_exists
    assert_in_delta(root(-0.2, 2) { |x| (x**2 + Math.sin(x / 2)) }, 0, 0.1)
  end

  def test_proc_given_root_not_exists
    assert_in_delta(root(1, 3) { |x| (x**2 + Math.sin(x / 2)) }, -10, 0.1)
  end

  def test_lambda_given_root_exists
    assert_in_delta(root(0, 2, &->(x) { Math.atan(x) + x - 1 }), 0.52, 0.1)
  end

  def test_lambda_given_root_not_exists
    assert_in_delta(root(-5, 0, &->(x) { Math.atan(x) + x - 1 }), -10, 0.1)
  end

  def teardown; end
end
