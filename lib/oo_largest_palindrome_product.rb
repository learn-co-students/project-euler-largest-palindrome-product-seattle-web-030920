
class LargestPalindromeProduct
def answer
    max=111*111
    (100..999).each do |first|
        (100..999).each do |second|
          product = first * second
          if isPalindrome(product) && product > max
            max = product
          end
        end
      end
      max
end

def isPalindrome (num)
    rev = 0
    r = num
    while r != 0
        last_digit = r%10
        rev = rev*10 + last_digit
        r /= 10
    end
    if rev == num
        return true 
    else 
        return false 
    end
end
end