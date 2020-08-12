require "open-uri"

url = "https://www.aozora.gr.jp/cards/000009/files/8_31220.html"
filename = "akagi.html"

File.open(filename, "wb:UTF-8") do |f|
  text = open(url, "r:UTF-8").read
  f.write text
end