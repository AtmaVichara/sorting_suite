require 'minitest/autorun'
require 'minitest/pride'
require './lib/insertion'

class InsertionTest < Minitest::Test

  def test_insertion_is_initialized
    insertion = Insertion.new

    assert_instance Insertion, insertion
  end

  def test_insertion_sorts_values
    insertion = Insertion.new
    unsorted_letters = ["d", "b", "a", "c"]

    assert_equal ["a", "b", "c", "d"], insertion.sort(unsorted_letters)
  end


end
