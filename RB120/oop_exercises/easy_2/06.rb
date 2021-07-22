=begin
Comparing Wallets

Consider the following broken code:

class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end

Modify this code so it works. Do not make the amount in the wallet
accessible to any method that isn't part of the Wallet class.
=end

class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end

  protected

  def amount  # or attr_reader :amount
    @amount
  end
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill'
else
  puts 'Bill and Penny have the same amount of money.'
end

=begin
Further Exploration
This example is rather contrived and unrealistic, but this type of situation
occurs frequently in applications. Can you think of any applications where
protected methods would be desirable?

Protected methods could be desirable when a class compares two objects
of the same class or use instance methods on the objects of the same class.
Before Ruby 2.7 self could not be called within an instance variable unless
the getter was public or protected (not private).

Note: calling bills_wallet.send(:amount) within a seperate class can access
protected information.
=end
