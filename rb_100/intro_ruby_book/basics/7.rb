=begin
Exercise:
What does the following error message tell you?

SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
  from /usr/local/rvm/rubies/ruby-2.5.3/bin/irb:16:in `<main>'


Explanation:
The error message tells that there's a syntax error. The `)` 
is what Ruby finds unexpected in the code, which doesn't align 
with Ruby's syntax. Ruby expects `}`. For example, at the end 
of a hash `)` can be mistyped instead of `}`.

The code with the error:
h = { a: 1 )

To reproduce the error in IRB:
irb(main):010:0> h = { a: 1 )
/usr/local/Cellar/ruby/3.2.2_1/lib/ruby/3.2.0/irb/workspace.rb:119:
in `eval': (irb):10: syntax error, unexpected ')', expecting 
  '}' (SyntaxError) 


The code without error:
h = { a: 1 }

In IRB:
irb(main):011:0> h = { a: 1 }
=> {:a=>1}
=end

