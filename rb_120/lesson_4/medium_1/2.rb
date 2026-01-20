# Can you spot the mistake and how to address it?

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0  # issue is here
  end
end



## Solutiom
# Option 1 (with `self`):
class InvoiceEntry
  attr_accessor :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    self.quantity = updated_count if updated_count >= 0
  end
end

bob = InvoiceEntry.new('chocolate bar', 1)
p bob.quantity  # 1

bob.update_quantity(3)
p bob.quantity  # 3    (it shouldn't be altered outside of the class)

bob.quantity = -5
p bob.quantity     # -5

=begin
`self.quantity` is referencing the setter and getther methods provided
by `attr_accessor`.
=end


# Option 2
class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    @quantity = updated_count if updated_count >= 0
  end
end

bob = InvoiceEntry.new('chocolate bar', 1)
p bob.quantity  # 1

bob.update_quantity(3)
p bob.quantity  # 3

bob.update_quantity = -5
p bob.quantity
=begin
undefined method `update_quantity=' for #<InvoiceEntry:0x0000000101885340 
@quantity=3, @product_name="chocolate bar"> (NoMethodError)
=end

bob.update_quantity(-5)
p bob.quantity            # 1
