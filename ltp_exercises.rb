#!/usr/bin/env ruby
#"Learn_to_Program" Chapter Exercises
#Please excuse the lack of proper "Ruby Style"... done before read the styleguide. Sorry if it makes your head hurt.


#Chapter 2 - Numbers 
#Note: this file started as calc.rb, but was renamed
puts '---------------------------'
puts 'Chapter 2'
puts 1+2

puts 1.0 + 2.0
puts 2.0 * 3.0
puts 5.0 - 8.0
puts 9.0 / 2.0

puts 1 + 2
puts 2 * 3
puts 5 - 8
puts 9 / 2  #watch, Ruby will round DOWN with intergers!

puts 5 * (12-8) + -15
puts 98 + (59872/(13*8)) * -51


puts "Hours in a year: #{365.24 * 24}"
puts "Seconds in a year: #{365.24 * 24 * 60 * 60}"
puts "Minutes in a decade: #{(365.24 * 24 * 60) * 10}"


require 'Time'                                         #need some help getting the time, since it's always changing
current_time = Time.now                                #current time - since it varies whenever run
birthday_time = Time.local(1984,4,16)                 #time at my birthday (assumptions made about the time - error assumed)
life_in_seconds = (current_time-birthday_time).to_i   #total seconds in my life since assumed birthtime
puts "My age in seconds: #{life_in_seconds}"

puts "Author is approximately: #{1_160_000_000.0/(60*60*24*365.24)} years old"
#I'm younger than he was at the time of this publication! That means there's still time to catch up...



#Chapter 3 - Letters
puts '---------------------------'
puts 'Chapter 3'
puts 'Hello, worls!'
puts ''
puts 'Good-bye.'

puts 'I like' + 'apple pie.'
puts 'I like ' + 'apple pie.'
puts 'I like' + ' apple pie.'

puts 'blink' * 4

puts 12 + 12
puts '12' + '12'
puts '12 + 12'

puts 2 * 5
puts '2' * 5
#puts '2' * '5'   #comment out due to error stop

#puts 'Betty' + 12
#puts 'Fred' * 'John'
#puts 'you're swell'
puts 'you\'re swell!'
puts 'backslash at the end of a string: \\'
puts 'up\\down'
puts 'up\down' #backslash ONLY escapes itself & the apostrophe



#Chapter 4 - Variables & Assignment
puts '---------------------------'
puts 'Chapter 4'
puts '...you can say that again'
puts '...you can say that again'
my_string = '...you can say that again'
puts my_string
puts my_string

name = 'Anya Christina Emmanuella Jenkins Harris'
puts 'My name is ' + name + '.'
puts 'Wow! ' + name
puts 'is a really long name!'

composer = 'Mozart'
puts composer + ' was "da bomb" in his day.'
composer = 'Beethoven'
puts 'But I prefer ' + composer + ', personally.'

my_own_var = 'just another ' + 'string'
puts my_own_var
my_own_var = 5 * (1+2)
puts my_own_var

#variable can point to anything - EXCEPT other variables
var1 = 8
var2 = var1
puts var1
puts var2

puts ''
var1 = 'eight'
puts var1
puts var2



#Chapter 5
puts '---------------------------'
puts 'Chapter 5'
var1 = 2
var2 = '5'
#puts var1 + var2

puts var1.to_s + var2
puts var1 + var2.to_i
puts var1.to_f + var2.to_f
#note that these methods do not change the value of the original variable

puts '15'.to_f
puts "99.999".to_f
puts "99.99".to_i
puts ""
puts '5 is my favorite number!'.to_i  #Ruby ignores the first thing it doesn't understand in the conversion
puts 'Who asked you about 5 or whatever?'.to_i
puts 'Your momma did.'.to_f
puts ''
puts 'stringy'.to_s
puts 3.to_i

puts 20
puts 20.to_s
puts '20'       #puts means "PUT String"!! it tries to write out an object

puts 'Program is asking for an entry now: '
puts gets

################# The program stops here for some reason... not sure why...############
################# Haha, ok, it's because I didn't save... rookie mistake.  ############

puts 'Hello there, what\'s your name?'
name = gets.chomp
puts 'Your name is ' + name + '? What a lovely name!'
puts 'Pleased to meet you, ' + name + '. :)'

#5.6 A few things to try
#Full name greeting:
puts "Would you so kindly tell me your first name?"
first_name = gets.chomp
puts "Please also let me know your middle name:"
middle_name = gets.chomp
puts '...and while you\'re at it, could you let me know your last name?'
last_name = gets.chomp
puts 'Thank you! ' + first_name.capitalize + " " + middle_name.capitalize + ' ' + last_name.capitalize + ' is a fine name, and I am pleased to meet your acquaintence.'

#Bigger, better favorite number:
puts "I am a genious computer, and I wish to know your favorite number. Please enter it now: "
fav_num_int = gets.chomp.to_i
fav_num_int += 1
puts 'I have analyzed your favorite number and found it inferior to the number "' + fav_num_int.to_s + '", which is bigger and therefore better. I would suggest you upgrade your favorite number to this superior favorite number.'

my_birth_month = 'August'
my_birth_day = 3
#puts my_birth_month + my_birth_day



#Chapter 6
puts '---------------------------'

puts ('hello ' .+ 'world')
puts ((10. * 9) .+ 9)
puts self

var1 = 'stop'
var2 = 'deliver repaid desserts'
var3 = '....tceleS B hsuP   A magic spell? epon'
puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts 'what is your full name?'
name = gets.chomp
puts 'Did you know there are ' + name.length.to_s + ' characters '
puts 'in your ' + name + '?'
puts 'there are ' + (last_name.length + middle_name.length + last_name.length).to_s + ' letters in your name. I got this from the first time you entered your name - way back in my program! I hope you didn\'t lie to me back then...'

letters = 'aAbBcCdDeE'
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts ' a'.capitalize
puts letters

line_width = 50
puts ('Old mother hubbard'					.center(line_width))
puts ('Sat on her cupboard'					.center(line_width))
puts ('Eating her curds and whey,'			.center(line_width))
puts ('Along came a spider'					.center(line_width))
puts ('Who sat down beside her'				.center(line_width))
puts ('And scared her poor shoe dog away.'	.center(line_width))



line_width = 40
str = '--> text <--'
puts (str.ljust(	line_width))
puts (str.center(	line_width))
puts (str.rjust(	line_width))
puts (str.ljust(	line_width/2) + str.rjust(line_width/2)) 

#6.2 A Few Things To Try
#Angry Boss:
puts 'What would you like to ask your angry boss for?'
boss_question = gets.chomp.upcase
puts 'WHADDYA MEAN "' + boss_question + '"?!? YOU\'RE FIRED!!'

#Table of Contents:
line_width = 60
puts ("Table of Contents".center(line_width))
puts ""
puts ('Chapter 1:  Getting Started'	.ljust(line_width/2) + ('page 1'	.rjust(line_width/2)))
puts ('Chapter 2:  Numbers'			.ljust(line_width/2) + ('page 9'	.rjust(line_width/2)))
puts ('Chapter 3:  Letters'			.ljust(line_width/2) + ('page 13'	.rjust(line_width/2)))

puts 5**2
puts 5**0.5
puts 7/3
puts 7%3
puts 365%7
puts 365%7.1

puts (5-2).abs
puts (2-5).abs

puts rand
puts rand
puts rand
puts (rand(100))
puts rand(100)
puts rand(100)
puts rand(1)
puts rand(1)
puts rand(1)
puts rand(99999999999999999999999999999999999)
puts 'The weatherman said there is a '
puts (rand(101).to_s + '% chance of rain,')
puts ('but you can never trust a weatherman')

puts (Math::PI)
puts (Math::E)
puts (Math.cos(Math::PI/3))
puts (Math.tan(Math::PI/4))
puts (Math.log(Math::E**2))
puts ((1 + Math.sqrt(5))/2)


#Chapter 7
puts '---------------------------'
puts 1>2
puts 1<2
puts 5>=5
puts 5<=4
puts 1 == 1
puts 2 != 1
puts 1 || 2
puts 1 && 2

#already know this stuff...

i_am_clint 	= true
i_am_purple = false
i_like_beer = true
i_eat_rocks = false

puts i_am_clint	 && i_like_beer
puts i_like_beer && i_eat_rocks
puts i_am_purple && i_like_beer
puts i_am_purple && i_eat_rocks 

puts i_am_clint	 || i_like_beer
puts i_like_beer || i_eat_rocks
puts i_am_purple || i_like_beer
puts i_am_purple || i_eat_rocks

puts !i_am_purple
puts !i_am_clint


#99 Bottles of Beer on the Wall
#let's write it recursive style

def song(bottles)
  @bottles = bottles
  puts "#{@bottles} bottles of beer on the wall,"
  puts "#{@bottles} bottles of beer!"
  puts "You take one down & pass it around,"
  @bottles -=1
  puts "#{@bottles} bottles of beer on the wall!"
  if @bottles > 0
  	song(@bottles)
  end
 end

 song(99)


#Deaf Grandma

while true
  puts 'TELL ME SOMETHIN\'!'
  request = gets.chomp
     
  if request == 'BYE' 
  	 puts 'YOU SAY WHAT?'
  	 verify1 = gets.chomp
  	 if verify1 == 'BYE' 
  	 	puts 'YOU SAY WHAT?'
  	 	verify2 = gets.chomp
  	 	if verify2 == 'BYE'
  	 		break
  	 	end
  	 end
  
  elsif request == request.upcase
  	puts "NO, NOT SINCE #{rand(1930..1950)}!"
  
  else puts "HUH?! SPEAK UP, SONNY!"
  end
end


#Leap Years

puts 'This program will count the leap years between a starting & ending year that you provide.'
puts 'Please provide a starting year:'
start_year = gets.chomp.to_i
puts 'Please provide an ending year:'
ending_year = gets.chomp.to_i
count = 0 
puts count

for year in start_year..ending_year
  puts year
  puts count
  if year%400 == 0 && year%100 == 0
	count +=1  
	puts "year = #{year}.  #{count} is now the count.  This was a div by 400 case!"
  elsif year%100 == 0
	next
  elsif year%4 == 0
  	puts year%4
  	count +=1
  	puts "year = #{year}.  #{count} is now the count. This was standard case."
  end
end
puts "There are #{count} leap year(s) in this range."


#Chapter 8
puts '---------------------------'

[]
[5]
['Hello','Goodbye']
flavor = 'vanilla'
puts [89.9, flavor, [true, false]]
names = ['Ada', 'Belle', 'Chris']
puts names
puts
puts names[0]
puts names[1]
puts names[2]
puts names[3]  #this prints an empty line - nothing in the slot [3]

3.times do puts "hip-hip-horray!" end
2.times do puts "...you can say that again..." end
puts

foods = ['artichoke', 'brioche', 'caramel']
puts foods
puts foods.to_s
puts foods.join(', ')
puts foods.join('  :)  ') + '  8)'
200.times do puts [] end
array1 = [['a', 'b', 'c'], ['d', 'e', 'f'], ['g', 'h', 'i']]
2.times do puts array1 end

favorites = []
favorites.push 'raindrops on roses'
favorites.push 'whiskey on kittens'

puts favorites[0]
puts favorites.last
puts favorites.length

puts favorites.pop 		#removed whiskey kittens
puts favorites			#prints remaining raindrops on roses	
puts favorites.length	#only 1 slot used now




#Building & Sorting an Array
array_of_stuff = []

while true
  puts 'Type another word to add or just hit Enter to end:'
  word = gets.chomp.to_s
  	if word == ""
  	  puts array_of_stuff.sort
  	  break
  	else array_of_stuff.push word
  	end
end


#Table of Contents, REVISITED

line_width = 60
puts ("Table of Contents".center(line_width))
puts ""
toc_array = [['Chapter 1:  Getting Started','page 1'],['Chapter 2:  Numbers','page 9'], ['Chapter 3:  Letters','page 13']]
toc_array.each { |a,b|
	puts (a.ljust(line_width/2) + b.rjust(line_width/2))
}




#Chapter 9 - Writing Your Own Methods
puts '---------------------------'


def say_moo number_of_moos=1
  puts 'moooooo....' * number_of_moos
  "yellow submarine"
end

say_moo 4
tough_var = "You can\'t even touch my variable!"

def little_pest tough_var
	tough_var = nil
	puts "HAHA, I ruined your variable!"
end
little_pest tough_var
puts tough_var

return_val = puts "this puts returned:"
puts return_val

x = say_moo 3
puts x.capitalize 	+ ', dude...'	#the return value is NOT the output!
puts x				+ '.'			#the output is the object of the method, so the capitalize method works on the return value of say_moo!!!


#Improved Ask Method
def ask question
  while true
    puts question + '? Please answer yes or no:'
    reply = gets.chomp.downcase

    if (reply == 'yes' || reply == 'no')
      if reply == 'yes'
      	return true
      else 
      	return false
      end
    else
      puts 'Please answer "yes" or "no".'
    end
  end
end

puts ask"do you wet the bed"



#Old School Roman Numerals

def old_roman_numeral num
	num_int = num.to_i
	num_str = num.to_s

	if (num_int < 1 || num_int > 3000)
		puts "number out of range. Number should range between 1 & 3000"
		return nil
	end
#Now the M's
	if num_int >= 1000	
		m_val = (num_str[0]).to_i
	end
#Now the D's
	if num_int >= 1000
		d_val = ((num_str[1]).to_i)/5
	elsif num_int >= 100
		d_val = ((num_str[0]).to_i)/5
	end
#Now the C's
	if num_int >= 1000
		c_val = (num_str[1]).to_i
		if c_val > 5
		   c_val = c_val - 5
		end
	elsif num_int >=100
		c_val = (num_str[0]).to_i
		if c_val > 5
		   c_val = c_val - 5
		end
	end
#Now the L's
	if num_int >= 1000
		l_val = ((num_str[2]).to_i)/5
	elsif num_int >=100
		l_val = ((num_str[1]).to_i)/5
	elsif num_int >=10
		l_val = ((num_str[0]).to_i)/5
	end
#Now for the X's
	if num_int >= 1000
		x_val = (num_str[2]).to_i
		if x_val > 5
		   x_val = x_val - 5
		end
	elsif num_int >=100
		x_val = (num_str[1]).to_i
		if x_val > 5
		   x_val = x_val - 5
		end
	elsif num_int >=10
		l_val = (num_str[0]).to_i
		if x_val > 5
		   x_val = x_val - 5
		end
	end
#Now for the V's
	if num_int >= 1000
		v_val = ((num_str[3]).to_i)/5
	elsif num_int >=100
		v_val = ((num_str[2]).to_i)/5
	elsif num_int >=10
		v_val = ((num_str[1]).to_i)/5
	elsif num_int >=1
		v_val = ((num_str[0]).to_i)/5
	end
#Now for the I's
	if num_int >= 1000
		i_val = (num_str[3]).to_i
		if i_val > 5
		   i_val = i_val - 5
		end
	elsif num_int >=100
		i_val = (num_str[2]).to_i
		if i_val > 5
		   i_val = i_val - 5
		end
	elsif num_int >=10
		i_val = (num_str[1]).to_i
		if i_val > 5
		   i_val = i_val - 5
		end
	elsif num_int >=1
		i_val = (num_str[0]).to_i
		if i_val > 5
		   i_val = i_val - 5
		end
	end

answer = []
roman_numeral = [['M', m_val], ['D', d_val], ['C', c_val], ['L', l_val], ['X', x_val], ['V', v_val], ['i', i_val]]
roman_numeral.each { |letter,number|
	if (number != nil && number > 0)
		answer.push (letter * number)
	end
}
puts answer.join ""
end

old_roman_numeral 3000
old_roman_numeral 2794
old_roman_numeral 1
old_roman_numeral 1278



#New (Brutal) Roman Numerals
#Old School Roman Numerals

def new_roman_numeral num
	num_int = num.to_i
	num_str = num.to_s

	if (num_int < 1 || num_int > 3000)
		puts "number out of range. Number should range between 1 & 3000"
		return nil
	end
#Now the M's
	if num_int >= 1000	
		m_val = (num_str[0]).to_i
	end
#Now the D's
	if num_int >= 1000
		d_val = ((num_str[1]).to_i)/5
	elsif num_int >= 100
		d_val = ((num_str[0]).to_i)/5
	end
	if d_val == 1
		d_bool = true
	end
#Now the C's
	if num_int >= 1000
		c_val = (num_str[1]).to_i
		if c_val > 5
		   c_val = c_val - 5
		end
	elsif num_int >=100
		c_val = (num_str[0]).to_i
		if c_val > 5
		   c_val = c_val - 5
		end
	end
	if c_val == 4
		c_bool = true
		#c_val = 1
	end
#Now the L's
	if num_int >= 1000
		l_val = ((num_str[2]).to_i)/5
	elsif num_int >=100
		l_val = ((num_str[1]).to_i)/5
	elsif num_int >=10
		l_val = ((num_str[0]).to_i)/5
	end
	if l_val == 1
		l_bool = true
	end
#Now for the X's
	if num_int >= 1000
		x_val = (num_str[2]).to_i
		if x_val > 5
		   x_val = x_val - 5
		end
	elsif num_int >=100
		x_val = (num_str[1]).to_i
		if x_val > 5
		   x_val = x_val - 5
		end
	elsif num_int >=10
		l_val = (num_str[0]).to_i
		if x_val > 5
		   x_val = x_val - 5
		end
	end
	if x_val == 4
		x_bool = true
		#x_val = 1
	end
#Now for the V's
	if num_int >= 1000
		v_val = ((num_str[3]).to_i)/5
	elsif num_int >=100
		v_val = ((num_str[2]).to_i)/5
	elsif num_int >=10
		v_val = ((num_str[1]).to_i)/5
	elsif num_int >=1
		v_val = ((num_str[0]).to_i)/5
	end
	if v_val == 1
		v_bool = true
		#v_val = 1
	end
#Now for the I's
	if num_int >= 1000
		i_val = (num_str[3]).to_i
		if i_val > 5
		   i_val = i_val - 5
		end
	elsif num_int >=100
		i_val = (num_str[2]).to_i
		if i_val > 5
		   i_val = i_val - 5
		end
	elsif num_int >=10
		i_val = (num_str[1]).to_i
		if i_val > 5
		   i_val = i_val - 5
		end
	elsif num_int >=1
		i_val = (num_str[0]).to_i
		if i_val > 5
		   i_val = i_val - 5
		end
	end
	if i_val == 4
		i_bool = true
	end

#organize the letters based on New roman numeral system
if d_bool && c_bool
	m2_val =1
	d_val = 0
	c_val = 1
	roman_numeral = [['M', m_val], ['C', c_val], ['M', m2_val]]
elsif c_bool
	d_val = 1
	c_val = 1
	roman_numeral = [['M', m_val], ['C', c_val], ['D', d_val]]
else
	roman_numeral = [['M', m_val], ['D', d_val], ['C', c_val]]
end

if l_bool && x_bool
	c2_val =1
	l_val = 0
	x_val = 1
	roman_numeral.push ['X', x_val], ['C', c2_val]
elsif x_bool
	l_val = 1
	x_val = 1
	roman_numeral.push ['X', x_val], ['L', l_val]
else
	roman_numeral.push ['L', l_val], ['X', x_val]
end

if v_bool && i_bool
	x2_val =1
	v_val = 0
	i_val = 1
	roman_numeral.push ['I', i_val], ['X', x2_val]				
elsif i_bool
	v_val = 1
	i_val = 1
	roman_numeral.push ['I', i_val], ['V', v_val] 
else
	roman_numeral.push ['V', v_val], ['I', i_val]
end

answer = []

roman_numeral.each { |letter,number|
	if (number != nil && number > 0)
		answer.push (letter * number)
	end
}
puts answer.join ""
end


new_roman_numeral 3000
new_roman_numeral 999



#Chapter 10 - Recursion is Nothing New
puts '---------------------------'


#Sort Function
def check word, input_array
  holder = word
  input_array.each {|word2|
    if word2 <= holder
 	  holder = word2
 	end
  }
  holder
end


def sort input_array
  unsorted_array = input_array
  sorted_array = []

  if input_array.length <= 1
  	return input_array 

  else
  	while unsorted_array.length >= 1
	  holder = check(unsorted_array[0], unsorted_array)
 	 
 	  sorted_array.push(holder)
 	  unsorted_array.delete_at(unsorted_array.index(holder))
 	end
  end

puts sorted_array
sorted_array
end

sort(some_array)



#Chapter 11 - Recursion is Nothing New
puts '---------------------------'

#random shuffle should use a random number between 1 & the 
#length of the remaining list (-1) to grab a number randomly
#& add it to a new shuffled list

def shuffle input_list
  remaining_list = input_list
  shuffled_list = []

  if remaining_list.length <= 1
  	return remaining_list

  else	
    while remaining_list.length >=1
#     puts "Remaining Length: " + remaining_list.length.to_s
      rand_num = rand(0...(remaining_list.length))
#     puts rand_num
      shuffled_list.push(remaining_list[rand_num])
      remaining_list.delete(remaining_list[rand_num])
    end
  end

puts shuffled_list
shuffled_list
end

some_array = ['a', 'b', 'c', 'd', 'e', 'g']

shuffle(some_array)


#Skipping the rest for the sake of time, in spite of my pride



#Saving Files
#Saving Files - the YAML Way

















































































