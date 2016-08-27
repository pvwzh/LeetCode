# @param {String} s
# @return {Integer}
def first_uniq_char(s)
  record = Hash.new(0)
  s.each_char do |c|
    record[c] += 1
  end
  result = -1
  s.each_char.with_index do |c, index|
    if record[c] == 1
      result = index
      break
    end
  end
  return result
end