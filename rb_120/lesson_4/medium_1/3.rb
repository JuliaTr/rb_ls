=begin
One way to fix this is to change `attr_reader` to `attr_accessor` 
and change quantity to `self.quantity`.

Is there anything wrong with fixing it this way?
=end

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0  # issue
  end
end


# issue is fixed, but public interface is altered (see better option in 2.rb)
class InvoiceEntry
  attr_accessor :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    self.quantity = updated_count if updated_count >= 0
  end
end

bob = InvoiceEntry.new('chocolate bar', 1)
p bob.quantity  # 1

bob.update_quantity(3)
p bob.quantity  # 3    (it shouldn't be altered outside of the class)

bob.quantity = -5
p bob.quantity  # -5


=begin
Changing `attr_reader` on `attr_accessor` and `self.quantity = update_count` 
we're altering the public interfaces of the class. We're now 
allowing clients of the class to change the quantity directly rather
than by going through the `update_quantity` method.

Altering quantity is possible outside of the class, bypassing the 
`update_quantity`, which is expected not to update `@quantity` if it's
less than `0`.
=end
