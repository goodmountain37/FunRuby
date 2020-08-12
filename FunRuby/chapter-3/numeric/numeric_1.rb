
def cels_to_fahr(cles)
  return cles * 9.0 / 5.0 + 32.0
end

puts cels_to_fahr(ARGV[0].to_i)