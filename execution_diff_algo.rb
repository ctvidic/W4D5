require "byebug"

#my_min

class Array

    def my_min
        self.each_with_index do |val1, i|
            is_min = true         
            self.each_with_index do |val2, i2|
                if val1 > val2
                    is_min = false
                    break
                end
            end
            return val1 if is_min 
        end
    end
    # TIME COMPLEXITY: O(n^2)

    def my_min_two
        min = self.first
        self.each { |el| min = el if el < min }
        min
    end
    #time complexity: O(n)

end


list = [0, 3, 5, 4, -5, 10, 1, 90]
p list.my_min
p list.my_min_two