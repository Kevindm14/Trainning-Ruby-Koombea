class Anagram
  @filename = 'words.txt';
  @words = File.readlines(@filename).collect { |line| line.chomp.downcase }

  def self.filename=(filename)
    @filename = filename
  end

  def self.extract_anagrams(words = @words)
    @words_by_anagram = words.uniq.inject(Hash.new []) do |anagrams, word|
      key = word.chars.sort.join
      anagrams[key] += [word]
      anagrams
    end
     @words_by_anagram.delete_if { |_, words| words.count == 1 }
   end

  if ARGV.size == 1
    if File.exists?(ARGV.first.to_s)
      anagram_set = Anagram.extract_anagrams
      anagram_set.each do |key, words|
      output = ''
      words.each do |word|
      output += word + ' '
      end
      output += "\n"
      puts output
      end
    end
  end
end
 