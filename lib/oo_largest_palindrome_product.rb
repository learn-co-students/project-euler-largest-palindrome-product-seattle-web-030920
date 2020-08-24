# Implement your object-oriented solution here!
class LargestPalindromeProduct
    def answer
        max = 0
        (100..999).each do |first|
            (100..999).each do |second|
                product = first * second
                if product.to_s.reverse.to_i == product && product > max
                    max = product
                end
            end
        end
        max
    end
end
