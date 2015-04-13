# reddit daily programmer - easy 2
# make any calculator

# cost of electricity calculator

def cost_per_day(device_wattage, duration, price_per_kwh)
  energy_per_day = (device_wattage * duration) / 1000

  (energy_per_day * price_per_kwh) / 100
end

def print_menu
  print <<MENU
  \nPlease choose one of the following options:
  1. Cost per day
  2. Cost per month
  3. Cost per year
  4. Quit
MENU
end

loop do
  print_menu
  selection = gets.to_i
  break if selection == 4

  print 'Please enter wattage of device: '
  device_wattage = gets.to_f
  print 'Please enter the approximate amount of time (in hours) you will be using this device: '
  duration = gets.to_i
  print 'Please enter the cost of your electricity in cents/kWh: '
  price_per_kwh = gets.to_f

  if selection == 1
    puts "\nIt will cost you $#{cost_per_day(device_wattage, duration, price_per_kwh).round(2)} to run this device for" \
      " #{duration} hours per day."
  elsif selection == 2
    puts "\nIt will cost you $#{cost_per_day(device_wattage, duration, price_per_kwh).round(2) * 30.5} per month to run" \
      " this device for #{duration} hours per day."
  elsif selection == 3
    puts "\nIt will cost you $#{cost_per_day(device_wattage, duration, price_per_kwh).round(2) * 365} per year to run" \
      " this device for #{duration} hours per day."
  end
end
