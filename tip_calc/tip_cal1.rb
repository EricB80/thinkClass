meal = 25.36
tax_rate = 5.6
tip_rate = 20

tax_value = meal * (tax_rate / 100)
after_tax = meal + tax_value
tip_value = meal + (tip_rate / 100)
total_cost = after_tax + tip_value

puts "the meal cost: #{meal}"
puts "the tax value is: #{tax_value}"
puts "the tip is: #{tip_value}"
puts "the total cost is: #{total_cost}"

puts "i hope this worked"