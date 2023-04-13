def decode_letter(encrypted_char)
  code_char_map = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
    '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
    '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
    '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
    '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
    '-.--' => 'Y', '--..' => 'Z'
  }
  code_char_map[encrypted_char]
end

def decode_word(encrypted_word)
  plain_text = ''
  encrypted_word.split.each do |encrypted_char|
    plain_text += decode_letter(encrypted_char)
  end
  plain_text
end

def decode(encrypted_text)
  decrypted_text = []

  encrypted_text.split('   ').each do |encrypted_word|
    decrypted_text.push(decode_word(encrypted_word))
  end
  decrypted_text.join(' ')
end

print decode('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
