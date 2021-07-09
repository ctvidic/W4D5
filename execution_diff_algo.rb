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

    def largest_continuous_subsum
        arr = []
        self.each_with_index do |val,i1|
            self.each_with_index { |val2,i2| arr << self[i1..i2] if i2 >= i1 }
        end
        sums = arr.map{|subarr| subarr.sum}.max
    end

    #TIME COMPLEXITY: O(n^2)

    # def largest_continuous_subsum_two
        #list = [2, 3, -6, 7, -6, 7]
        # curr_max = 0
        # largest_max = 0
        # i=0
        # newArr=[]
        # (1..self.length).each do |int|
        #     newArr << self.combination(int).to_a
        # end
        # l = self.length-1
        # while i < l
        #     # curr_max = self[0..i].sum  
        #     if (self[i] + curr_max) > largest_max  # if adding current # to current max made it larger than largest max
        #         curr_max += self[i]                # just add that number to current max
        #     else                                   # if adding current # to current max made it smaller than largest max
                
                
        #     end        

        #     if curr_max > largest_max
        #         largest_max = curr_max
        #     else
        #         self = self[i..-1]
        #         i = 0
        #     end
        #     i += 1
        # end
        # largest_max
    # end

    
end

# list = [0, 3, 5, 4, -5, 10, 1, 90]
# p list.my_min
# p list.my_min_two

nums = [2, 3, -6, 7, -6, 7 ]         # largest = 5, -1

def largest_continuous_subsum_two(list)
    current = 0
    largest = 0
    i = 0
    while i < list.length                                              
        current += list[i]
        largest = current if current > largest
        current = 0 if current < 0
        i += 1
    end
    largest
end
#time complexity is O(n)
p largest_continuous_subsum_two(nums)



