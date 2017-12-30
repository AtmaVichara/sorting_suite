require 'minitest/autorun'
require 'minitest/pride'
require './bubble/lib/bubble_sort.rb'

class BubbleSortTest < Minitest:: Test

  def test_bubble_sort_is_initialized
    bubble_sort = BubbleSort.new

    assert_instance_of BubbleSort, bubble_sort
  end

  def test_bubble_sort_sorts_values
    letters = ["d", "b", "a", "c"]
    bubble_sort = BubbleSort.new

    assert_equal ["a", "b", "c", "d"], bubble_sort.sort(letters)
  end

  def test_bubble_sorts_numbers
    bubble_sort = BubbleSort.new
    values = [1,3,5,6,3,26,7,4,344,67]

    assert_equal values.sort, bubble_sort.sort(values)
  end

end
