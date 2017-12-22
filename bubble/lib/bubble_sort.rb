class BubbleSort

  def sort(values)
    unsorted_length = values.length
    swapped = true
    while swapped do
      swapped = false
      (unsorted_length-1).times do |index|
        if values[index] > values[index + 1]
          values[index], values[index + 1] = values[index + 1], values[index]
          swapped = true
        end
      end
    end
    values
  end

end
