# a2 = []
# 100.times{|i| a2[i] = (i + 1) * 100}
# 100.times{|i| a2[i] = a2[i] * 100}

a = (1..100).to_a
a2 = a.collect{|i| i * 100}
p a2

a.collect!{|i| i * 100}
p a