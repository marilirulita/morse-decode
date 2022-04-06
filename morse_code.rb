$morse = {a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.', f: '.
.-.', g: '--.', h: '....', i: '..', j: '.---', k: '-.-', l: '.-..', m: '--', n: 
'-.', o: '---', p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-', u: '..-', v: '
...-', w: '.--', x: '-..-', y: '-.--', z: '--..'}

def decode_char(str)
  $morse.each {|k, v| return k.upcase if v == str}
end

def decode_word(str)
  letters = str.split("\s")
  solution = ""
  letters.each do |l|
    solution += decode_char(l).to_s
  end
  solution
end

puts decode_word("-- -.--")