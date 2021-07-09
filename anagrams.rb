require "byebug"
str1 = "gizmo"
str2 = "sally"

def first_anagram(str1, str2)
    perm1 = str1.split("").permutation.to_a
    perm1.include?(str2.split(""))
end
#TIME COMPLEXITY (N*N!)

def second_anagram(str1,str2)
    str1.each_char.with_index do |char, i|
        if str2.include?(char)
            idx = str2.index(char)
            str2[idx] = ""
        end 
    end
    return true if str2 == ""
    false
end

#TIME COMPLEXITY N^2

def third_anagram(str1, str2)
    a1 = str1.split("")
    a2 = str2.split("")
    quicksort(a1) == quicksort(a2)
end

def quicksort(stringArr)
    alphabet = ('a'..'z').to_a

    return stringArr.dup if stringArr.length <= 1
    pivot = stringArr[0]
 
    left = stringArr[1..-1].select{|char| alphabet.index(char) < alphabet.index(pivot)}
    right = stringArr[1..-1].select{|char2| alphabet.index(char2) >= alphabet.index(pivot)}

    sortedLeft = quicksort(left)
    sortedRight = quicksort(right)

    sortedLeft + [pivot] + sortedRight
end
# p first_anagram(str1, str2)
#TIME COMPLEXITY O N^2

def fourth_anagram(str1, str2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    str1.each_char do |char|
        hash1[char]+=1
    end
    str2.each_char do |char|
        hash2[char]+=1
    end
    hash1 == hash2
end

#TIME COMPLEXITY O(N)

def fourth_anagram2(str1,str2)
    hash = Hash.new(0)

    str1.each_char do |char|
        hash[char]+=1
    end
    str2.each_char do |char|
        hash[char]-=1
    end
    return true if hash.values.all?{|value| value == 0}
    false
end

p fourth_anagram2("sally", "gizmo")