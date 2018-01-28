# Method name: longest_string(list)
# Inputs:      a list of strings
# Returns:     the longest string in the list
# Prints:      Nothing
#
# For example, longest_string(["a", "zzzz", "c"]) should return "zzzz" since
# the other strings are 1 character long and "zzzz" is 4 characters long.
#
# To get the length of a string in the variable str, call str.length
# For example,
#   str = "zzzz"
#   str.length == 4

def longest_string(list)
  longest_word = list[0]
  list.each do |word|
    if word.length > longest_word.length
      longest_word = word
    end
  end
  return longest_word
end

if __FILE__ == $PROGRAM_NAME
    p longest_string(["z", "skjfhaslkdjf", "dfdf"]) == "skjfhaslkdjf"
    p longest_string(["banana", "banana", "blank"]) == "banana"
    p longest_string(["cake", "jake", "ant"]) == "cake"
    p longest_string(["z", "blehhhhhh", "hippoooooooo"]) == "hippoooooooo"
end
