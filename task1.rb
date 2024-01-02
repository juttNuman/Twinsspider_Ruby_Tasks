$array = Array.new
$number_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

def examin_array
  puts "Enter 9 values between 1 to 10 and miss any one of them:"
  index = 0
  while index < 9
    input = gets.chomp.to_i
    $array[index] = input
    index += 1
  end
end

def examin_missing
  sorted_array = $array.sort
  i = 0
  missing = nil
  while i < 10
    if sorted_array[i] != $number_array[i]
      missing = $number_array[i]
      break
    end
    i += 1
  end

  puts "The missing Value: #{missing}"
end

loop do
  puts "1. For writing input:"
  puts "2. For examining missing"
  puts "3. Exit"
  input = gets.chomp.to_i

  case input
  when 1
    examin_array
  when 2
    examin_missing
  when 3
    break
  else
    puts "INVALID INPUT"
  end
end
