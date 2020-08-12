str = "Ruby is an object oriented programming language"
ary = str.split
p ary.sort{|a,b| a.downcase <=> b.downcase}
p ary.sort_by{|a| a.downcase}