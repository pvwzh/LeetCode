# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersection(nums1, nums2)
  sta = Hash.new(0)
  result = []
  for num in nums1
    if sta[num] == 0
      sta[num] = 1
    end
  end
  for num in nums2
    if sta[num] == 1
      result.push(num)
      sta[num] = 0
    end
  end
  return result
end