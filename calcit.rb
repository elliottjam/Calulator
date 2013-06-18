# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced, or (q)uit: "
  gets.chomp.downcase
end
def input_numbers
  puts "input two numbers"
end
def input_first
  puts "input first number"
end
def input_second
  puts "input second number"
end
def basic_calc
  # ask the user which operation they want to perform
  print "(a)dd, (s)ubtract, (m)ultiply, (d)ivide: "
  operation = gets.chomp.downcase
  case operation
    when 'a'
      input_numbers
      input_first
      num_1 = gets.chomp.to_f
      input_second
      num_2 = gets.chomp.to_f
      print num_1 + num_2
      gets
    when 's'
      input_numbers
      input_first
      num_1 = gets.chomp.to_f
      input_second
      num_2 = gets.chomp.to_f
      print num_1 - num_2
      gets
    when 'm'
      input_numbers
      input_first
      num_1 = gets.chomp.to_f
      input_second
      num_2 = gets.chomp.to_f
      print num_1 *num_2
      gets
    when 'd'
      input_numbers
      input_first
      num_1 = gets.chomp.to_f
      input_second
      num_2 = gets.chomp.to_f
      print num_1 / num_2
      gets
    else
      puts "Not a valid option."
      gets


    end

end

def advanced_calc
end
#HELLO!
# run the app...

response = menu

while response != 'q'
  case response
  when 'b'
    basic_calc
  when 'a'
    advanced_calc
  end

  response = menu
end

