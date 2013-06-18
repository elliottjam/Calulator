# Function definitions first
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
end



