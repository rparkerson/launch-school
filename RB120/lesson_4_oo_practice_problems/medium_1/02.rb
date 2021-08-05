=begin
Question 2

Alan created the following code to keep track of items for a shopping cart
application he's writing:

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    quantity = updated_count if updated_count >= 0
  end
end

Alyssa looked at the code and spotted a mistake. "This will fail when
update_quantity is called", she says.

Can you spot the mistake and how to address it?

The `update_quantity` method has a local variable `quantity` that is being 
set to the `updated_count` object. This variable is not then used and this
method just returns the same object that was passed in as an argument.
This is likely a typo and a setter method for quantity= could be set
with attr_writer or attr_accessor with self prepended in the 'update_quantity`
method, or the instance variable @quantity could be used instead.
=end

class InvoiceEntry
  attr_reader :quantity, :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    @quantity = updated_count if updated_count >= 0
  end
end

# alternative fix
class InvoiceEntry
  attr_accessor :quantity
  attr_reader :product_name

  def initialize(product_name, number_purchased)
    @quantity = number_purchased
    @product_name = product_name
  end

  def update_quantity(updated_count)
    # prevent negative quantities from being set
    self.quantity = updated_count if updated_count >= 0
  end
end
