a = (1..100).to_a
# b = 0
# a.each{|i| b += i}
# p b
p a.inject (0){|b,i| b+=i}
