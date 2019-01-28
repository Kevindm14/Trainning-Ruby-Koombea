class Anagram
  def initialize(lines)
    @lines = lines
  end

  def grouped_words
    @grouped_words ||= @lines.group_by { |word| word.chars.sort.join('') }
  end

  def search(query)
    grouped_words.map { |key, words| words.include?(query) ? words : nil }.flatten.compact
  end

  def self_anagrams
    grouped_words.select{|_, v| v.size > 1}
  end

  def self.self_no_anagrams
    grouped_words.select{|_, v| v.size == 1}
  end
end

words = File.readlines('words.txt').map do |line|
  word = line.strip.downcase
  word unless word.empty?
end.compact

puts 'Find anagram: '
query = gets.chomp.to_s

anagrams = Anagram.new(words)
p anagrams.search(query)

anagrams.self_anagrams.each{|k, v| puts " #{v.join(', ')}\n"}
p "no amagrams: #{anagrams.self_no_anagrams.map{|_, v| v}.flatten.join(', ')}"