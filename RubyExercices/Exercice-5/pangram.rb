class Pangram
  def self.pangram_l(text)
    return true if ('a'..'z').all? {|letter| text.include?(letter) }
  end
end 

p Pangram.pangram_l("The quick brown fox jumps over the lazy dog")
  