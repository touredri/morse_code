morse_code = {
  '.-' => 'A',
  '-...' => 'B',
  '-.-.' => 'C',
  '-..' => 'D',
  '.' => 'E',
  '..-.' => 'F',
  '--.' => 'G',
  '....' => 'H',
  '..' => 'I',
  '.---' => 'J',
  '-.-' => 'K',
  '.-..' => 'L',
  '--' => 'M',
  '-.' => 'N',
  '---' => 'O',
  '.--.' => 'P',
  '--.-' => 'Q',
  '.-.' => 'R',
  '...' => 'S',
  '-' => 'T',
  '..-' => 'U',
  '...-' => 'V',
  '.--' => 'W',
  '-..-' => 'X',
  '-.--' => 'Y',
  '--..' => 'Z'
}

def decode_char(string, morse_code)
  print morse_code[string]
end

def decode_word(morse, morse_code)
  print "#{morse.split.map { |char| decode_char(char, morse_code) }.join} "
end

def decode_message(message, morse_code)
  print message.split('   ').map { |word| decode_word(word, morse_code) }.join(' ')
end

decode_char('.-', morse_code)
print(' ')
decode_word('-- -.--', morse_code)
print(' ')
decode_message('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...', morse_code)
