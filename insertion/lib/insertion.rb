class Insertion

  def sort(values)
    final = []
    values.length.times do |index|
      inserted_flag = false
      final.length.times do |i|
        if values[index] < final[i]
          final.insert(i, values[index])
          inserted_flag = true
          break
        end
      end
      if inserted_flag == false
        final << values[index]
      end
    end
    final
  end

end
