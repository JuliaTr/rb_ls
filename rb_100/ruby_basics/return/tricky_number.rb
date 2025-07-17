# What will the following code print? Why?

def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number   # 1

=begin
The output is `1`.

On line 11, the return value from the `tricky_number` method 
(`1`) is passed as an argument to the `put` method and output
to the console.

Lines 3-9 contain `tricky_number` method definition. Inside the
method's body there's an `if/else` statement. Because the condition 
`true` is a truthy value, the `if` branch is evaluated and executed, 
returnning `1` on line 5. The variable assignment `number = 1` 
returns the value it was assigned to the variable. So, the `if/else` 
statement is the only expression in the method, the value it 
returns (`1`) is the return value from the method. The `else`
clause is ignored. That's why the output is `1`.
=end
