=begin
Difficulty: Medium
Contributor: LeetCode
You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit.
Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
=end

# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}

class ListNode
    attr_accessor :val, :next
    def initialize(val)
        @val = val
        @next = nil
    end
end

def create_list(num)
  #puts "Creating List"
  array = num.to_s.reverse.chars
  #p array
  @l1 = ListNode.new(0)
  curr_l1 = @l1
  for i in (0..array.length-1)
    curr_l1.val = array[i].to_i
    if i < array.length-1
      curr_l1.next = ListNode.new(0)
      curr_l1 = curr_l1.next
    end
  end
  #p @l1
  return @l1
end

def printlist(list)
  if list.next != nil
    print list.val
    printlist(list.next)
  elsif list.val == 0
  else
    print list.val
  end
end



def add_two_numbers(l1, l2)

  l3 = ListNode.new(0)
  curr_l1 = l1
  curr_l2 = l2
  curr_l3 = l3


  while (curr_l1 != nil || curr_l2 != nil) do
=begin
    print "in While loop\n"
    print "l1: "
    p curr_l1
    print "l2: "
    p curr_l2
    print "l3: "
    p curr_l3
=end
    if curr_l1 == nil
      #puts "L1 is nil"
      curr_l3.val += curr_l2.val
      curr_l2 = curr_l2.next
      if curr_l3.val <= 9 && curr_l2 != nil
        curr_l3.next = ListNode.new(0)
        curr_l3 = curr_l3.next
      elsif curr_l3.val > 9
        curr_l3.val -= 10
        curr_l3.next = ListNode.new(1)
        curr_l3 = curr_l3.next
      end
    elsif curr_l2 == nil
      #puts "L2 is nil"
      curr_l3.val += curr_l1.val
      curr_l1 = curr_l1.next
      if curr_l3.val <= 9 && curr_l1 != nil
        curr_l3.next = ListNode.new(0)
        curr_l3 = curr_l3.next
      elsif curr_l3.val > 9
        curr_l3.val -= 10
        curr_l3.next = ListNode.new(1)
        curr_l3 = curr_l3.next
      end
    else
      #puts "Adding l1 and l2"
      curr_l3.val += curr_l1.val + curr_l2.val
      curr_l1 = curr_l1.next
      #p curr_l1
      curr_l2 = curr_l2.next
      #p curr_l2

      if curr_l3.val > 9
        curr_l3.val -= 10
        curr_l3.next = ListNode.new(1)
        curr_l3 = curr_l3.next
      elsif curr_l1 != nil || curr_l2 != nil
        curr_l3.next = ListNode.new(0)
        curr_l3 = curr_l3.next
      end


    end
  end
  #print "printing"
  #p l3
  return l3
end



num1 = 9
num2 = 9999891
sum = num1 + num2
print "Reverse sum is: " + sum.to_s.reverse + "\n"

l1 = create_list(num1)
l2 = create_list(num2)
puts "Printing List: "
printlist(l1)
puts
printlist(l2)
=begin
l1 = ListNode.new(9)
l1.next = ListNode.new(9)
l1.next.next = ListNode.new(9)

l2 = ListNode.new(5)
l2.next = ListNode.new(6)
l2.next.next = ListNode.new(4)
=end


l3 = add_two_numbers(l1, l2)
#printlist(l3)

#print "l3 is "
#p l3
puts
print "Reverse sum is: " + sum.to_s.reverse + "\n"
print "Final value is: "
printlist(l3)

#print l3.val, l3.next.val, l3.next.next.val
