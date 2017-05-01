# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  num_hash = {}
  nums.each do |num|
    return true if num_hash.has_key?(num)
    num_hash[num] = 1
  end
  return false
end

input = "12 22 8 4 30 2 4 8 16 32 64"
nums = input.split(" ")
p nums
p contains_duplicate(nums)
