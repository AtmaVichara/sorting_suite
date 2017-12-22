require 'minitest/autorun'
require 'minitest/pride'
require './lib/bubble_sort.rb'

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

end
