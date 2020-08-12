
i = 0

def fahr_to_cels(fahr)
  return (fahr.to_i - 32.0) * 5.0 / 9.0
end

100.times do
  i += 1
  print i, " ", fahr_to_cels(i), "\n"
end