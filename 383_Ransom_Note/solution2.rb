# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  if ransom_note==magazine||ransom_note==""
    return true
  else
    dic = Hash.new(0)
    magazine.each_char do |i|
      dic[i] = dic[i] + 1
    end

    ransom_note.each_char do |i|
      dic[i] = dic[i] - 1
      if dic[i]<0
        return false
      end
    end
    return true
  end
end