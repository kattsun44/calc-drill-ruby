print "How many do you want to solve?\n> "
q = gets.to_i
count = 0
miss = 0
start_time = Time.now

while count != q
  operand1 = rand(100)
  operand2 = rand(100)
  answer = operand1 + operand2
  fomula =  "Q#{count + 1}. #{operand1} + #{operand2} = "
  print fomula

  input = gets.to_i

  if input == 0
    break
  end
  while input != answer
    puts "not good..."
    miss += 1
    print fomula
    input = gets.to_i
  end
  puts "right!"
  count += 1
end

solved_time = Time.now - start_time

score_text = "Total: #{count}, Miss: #{miss}, Time: #{solved_time}s"
puts "\nFinish!\n#{score_text}"

File.open("history.txt", mode = "a") do |f|
  f.write("[#{Time.now.floor}] #{score_text}\n")
end
