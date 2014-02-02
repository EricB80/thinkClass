puts "How much did your meal cost?"
meal = Float(gets)
puts "How much is the tax rate where you are?"
tax_rate = Float(gets)
puts "What percentage of tip would you like to leave?"
tip_rate = Float(gets)

def calc_value(rate, amount)
  return (amount * (rate / 100)).round(2)
end

def force_currency(num)
  return sprintf("%.02f", num)
end

tax_value = calc_value(meal, tax_rate)
after_tax = tax_value + meal
tip_value = calc_value(meal, tip_rate)
total_cost = (after_tax + tip_value)

puts "the meal cost: $" + force_currency(meal)
puts "the tax value is: $" + force_currency(tax_value)
puts "the tip is: $" + force_currency(tip_value)
puts "the total cost is: $" + force_currency(total_cost)