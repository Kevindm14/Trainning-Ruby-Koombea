require 'Prime'
class Prim
  def sum_primos
    Prime.each(2000000).sum
  end
end


prims = Prim.new
p prims.sum_primos