require 'minitest/autorun'
require 'minitest/pride'
require './merge/lib/merge_sort'

class MergeSortTest < Minitest::Test

  def test_merge_sorts_four_letters
    # skip
    merge = MergeSort.new
    values = ['c', 'b', 'a', 'd']

    assert_equal values.sort, merge.merge_sort(values)
  end

  def test_merge_sorts_letters
    # skip
    merge = MergeSort.new
    values = ['b', 'd', 'c', 'a', 'e']

    assert_equal ['a','b','c','d','e'], merge.merge_sort(values)
  end

  def test_merge_sorts_numbers
    # skip
    merge = MergeSort.new
    values = [1,3,5,6,3,26,7,4,344,67]

    assert_equal values.sort, merge.merge_sort(values)
  end

  def test_merge_sorts_30_random_integers
    # skip
    merge = MergeSort.new
    values = []
    30.times { values << rand(1..100) }

    assert_equal values.sort, merge.merge_sort(values)
  end

  def test_merge_sorts_all_letters
    # skip
    merge = MergeSort.new
    values = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i',
              'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r',
              's', 't', 'u', 'v', 'w', 'x', 'y', 'z']
    values = values.shuffle

    assert_equal values.sort, merge.merge_sort(values)
  end



end
