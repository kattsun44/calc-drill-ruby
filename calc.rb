print "How many do you want to solve?\n> "
q = gets.to_i
count = 0
start_time = Time.now

while count != q
  operand1 = rand(100)
  operand2 = rand(100)
  answer = operand1 + operand2
  print "Q#{count + 1}. #{operand1} + #{operand2} = ?\n> "

  input = gets.to_i
  while input != answer
    puts "not good..."
    input = gets.to_i
  end
  puts "right!"
  count += 1
end

solved_time = Time.now - start_time

puts "Total: #{count}, Time: #{solved_time}s"
