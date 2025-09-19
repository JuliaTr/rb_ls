## Further exploration:
# Can you write a solution that keeps the period printed at 
# the end of each sentence?
# (learned from others)
sentences = text.split(/(?<=\.)|(?<=\?)|(?<=!)/)



# Find the longest word.
text = File.read('sample_text.txt')
largest_word = text.split.uniq.max_by { |word| word.size }
p largest_word   # "proposition" 
# the first word encountered, there're more words with the length

number_of_characters = largest_word.size
p number_of_characters  # 11



# Find the longest paragraph.
text = File.read('sample_text.txt')
paragraphs = text.split(/\n\n/)
# p sentences

longest_paragraph = paragraphs.max_by { |paragraph| paragraph.split.size }
p longest_paragraph

number_of_words = longest_paragraph.split.size
p number_of_words   # 173
