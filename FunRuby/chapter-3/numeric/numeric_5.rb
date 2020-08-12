def prime?(num)
  return false if num < 2

  2.upto(Math.sqrt(num)) do |i|
    return false if num % i == 0
  end

  return true
end

1.upto(ARGV[0].to_f) do |n|
  puts n if prime?(n)
end