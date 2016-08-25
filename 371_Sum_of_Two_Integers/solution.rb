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

# get_sum(9, 3)
# get_sum(9, 0)
get_sum(0, 9)
get_sum(1, -1)
# get_sum(2, -2)
get_sum(-14, 16)
get_sum(-12, -8)
# get_sum(-2, -1)
# get_sum(-2, 0)
