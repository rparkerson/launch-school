=begin
Question 1

Ben asked Alyssa to code review the following code:

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end

Alyssa glanced over the code quickly and said - "It looks fine, except that you
forgot to put the @ before balance when you refer to the balance instance
variable in the body of the positive_balance? method."

"Not so fast", Ben replied. "What I'm doing here is valid - I'm not missing
an @!"

Who is right, Ben or Alyssa, and why?

The code could be run with or without the @ sign because there is a getter
method in place in the attr_reader :balance that uses the `balance` method
to access the @balance instance variable.

I expect Ben's statement is right because what he is doing is valid and it is
not "missing" the @ sign, since if it is an optional @ symbol in this case.
Due to the way Alyssa phrased her statement accusing Ben that he "forgot" the @
sign hints that Alyssa might be incorrect in that accusation.
Ben's claim that it was a deliberate choice is supported by the
attr_reader being in place. This assumption on Alyssa's part in her statement
is technically wrong based on where the evidence points, and it could be 
unprofessional depending on the tone of voice used, and situational context.
Ben's response may be interpretted as combative and slightly defensive and
the raising of his voice was not called for. Ben may be at fault in being
unprofessional depending on his tone of voice and situational circumstances.
=end

class BankAccount
  attr_reader :balance

  def initialize(starting_balance)
    @balance = starting_balance
  end

  def positive_balance?
    balance >= 0
  end
end
