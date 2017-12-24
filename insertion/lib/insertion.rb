class Insertion

  def sort(values)
    final = []
    values.length.times do |index|
      if final.empty?
        final << values[0]
      else
        final.each_with_index do |number, i|
          if number > values[index]
            final.insert((i-1), values[index])
          elsif number < values[index] && final[i+1].nil?
            final << values[index]
          else
            next
          end
        end
      end
    end
    final
  end


end
