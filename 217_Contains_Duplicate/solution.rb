# @param {Integer[]} nums
# @return {Boolean}

# solution1
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

# solution2
def contains_duplicate2(nums)
  return nums.length == nums.uniq.length ? false : true
end
