$morse = {a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.', f: '.
.-.', g: '--.', h: '....', i: '..', j: '.---', k: '-.-', l: '.-..', m: '--', n: 
'-.', o: '---', p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-', u: '..-', v: '
...-', w: '.--', x: '-..-', y: '-.--', z: '--..'}

def decode_char(str)
  $morse.each {|k, v| puts k.upcase if v == str}
end

decode_char(".-")
decode_char("..")
decode_char("--..")