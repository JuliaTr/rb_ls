=begin
Practice Problem 2
How would you order this array of hashes based on the year 
of publication of each book, from the earliest to the 
latest?
=end

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

result = books.sort_by do |inner_hash|
  inner_hash[:published]
end

p result
# [{:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"}, 
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"}, 
# {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"}, 
# {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}]

p books
# [{:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}, 
# {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"}, 
# {:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"}, 
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"}]



### Experiments:
result = books.sort_by do |inner_hash|
  inner_hash[:published].to_i  # no need to convert into integers
end

p result
# [{:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"}, 
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"}, 
# {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"}, 
# {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}]

p books
# [{:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}, 
# {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"}, 
# {:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"}, 
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"}]
