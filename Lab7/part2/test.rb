# frozen_string_literal: true

require './main'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup; end

  def test_parent_instance
    trio = Triple.new('5*3')
    assert trio.instance_of? Triple
  end

  def test_child_instance
    brac_trio = Triple_in_brackets.new('4/2')
    assert brac_trio.instance_of? Triple_in_brackets
  end

  def test_hierarchy
    trio = Triple_in_brackets.new('1*7')
    assert trio.is_a? Triple
  end

  def test_sum
    trio = Triple.new('3+9')
    trio_b = Triple_in_brackets.new('3+9')
    assert (trio.count == trio_b.count) && (trio.count == 12)
  end

  def test_div
    trio = Triple.new('8/2')
    trio_b = Triple_in_brackets.new('8/2')
    assert (trio.count == trio_b.count) && (trio.count == 4)
  end

  def teardown; end
end