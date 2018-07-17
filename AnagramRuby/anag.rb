filename = "words.txt"
words = []

class String
  def is_anagram?(other)
    self.length == other.length && self.chars.sort == other.chars.sort
  end
end

File.open(filename, "r") do |file|
  file.each_line do |line|
  word = line.strip.downcase
  words << word unless word.empty?
  end
end
#words.uniq!
hash = {}
words.each do |word|
key = word.chars.sort
list = hash[key] || []
list << word
hash[key] = list
end

hash.select! do |key, value|
value.length > 1
end

anagrams = hash.values
anagrams.sort! do |a, b|
b.length - a.length
end

anagrams.each do |list|
puts list.join(", ")
end
puts "anagrams found: " + anagrams.length.to_s
