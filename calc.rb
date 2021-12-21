print "Which One?\n"
choice = 0

while choice != 1 and choice != 2
  print "Addition...1 Multiplication...2\n"
  choice = Integer(gets)
end

print "How many do you want to solve?\n> "
q = Integer(gets)
count = 0
miss = 0
start_time = Time.now

while count != q
  operand1 = rand(100)
  operand2 = rand(100)
  if choice == 1
    category = "addition"
    answer = operand1 + operand2
    fomula =  "Q#{count + 1}. #{operand1} + #{operand2} = "
  else
    category = "multiplication"
    answer = operand1 * operand2
    fomula =  "Q#{count + 1}. #{operand1} * #{operand2} = "
  end
  print fomula

  input = Integer(gets)

  while input != answer
    puts "not good..."
    miss += 1
    print fomula
    input = Integer(gets)
  end
  puts "right!"
  count += 1
end

solved_time = Time.now - start_time

score_text = "Total: #{count}, Miss: #{miss}, Time: #{solved_time}s"
puts "\nFinish!\n#{score_text}"

# === 結果を記録する === #
File.open("#{category}_history.txt", mode = "a") do |f|
  f.write("[#{Time.now.floor}] #{score_text}\n")
end
