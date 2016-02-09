## Elixir for Beginners
## http://elixirforbeginners.com
## by Ben Emson (February 2016)

# Ruby code example of data state implications
class BadBank
  attr_accessor :amount
  def initialize(amount)
    @amount = amount
  end

  def add_money(money)
    @amount += money
    puts "Adding money #{money} amount $#{amount}"
    sleep 0.5
  end

  def windfall!
    @amount += 10 if @amount >= 100
    puts "Windfall $#{amount}"
    sleep 0.5
    @amount
  end
end

# Alice sets up her bank account
bank = BadBank.new(10)
puts "Alice initial bank amount $#{bank.amount}"
t1 = Thread.new{8.times do bank.add_money(10) end}
t2 = Thread.new{8.times do bank.add_money(10) end}
t3 = Thread.new{8.times do bank.windfall! end}
t1.join
t2.join
t3.join
