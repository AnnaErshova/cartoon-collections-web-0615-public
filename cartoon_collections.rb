#### Method 1 - Dwarf Roll Call

# This method should accept an array of dwarf names, for instance:
# ["Doc", "Dopey", "Bashful", "Grumpy"]

# It should then print out each name using `puts`. The print-out should look like this:

#1. Doc
#2. Dopey
#3. Bashful
#4. Grumpy

# Look into the [each with index](http://ruby-doc.org/core-2.2.0/Enumerable.html#method-i-each_with_index) method. 


def roll_call_dwarves(dwarf_name_array)
  puts dwarf_name_array.each_with_index { |a,b| puts "(#{b+1} #{a})" }
  # of 
  # dwarf_name_array.each_with_index do |dwarf, index| 
  #   puts "#{index+1}. #{dwarf}" }
  # end

  # uses each and with_index separately
  # dwarf_name_array.each.with_index(1) do |dwarf, index| 
  #   puts "#{index+1}. #{dwarf}" }
  # end

end

# Method 2 - Summon Captain Planet

# This method should accept an array of planeteer calls, like this:
# planeteer_calls = ["earth", "wind", "fire", "water", "heart"]
# It should then capitalize each element and add an exclamation point at the end. 
# The return value of this method should be an array. In this example:
# summon_captain_planet(planeteer_calls)
#=> ["Earth!", "Wind!", "Fire!", "Water!", "Heart!"]
# The `map` method might be appropriate for this task, take a look at it [here]
# (http://stackoverflow.com/a/12084555/2890716) and [here](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-map).

def summon_captain_planet(planeteer_calls)
  planeteer_calls.map { |element| element.capitalize! + "!"}
end

#### Method 3 - Long Planeteer Calls

# The `long_planeteer_calls` method should accept an array of calls. 
# The method should tell us if any of the calls are longer than four characters. For example:
# short_words = ["puff", "go", "two"]
# long_planeteer_calls(short_words)
# => false
# assorted_words = ["two", "go", "industrious", "bop"]
# long_planeteer_calls(assorted_words)
#=> true
# Notice the return value of this method is either false or true, depending on the array it was given as an argument.
# Checkout the [Ruby docs on arrays](http://www.ruby-doc.org/core-2.2.0/Array.html) for a hint.

def long_planteer_calls(calls)
  calls.any? {|call| call.length > 4} # code from lecture
end

#### Method 4 - Find the Cheese
# The "find_the_cheese" method should accept an array of strings. 
# It should then look through these strings and return the first string the is a type of cheese. 
# The types of cheese that appear are  cheddar, gouda, and camembert.

# For example:
# snacks = ["crackers", "gouda", "thyme"]
# find_the_cheese(snacks)
#=> "gouda"
# soup = ["tomato soup", "cheddar", "oyster crackers", "gouda"]
# find_the_cheese(soup)
#=> "cheddar"
# If, sadly, a list of ingredients does not include cheese, return `nil`:
# ingredients = ["garlic", "rosemary", "bread"]
# find_the_cheese(ingredients)
#=> nil
# You can assume that all strings will be lower-case. Take a look a the 
# [include](http://www.ruby-doc.org/core-2.2.0/Array.html#method-i-include-3F) method for a hint. 
# This method asks you to return a string value instead of printing it so keep that in mind.

def find_the_cheese(array)
  cheese_types = ["cheddar", "gouda", "camembert"]

  array.find do |item| #aka detect
    cheese_types.include?(item)
  end
end

