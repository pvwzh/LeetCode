# @param {Integer} a
# @param {Integer} b
# @return {Integer}
def get_sum(a, b)

  max_int = 0x7FFFFFFF
  min_int = 0x80000000
  mask = 0x100000000

  while b != 0
    carry = a & b
    a = (a ^ b) % mask
    b = (carry << 1) % mask
  end
  if a <= max_int
    puts a
    return a
  else
    puts '#'
    puts ~((a % min_int) ^ max_int)
    return ~((a % min_int) ^ max_int)
  end

end
