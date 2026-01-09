# =begin
# Modify this code so it works. Do not make the amount in the 
# wallet accessible to any method that isn't part of the Wallet 
# class.
# =end

# class Wallet
#   include Comparable

#   def initialize(amount)
#     @amount = amount
#   end

#   def <=>(other_wallet)
#     amount <=> other_wallet.amount
#   end
# end

# bills_wallet = Wallet.new(500)
# pennys_wallet = Wallet.new(465)
# if bills_wallet > pennys_wallet
#   puts 'Bill has more money than Penny.'
# elsif bills_wallet < pennys_wallet
#   puts 'Penny has more money than Bill.'
# else
#   puts 'Bill and Penny have the same amount of money.'
# end

# =begin
# `<=>': undefined local variable or method `amount' for 
# #<Wallet:0x000000010dc356c8 @amount=500> (NameError)
# =end



## Bug fix
module Comparable
end

class Wallet
  include Comparable

  def initialize(amount)
    @amount = amount
  end

  def <=>(other_wallet)
    amount <=> other_wallet.amount
  end

  protected

  attr_reader :amount
end

bills_wallet = Wallet.new(500)
pennys_wallet = Wallet.new(465)
if bills_wallet > pennys_wallet
  puts 'Bill has more money than Penny.'
elsif bills_wallet < pennys_wallet
  puts 'Penny has more money than Bill.'
else
  puts 'Bill and Penny have the same amount of money.'
end

