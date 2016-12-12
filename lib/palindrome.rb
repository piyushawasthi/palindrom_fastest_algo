class Palindrome
  def is_palindrome?(str)
    return false if str.size < 1
    first_index = 0
    last_index = str.size - 1
    while (first_index < last_index) do
      first_char, first_index = firstChar(str, first_index)
      last_char, last_index = lastChar(str, last_index)
      if first_char.downcase != last_char.downcase
        return false
        break
      end
      first_index += 1
      last_index -= 1
    end
    return true
  end

  # Get First Valid Char and position
  def firstChar(str, f_index)
    if alpha(str[f_index])
      return str[f_index], f_index
    end
    firstChar(str, f_index += 1) 
  end

  # Get Last Valid Char and position
  def lastChar(str, l_index)
    if alpha(str[l_index])
      return str[l_index], l_index
    end
    lastChar(str, l_index -= 1)
  end

  # Check valid char
  def is_alpha?(x)
    x >= 'a' && x <= 'z'  
  end

  # returns alphabet or nil
  def alpha(x)
    c = x.downcase
    is_alpha?(c) ? c : false
  end
end