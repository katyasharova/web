# frozen_string_literal: true

require './main'
require 'minitest/autorun'

# inherits default test class
class TestFunc < Minitest::Test
  def setup
    @input_file_name = 'test_F.txt'
    @output_file_name = 'test_G.txt'

    generate_input_file
  end

  def test_removes_duplicate_numbers_in_out_file
    Files.remove_duplicate_numbers(input_file_name, output_file_name)

    assert File.exist?(input_file_name)
    assert File.exist?(output_file_name)

    expected = File.open(input_file_name, &:read).split(' ').uniq.join(' ')
    actual = File.open(output_file_name, &:read)

    assert_equal expected, actual
  end

  def teardown
    File.delete(input_file_name) if File.exist?(input_file_name)
    File.delete(output_file_name) if File.exist?(output_file_name)
  end

  private

  attr_reader :input_file_name, :output_file_name

  def generate_input_file
    numbers = 20.times.map { rand(20).to_s }.join(' ')
    File.open(input_file_name, 'w') { |file| file.print numbers }
    numbers
  end
end
