# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  if ransom_note==magazine||ransom_note==""
    return true
  else
    ransom_note_new = ransom_note.chars.sort.join
    magazine_new = magazine.chars.sort.join
    rs_index = 0
    rs_len = ransom_note_new.length
    magazine_new.each_char do |i|
      if i == ransom_note_new[rs_index]
        rs_index+=1
        if rs_index == rs_len
          return true
        end
      end
    end
    return false
  end
end

# can_construct("", "") # true
# can_construct("", "a") # true
# can_construct("a", "b") # false
# can_construct("aa", "ab") # false
# can_construct("aa", "aab") # true
# can_construct("bjaajgea", "affhiiicabhbdchbidghccijjbfjfhjeddgggbajhidhjchiedhdibgeaecffbbbefiabjdhggihccec")