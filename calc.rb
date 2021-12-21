operand1 = rand(100)
operand2 = rand(100)
answer = operand1 + operand2
puts "#{operand1} + #{operand2} = ?"

input = gets.to_i
while input != answer
  puts "not good..."
  input = gets.to_i
end
puts "right!"
