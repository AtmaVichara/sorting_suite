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

  def test_insertion_sorts_numbers
    insertion = Insertion.new
    values = [1,3,5,6,3,26,7,4,344,67]

    assert_equal values.sort, insertion.sort(values)
  end

  def test_merge_sorts_30_random_integers
    insertion = Insertion.new
    values = []
    30.times { values << rand(1..100) }

    assert_equal values.sort, insertion.sort(values)
  end


end
