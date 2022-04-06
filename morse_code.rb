def decode_char(str)
  morse = { a: '.-', b: '-...', c: '-.-.', d: '-..', e: '.', f: '..-.', g: '--.', h: '....', i: '..', j: '.---', k: '-.-', l: '.-..', m: '--', n: '-.', o: '---', p: '.--.', q: '--.-', r: '.-.', s: '...', t: '-', u: '..-', v: '...-', w: '.--', x: '-..-', y: '-.--', z: '--..' }
  morse.each { |k, v| return k.upcase if v == str }
end

def decode_word(str)
  letters = str.split
  solution = ''
  letters.each do |l|
    solution += decode_char(l).to_s
  end
  solution
end

def decode_message(str)
  words = str.split('   ')
  solution = ''
  words.each do |w|
    solution += decode_word(w) + ' '
  end
  solution
end

puts decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
