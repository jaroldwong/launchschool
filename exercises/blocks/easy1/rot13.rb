ENCRYPTED_NAMES = [
'Nqn Ybirynpr',
'Tenpr Ubccre',
'Nqryr Tbyqfgvar',
'Nyna Ghevat',
'Puneyrf Onoontr',
'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
'Wbua Ngnanfbss',
'Ybvf Unyog',
'Pynhqr Funaaba',
'Fgrir Wbof',
'Ovyy Tngrf',
'Gvz Orearef-Yrr',
'Fgrir Jbmavnx',
'Xbaenq Mhfr',
'Wbua Ngnanfbss',
'Fve Nagbal Ubner',
'Zneiva Zvafxl',
'Lhxvuveb Zngfhzbgb',
'Unllvz Fybavzfxv',
'Tregehqr Oynapu'
]

def rot13(text)
  decrypted_text = []

  text.chars.each do |char|
    decrypted_text << decrypt(char)
  end

  decrypted_text.join
end

def decrypt(char)
  if ('a'..'m').include?(char) || ('A'..'M').include?(char)
    (char.ord + 13).chr
  elsif ('n'..'z').include?(char)  || ('N'..'Z').include?(char)
    (char.ord - 13).chr
  else
    char
  end
end

ENCRYPTED_NAMES.each do |name|
  puts rot13(name)
end
