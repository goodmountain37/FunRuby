$x = 0

def dice
  return Random.rand(6) + 1
end

def dice10
  10.times do |i|
    $x += dice
  end
  $x
end

p dice10