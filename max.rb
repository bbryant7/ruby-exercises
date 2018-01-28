def max (list)
  current_max = list[0]
  list.each do |i|
    if i > current_max
      current_max = i
    end
  end
  return current_max
end


# This "if" statement will be gobblededook, but it means:
#   "If this file is the file currently being executed, then..."
#
# __FILE__ is always the name of the current file.
# $0 is always the name of the program beind executed.
#
# This means that if we run this file directly, i.e.,
#     ruby max.rb
# then everything below will be executed.
#
# If, however, we include this file in another Ruby program via
#     require 'max'
# then the below will *not* be executed

if __FILE__ == $PROGRAM_NAME
  # "p" prints something to the screen in a way that's better for debugging

  p max([1, 2, 3]) == 3
  p max([0, -100, 50, -200]) == 50
  p max([-200, -400, -100, -300]) == -100
  p max([0]) == 0
  p max([1]) == 1
  p max([-1]) == -1
  p max([11, 11, 11]) == 11
  p max([-22, -11, -22]) == -11
end

# ANSWER

# def max(list)
#   max_so_far = list.first  # or, equivalently, list[0]
#   list.each do |item|      # or, equivalently, for item in list
#     if item > max_so_far   # if current item is greater than max so far
#       max_so_far = item    #   set max so far to current item
#     end
#   end
#
#   return max_so_far        # we've gone through entire list, return max so far
# end
