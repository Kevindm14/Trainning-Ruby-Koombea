class Isbn_check
  def initialize(isbn)
    @isbn = isbn
  end 

  def check_isbn
    isbn_numbers = @isbn.scan(/\w/).select{|a| [*0..9].map(&:to_s).include? a or a == 'X'}
    i = 11  
    #total = isbn_numbers.inject(0){|acum, a| acum + ((a == "X" ? 10 : a.to_i) * i -= 1)}
    # isbn_numbers = @isbn.scan(/\d/)
    total = 11  
    acuma = 0
    isbn_numbers.each do |a|
      a = 10 if a == 'X'
      acuma += a.to_i * (total -= 1)
    end
    if acuma % 11 == 0
      puts "#{isbn_numbers.join('')} is VALID"
    else 
      puts "#{isbn_numbers.join('')} is INVALID" 
    end
    
  end
end

Isbn_check.new('cxgdfh080241088X').check_isbn
