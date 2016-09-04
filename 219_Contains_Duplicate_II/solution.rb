# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)
  len = nums.length
  hash = Hash.new(-1)
  nums.each_with_index do |num, index|
    if hash[num]!=-1 && index-hash[num]<=k
      return true
    end
    hash[num] = index
  end
  return false
end