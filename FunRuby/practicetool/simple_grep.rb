pattern = Regexp.new(ARGV[0].encode("UTF-8"))
filename = ARGV[1]

# 改造前
# file = File.open(filename)
# file.each_line do |line|
#   if pattern =~ line
#     print line
#   end
# end
# file.close

# 行数取得
# File.open(filename, "r:UTF-8") do |file|
#   file.each_line do |line|
#     if pattern =~ line
#       print line
#     end
#   end
# end

# 文字数取得
# count = 0
# File.open(filename, "r:UTF-8") do |file|
#   file.each_line do |line|
#     if pattern =~ line
#       line.scan(pattern) do |s|   
#         count += 1
#       end
#       print line.gsub(pattern) {|str| "<<#{str}>>"}
#     end
#   end
# end

# 前後10文字を取得
# pattern = Regexp.new("(.{10})("+ARGV[0].encode("UTF-8")+")(.{10})")
# filename = ARGV[1]

# count = 0
# File.open(filename, "r:UTF-8") do |file|
#   file.each_line do |line|
#     line.scan(pattern) do |s|   
#       puts "#{s[0]}<<#{s[1]}>>#{s[2]}"
#       count += 1
#     end
#   end
# end

# 前後10文字を取得（修正）
# count = 0
# File.open(filename, "r:UTF-8") do |file|
#   file.each_line do |line|
#     line.scan(pattern) do |s|   
#       pre = "\u3000" * 10 + $`
#       post = $'
#       puts "#{pre[-10,10]}<<#{s}>>#{post[0,10]}"
#     end
#   end
# end

# 完成版
len = ARGV[2].to_i

count = 0
File.open(filename, "r:UTF-8") do |file|
  file.each_line do |line|
    line.scan(pattern) do |s|   
      pre = "\u3000" * len + $`
      post = $'
      puts "#{pre[-len,len]}<<#{s}>>#{post[0,len]}"
    end
  end
end

puts "count: #{count}"