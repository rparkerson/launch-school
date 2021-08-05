=begin
Question 3

In the last question Alan showed Alyssa this code which keeps track of items
for a shopping cart application:

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    quantity = updated_count if updated_count >= 0
  end
end

Alyssa noticed that this will fail when update_quantity is called. Since
quantity is an instance variable, it must be accessed with the @quantity
notation when setting it. One way to fix this is to change attr_reader to
attr_accessor and change quantity to self.quantity.

Is there anything wrong with fixing it this way?

From an accessibility perspective `@product_name` might not need setter
permissions which it would now have. Also, the quantity could be updated
with the public quantity= setter method and this would bypass the 
guard close or other functionality implemented in the `update_quantity`
method as well.

provided answer:
Nothing incorrect syntactically. However, you are altering the public
interfaces of the class. In other words, you are now allowing clients of
the class to change the quantity directly (calling the accessor with the
instance.quantity = <new value> notation) rather than by going through the
update_quantity method. It means that the protections built into the
update_quantity method can be circumvented and potentially pose problems
down the line.

=end

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

invoice1 = InvoiceEntry.new('tacos', 3)
p invoice1.quantity

invoice1.update_quantity(6)
p invoice1.quantity
