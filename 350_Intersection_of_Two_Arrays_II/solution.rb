# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
  hash = Hash.new(0)
  same = Array.new
  for item in nums1
    hash[item] += 1
  end
  for item in nums2
    if hash[item]-1 >=0
      same.push item
    end
    hash[item] -= 1
  end
  return same
end