# Polymorphism with Modules

module Taggable
  def add_tag(tag)
    @tags ||= []
    @tags << tag
  end

  def tags
    @tags || []
  end
end

class Photo
  include Taggable
end

class BlogPost
  include Taggable
end

photo = Photo.new
photo.add_tag('sunset')
photo.add_tag('beach')

post = BlogPost.new
post.add_tag('ruby')
post.add_tag('oop')

puts "Photo tags: #{photo.tags.join(', ')}"
puts "Blog post tags: #{post.tags.join(', ')}"



## Experiments:
name = 'Yuliia'
name ||= "Guest"
puts name # Yuliia