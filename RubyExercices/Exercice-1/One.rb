 class TwoFer
   def self.twofer 
    print "Enter a name: "
   nombre = gets.chomp
    if nombre == "Alice"
      puts "One for Alice, one for me."
     else
      puts "One for you, one for me."
    end
    nombre 
   end 
 end
   
 TwoFer.twofer