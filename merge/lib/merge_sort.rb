require 'pry'


class MergeSort

  def merge_sort(values)
    if values.length < 2
      values
    else
      mid = (values.length / 2).round
      left = merge_sort(values[0..mid - 1])
      right = merge_sort(values[mid..values.length])
      merge(left, right)
    end
  end

  def merge(left, right)
    values = []
    until left.empty? || right.empty?
      if left.first < right.first
        values << left.shift
      else
        values << right.shift
      end
    end
    values + left + right
  end

end
