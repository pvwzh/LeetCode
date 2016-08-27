# @param {Integer} n
# @return {Boolean}
def can_win_nim(n)
  if n%4==0
    return false
  else
    return true
  end
end