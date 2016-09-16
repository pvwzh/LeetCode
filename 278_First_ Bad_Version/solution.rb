# The is_bad_version API is already defined for you.
# @param {Integer} version
# @return {boolean} whether the version is bad
# def is_bad_version(version):

# @param {Integer} n
# @return {Integer}
def first_bad_version(n)
  first = 1
  last = n
  while first < last
    mid = (first+last)/2
    if is_bad_version mid
      if !is_bad_version mid-1
        mid
      end
      last = mid-1
    else
      if is_bad_version mid+1
        mid+1
      end
      first = mid+1
    end
  end
  first
end
