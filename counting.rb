#!/usr/bin/env ruby

#Code based on the course "Ruby Essential Training Part 1: The basics" by Kevin Skogland.   Available on Linkedin Learning

puts 123
puts 456
puts 789

puts 'Good Morning World'

#I am a content and will not be executed

#type irb to open irb
#quit to quit
#irb --simple-prompt

#ruby-lang.org
#ruby-doc.org

#ri string or string.new or string#upcase

puts "Wakka " * 3

greeting = "hello"
greeting << ' '
greeting << 'World'

puts greeting
puts greeting.reverse
puts greeting.reverse.capitalize

salutation = 'salve'
group = 'amicus'

puts salutation + ' ' + group

puts greeting.length

puts 'Let\’s escape'
#puts 'let's escape' # counting.rb:36: syntax error, unexpected local variable or method, expecting end-of-input

# => puts “1 + 1 = #{1 + 1}”
puts "1 + 1 = #{ 1 + 1 }"
#puts `1 + 1 = #{1 + 1}`


msg = 'The Quick Brown Fox'
puts "#{msg} jumped over the lazy dog."

my_array = ['a', 'b', 'c', 100]

puts my_array

my_array[2] = 'f'

puts my_array

#To append something to an array we use <<

my_array << 'tricycle'

puts my_array

my_array << ['r', 's', 'laugher',['t','r']] #this shows up as flattened
puts my_array
puts my_array.length
puts my_array.size
puts my_array.reverse
puts my_array.shuffle
puts my_array.uniq #to show unique values
puts my_array.flatten
puts my_array.include?(2)

puts [1,2,3,4].join(' ')

puts [1,2,3,4].join(' potato ')

#Hashes
car = {
  'brand' => 'ford',
  'model' => 'mustang',
  'colour' => 'blue',
  'interior_colour' => 'sepia'
}

puts car['model']
puts car['brand']
car['age'] = 20
puts car
car['doors'] = 5
puts car.keys
puts car
puts car.to_a

person = {:first_name => "Coca", :last_name => "Cola"}
puts person[:first_name]
puts person[:last_name]

inclusive = 1..10
exclusive = 1...10

puts inclusive.class
puts inclusive.begin #first
puts inclusive.end #last


puts exclusive.class

puts exclusive.begin
puts exclusive.end

puts array = [*inclusive]

alpha = 'a'..'r'
puts alpha.class

puts array = [*alpha]

puts alpha.include?('g')

#My solution

romanNumerals = {
  '1' => 'I',
  '2' => 'II',
  '3' => 'III',
  '4' => 'IV',
  '5' => 'V',
  '6' => 'VI',
  '7' => 'VII',
  '8' => 'VIII',
  '9' => 'IX',
  '10' => 'X'
}

puts romanNumerals['1']
puts romanNumerals['7']
puts romanNumerals['4']
puts romanNumerals['10']
puts romanNumerals['X']

#course solution
number_map = [nil, 'I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X']

z = 3

if z <= 10
  puts "10 or below"
elsif z >= 20
  puts "20 or above"
else
  puts "Between 10 and 20"
end

#unless condition

cart = ['apple', 'orange', 'mango', 'laptop', 'llama']

unless cart.empty?
  puts "The first item is #{cart[0]}"
else
  puts "The cart is empty."
end

#Conditionals: case - switch in JavaScript

count = 2

case
when count == 0
  puts "No one was available"
when count == 1
  puts "One person was available"
when (2..10).include?(count)
  puts "People showed up"
else
  "A good crowd of people"
end

case count
when 0
  puts "No one was available"
when 1
  puts "One person was available"
when 2..10
  puts "People showed up"
else
  puts "A good crowd of people"
end

#Conditionals Shorthand
puts count == 1 ? "#{count} person" : "#{count} people"

DEFAULT_LIMIT = 100
limit = 30
max = limit  || DEFAULT_LIMIT

puts max

limit ||= DEFAULT_LIMIT

puts limit

limit = DEFAULT_LIMIT unless DEFAULT_LIMIT

puts "Are you happy?" if count == 2

# loops

i = 5

loop do
  break if i <= 0
  puts "countdown: #{i}"
  i -= 1
end
puts "Blast off!"

puts ""
i = 5

while i > 0
  puts "countdown: #{i}"
  i -= 1
end
puts "Blast off!"

# cart = ['apple', 'orange', 'mango', 'laptop', 'llama']

until cart.empty?
  first = cart.shift
  puts first.upcase
end

#Iterators

fruits = ['apple', 'pear', 'orange', 'banana', 'passionfruit']

fruits.each do |fruit|
  puts fruit.capitalize
end

for fruit in fruits
  puts fruit.capitalize
end

# Option 1
i = 10

i.times do
  puts "Countdown #{i}"
  i -= 1
end
puts "Blast off!!"

# Option 2
10.times do |i|
  puts "Countdown to #{10-i}"
end
puts "ignition and lift off"

10.downto(0) do |i|
  puts "Countdown #{i}"
end
puts "Ignition and lift off of the Saturn V rocket"

10.downto(0) {|i| puts "Countdown #{i}"}
puts "Ignition and lift off of the Saturn V rocket"

#Blanket Patterns

colours = "RRGGBBYYKK"
patterns = "**%%çç++==££ää"
numbers = "112233448877665599"


#output 20 rows
lines = 20
# On each row shift the characters to the left by removing the first character and putting it at the append
count = 0
while count < lines
  start = count.modulo(colours.length)
  first_half = colours[start..-1]
  second_half = colours[0...start]
  puts first_half + second_half
  count += 1
end

lines = 20

count = 0
while count < lines
  start = count.modulo(patterns.length) #What is the remainder? 0, 1 ,2 3, etc, and then it wraps at the right place
  first_half = patterns[start..-1]
  second_half = patterns[0...start]
  puts first_half + second_half
  count+= 1
end

# Solution 2
lines.times do |i|
  first = colours[0]
  rest = colours[1..-1]
  colours = rest + first
  puts colours
end

lines.times do |i|
  first = patterns[0]
  rest = patterns[1..-1]
  patterns = rest + first
  puts patterns
end

lines.times do |i|
  first = numbers[0] # WE take the first character from the string and we assign it to first
  rest = numbers[1..-1] # we take the rest of the string from 1 to the last character
  numbers = rest + first  #Here we put the rest of the numbers first, and then add the first chacter last.
  puts numbers #We display the modified sequence of characters
end

colors = "++**´´``^^!!"
colors_array = colors.split('') #split each individual character into an array
1.upto(lines) do |i|  #From line 1 up to the value of lines
  first = colors_array.shift #remove the first character from the array and add it to the variable first
  colors_array << first #Append the shifted letter known as first to the colors array
  puts colors_array.join #recombine the array into a string and display it onscreen.
end

#Change pattern direction half way through

colors2 ="=|/|/|/|/|/|/"
halfway = (lines / 2).floor

colors2_array = colors2.split('')

#First half
1.upto(halfway) do |i|
  first = colors2_array.shift
  colors2_array << first
  puts colors2_array.join
end

colors2_array.length.times do |x|
  if colors2_array[x] == '/'
    colors2_array[x] = '\\'
  end
end
puts colors2_array.join

#Second half
halfway.upto(lines) do |i|
  last = colors2_array.pop
  colors2_array.unshift(last)
  puts colors2_array.join
end

#see about doing the same in JavaScript

coats = ['winter', 'summer', 'rain', 'jacket']

coats.each do | coat|
  if coat == 'jacket'
    # exit
    # exit!
    # abort ("abort on jacket")
    # redo
  end

  puts coat.capitalize
end

puts "Total coats: #{coats.count}"

puts "Hello"

print "Hello\n"

print "What is your shoe size? "
response = gets.chomp

puts "Your shoe size is #{response}!"

# Guessing game challenge
# Ask for the name
# Explain the rules

# Pick a random number and the user has to guess
# get guess
# check if it matches random number
# loop three times

#rand number

# rand(100)
