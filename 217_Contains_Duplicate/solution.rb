# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  hash = Hash.new(0)
  for num in nums
    if hash[num] == 1
      return true
    else
      hash[num] += 1
    end
  end
  return false
end


nums = [2]
if contains_duplicate(nums)
  p true
else
  p false
end