
class Raindrops
  def factor(num)
    out = ""
    out << "Pling" if num % 3 == 0
    out << "Plang" if num % 5 == 0
    out << "Plong" if num % 7 == 0
    out.length == 0 ? "#{num}" : out
  end
end
rain = Raindrops.new
p rain.factor(28)


