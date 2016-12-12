require './lib/palindrome'

pal = Palindrome.new

# write all test cases
puts (pal.is_palindrome?("A nut for a jar of tuna") == true)
puts (pal.is_palindrome?("A Santa at Nasa") == true)
puts (pal.is_palindrome?("A Santa dog lived as a devil God at NASA.") == true)
puts (pal.is_palindrome?("sdfsfdsf") == false)
puts (pal.is_palindrome?("sdfsfdsf") == true)