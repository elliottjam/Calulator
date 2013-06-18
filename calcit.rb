# Function definitions first
def menu
  # Clear the screen, and present the user with a menu
  puts `clear`
  puts "***CalcIt***"
  print "(b)asic, (a)dvanced (m)ortgage, or (q)uit: "
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

  def mortgage_calc
  puts 'clear'
  puts "***Mortgage Calculator - Monthly Payments***"
  print "enter loan amount:"
  p = gets.to_f
  print "Enter annual interest rate:"
  i = gets.to_f/12/100
  print "How many years will the mortgage last?:"
  n = gets.to_f*12

  x = i*(1+i)**n
  y = (1+i)**n-1
  z = p*(x/y)

  puts z
  gets
end

def advanced_calc
  puts '(s)quare, (e)xponential'
  operation = gets.chomp.downcase
  case operation
    when 's'
      puts "Print the number"
      num_1 = gets.chomp.to_f
      puts num_1 ** 0.5
      gets
    when 'e'
      input_numbers
      input_first
      num_1 = gets.chomp.to_f
      input_second
      num_2 = gets.chomp.to_f
      print num_1 ** num_2
      gets
    else
      puts "Not Valid Option."
      gets
  end




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
  when 'c'
    mortgage_calc
  end

  response = menu
end

