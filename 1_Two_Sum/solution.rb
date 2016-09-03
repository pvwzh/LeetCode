# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  hash = Hash.new
  result = Array.new
  nums.each_with_index do |num, index|
    if hash[target-num] != nil
      result.push(hash[target-num], index)
      return result
    end
    hash[num] = index
  end
end


nums = [3,2,4]
target = 6
two_sum(nums, target)