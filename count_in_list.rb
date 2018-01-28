# Method name: count_in_list(list, item_to_count)
# Inputs:      1. a list of anything, 2. an item for us to count in the list
# Returns:     The number of times our item is contained in the input list
# Prints:      Nothing
#
# For example,
#   count_in_list([1,2,3], 1)  == 1
#   count_in_list([1,2,3], -1) == 0
#   count_in_list([1,1,1], 1)  == 3

# --- NOTE ---
# Ruby has a built-in method to do this, but the purpose of this kata is
# to write it yourself.
#
# See: http://www.ruby-doc.org/core-2.1.2/Array.html#method-i-count
# OPTION 1
# def count_in_list(list, item_to_count)
#   total = 0
#   list.each do |i|
#     if i === item_to_count
#       total += 1
#     end
#   end
#   return total
# end
# OPTION 2
def count_in_list(list, item_to_count)
list.count(item_to_count)
end

if __FILE__ == $PROGRAM_NAME
    p count_in_list(["z", "z", "b"], "z") == 2
    p count_in_list([1, 2, 3], 4) == 0
    p count_in_list([1, 2, 3], 1) == 1
end
