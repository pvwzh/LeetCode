# @param {Integer[]} numbers
# @param {Integer} target
# @return {Integer[]}
def two_sum(numbers, target)
  hash = Hash.new
  result = Array.new
  numbers.each_with_index do |num, index|
    if hash[target-num] != nil
      result.push(hash[target-num]+1, index+1)
      return result
    end
    hash[num] = index
  end
end