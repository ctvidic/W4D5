require "byebug"
str1 = "gizmo"
str2 = "sally"

def first_anagram(str1, str2)
    perm1 = str1.split("").permutation.to_a
    perm1.include?(str2.split(""))
end
# p first_anagram(str1, str2)

