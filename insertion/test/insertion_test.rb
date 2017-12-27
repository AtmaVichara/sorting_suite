require 'minitest/autorun'
require 'minitest/pride'
require './insertion/lib/insertion'

class InsertionTest < Minitest::Test

  def test_insertion_is_initialized
    insertion = Insertion.new

    assert_instance_of Insertion, insertion
  end

  def test_simple_sort
    insertion = Insertion.new
    sorted_letters = ['b', 'a']

    assert_equal ['a', 'b'], insertion.sort(sorted_letters)
  end


  def test_insertion_sorts_values
    # skip
    insertion = Insertion.new
    unsorted_letters = ["c", "b", "a", "d"]

    assert_equal ["a", "b", "c", "d"], insertion.sort(unsorted_letters)
  end


  def test_insertion_sorts_new_arrangement
    # skip
    insertion = Insertion.new
    unsorted_letters = ["a", "c", "b", "d"]

    assert_equal ["a", "b", "c", "d"], insertion.sort(unsorted_letters)
  end

  def test_insertion_sorts_other_arrangement
    # skip
    insertion = Insertion.new
    unsorted_letters = ["a", "c", "d", "b"]

    assert_equal ["a", "b", "c", "d"], insertion.sort(unsorted_letters)
  end


  def test_insertion_sorts_six_arrangement
    # skip
    insertion = Insertion.new
    unsorted_letters = ["a", "c", "b", "f", "d", "z"]

    assert_equal ["a", "b", "c", "d", "f", "z"], insertion.sort(unsorted_letters)
  end



end
