# Implement your procedurxl solution here!
def is_palindrome?(num)
    num.to_s.reverse.to_i == num
end

def largest_palindrome_product
    max = 0
    (100..999).each do |first|
      (100..999).each do |second|
        product = first * second
        if is_palindrome?(product) && product > max
          max = product
        end
      end
    end
    max
end
