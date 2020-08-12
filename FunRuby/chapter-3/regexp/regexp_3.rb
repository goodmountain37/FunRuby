def word_capitalize(str)
  str.split(/\-/).collect{|w| w.capitalize}.join('-')
end

p word_capitalize("in-replay-to")
p word_capitalize("X-MAILER")