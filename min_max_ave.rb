a = [2, 30, 92, 81, 208, 31, 859, 03, 39]
puts "a = #{a}"

# min
puts "The min of numbers stored in array is: #{a.min}"

# max
puts "The max of numbers stored in array is: #{a.max}"


# average

  def average
    a = [2, 30, 92, 81, 208, 31, 859, 03, 39]
    total = a.inject(:+)
    len = a.length
    puts "The average of numbers stored in array is: #{total.to_f / len}"
  end

puts average