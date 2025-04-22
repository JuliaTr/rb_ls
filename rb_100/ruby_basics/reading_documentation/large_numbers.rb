=begin

Resource: https://docs.ruby-lang.org/en/3.2/syntax/literals_rdoc.html#label-Number+Literals

Large numbers can be written two ways:
2345 
2_345

=end

p 2345 == 2_345 # true
p 1167893 == 1_167_893 # true



=begin

Further exploration:

Question: Is it okay to write the above number as `19_87_65_4321`?
Answer: yes, because in Ruby can be placed anywhere in the number.
=end

p 19_87_65_4321 == 1_987_654_321  # true
