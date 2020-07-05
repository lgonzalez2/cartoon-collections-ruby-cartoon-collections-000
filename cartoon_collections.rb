def roll_call_dwarves(dwarf_names)
  hash = Hash.new 
  
  dwarf_names.each_with_index do |name, index|
    
    if index < dwarf_names.length/2 
      hash[name] = index
      order = index + 1 
      puts "/#{order}. *#{name}/"
    else 
     break
    end
  end
end



def summon_captain_planet(planeteer_calls)
  planeteer_calls.collect do |call|
    call << "!"
    call.capitalize!
  end
  planeteer_calls
end



def long_planeteer_calls(words)
  words.any? do |word|
    word.length > 4
  end
end



def find_the_cheese(snacks)
  cheese_types = ["cheddar", "gouda", "camembert", "brie"]
  
  if snacks.include?(cheese_types[0]) == true || snacks.include?(cheese_types[1]) == true || snacks.include?(cheese_types[2]) == true || snacks.include?(cheese_types[3]) == true
    
    snacks.find do |food_item|
      food_item == "cheddar" || food_item == "gouda" || food_item == "camembert" || food_item == "brie"
    end
  else
    return nil 
  end
end


def words_with_b(words)
  words.select do |name|
    name.start_with?("b")
  end
end

words = ["trey", "bob", "gaby", "ben"]

puts words_with_b(words)

