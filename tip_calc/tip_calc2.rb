"How much did your meal cost?"
meal = Float(gets)
"How much is the tax rate where you are?"
tax_rate = Float(gets)
"What percentage of tip would you like to leave?"
tip_rate = Float(gets)

tax_value = meal * (tax_rate / 100)
after_tax = meal + tax_value
tip_value = meal + (tip_rate / 100)
total_cost = after_tax + tip_value

puts "the meal cost: #{meal}"
puts "the tax value is: #{tax_value}"
puts "the tip is: #{tip_value}"
puts "the total cost is: #{total_cost}"