require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end

# given an array of spicy foods, **return an array of strings**
# with the names of each spicy food
def get_names(spicy_foods)
  return spicy_foods.map do |spicy_foods|
    "#{spicy_foods[:name]}"
  end
  # your code here
end

# given an array of spicy foods, **return an array of hashes** 
# where the heat level of the food is greater than 5
def spiciest_foods(spicy_foods)
  spicy_foods.each do |food, data|
    spicy_foods.delete_if {|food| food[:heat_level] < 5}
    # if food[:heat_level] > 5
    #   puts food, "FOOD"
    # end
  # end 
  # return spicy_foods.each do |attribute|
    # puts "ATTRIBUTE", attribute, "HITTING HERE"

    # attribute.each do |thing, data|
    #   puts thing, data, "THING"
    #   if thing == :heat_level
    #     attribute.select {|attribute| data > 5}

    #     # if data > 5
    #     #   return attribute
    #     # end
    #   end
    # end
    # if attribute == :heat_level
    #   puts "HEATLEVEL"
      #   data.delete_if {|heat_level| heat_level > 5}
    # end
  end
    

    # if  >= 5
    #   puts "#{name}"
  # return spicy_foods
end 
  # your code here
# end

# given an array of spicy foods, **output to the terminal**
# each spicy food in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# "hello" * 3 == "hellohellohello"
def print_spicy_foods(spicy_foods)
  return spicy_foods.map do |spicy_foods|
    new_heat = "#{spicy_foods[:heat_level]}".to_i
    emoji = new_heat.times { |i| "🌶"} 
    emojis = "🌶" * emoji
    puts "#{spicy_foods[:name]}" + " (" + "#{spicy_foods[:cuisine]}" + ") " + "| Heat Level: " + "#{emojis}"
    # emoji = new_heat.times { |i| print "🌶"} 
    # puts emoji
  end
  # your code here
end

# given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# for the spicy food whose cuisine matches the cuisine being passed to the method
def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  input = cuisine.to_s
  # spicy_foods.each do |food, data|
    # puts input
    # puts food[:cuisine]
    newvalue = spicy_foods.find do |a|
      if a[:cuisine] == input
        return a
      else 
        puts "break"
      end 
      
      # puts a[:heat_level] == 9
      # puts a[:name] == "Green Curry"
    
  end 
end
  # your code here
  # if "#{spicy_foods[:cuisine]}" == cuisine
  # return "#{spicy_foods[:cuisine]}"
  # end
  
  # if cuisine.include? "#{spicy_foods[:cuisine]}"
  #   return "#{spicy_foods[:cuisine]}"
  # end
  


# Given an array of spicy foods, **return an array of hashes** 
# sorted by heat level from lowest to highest
def sort_by_heat(spicy_foods)
  spicy_foods.sort_by do |key|
    key[:heat_level]
  end
  # return sort_by_heat
  
  # your code here
end

# given an array of spicy foods, output to the terminal ONLY 
# the spicy foods that have a heat level greater than 5, in the following format: 
# Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# HINT: Try to use methods you've already written to solve this!
def print_spiciest_foods(spicy_foods)
  # spicy_foods.each do |food, data|
  #   spicy_foods.delete_if {|food| food[:heat_level] < 5}
  spicy_foods.map do |spicy_foods|
    new_heat = "#{spicy_foods[:heat_level]}".to_i
    emoji = new_heat.times { |i| "🌶"} 
    emojis = "🌶" * emoji
    if new_heat > 5 then 
    puts "#{spicy_foods[:name]}" + " (" + "#{spicy_foods[:cuisine]}" + ") " + "| Heat Level: " + "#{emojis}"
    end
    # emoji = new_heat.times { |i| print "🌶"} 
    # puts emoji
  end
  # your code here
end

# given an array of spicy foods, return an integer representing 
# the average heat level of all the spicy foods in the array
def average_heat_level(spicy_foods)
  spicy_foods.each do |spicy_foods|
   avg = "#{spicy_foods[:heat_level]}".to_i
   return avg/3*2
   
  end
  
  # your code here
end
