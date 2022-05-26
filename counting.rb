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
