def roll_call_dwarves(dwarf_names)
  hash = Hash.new
  dwarf_names.each_with_index { |name, index| 
    hash[name] = index
    order = index + 1 
    order.to_s
    puts "/#{order}. *#{name}/"
}
hash
end

def summon_captain_planet(calls)
  calls.collect do |call|
    call << "!"
    call.capitalize!
  end 
  calls
end

def long_planeteer_calls(calls)
  calls.any? do |call|
    call.length > 4 
  end
end

def find_the_cheese(foods)
  cheese_types = ["cheddar", "gouda", "camembert"]

  if foods.include?(cheese_types[0]) == true ||foods.include?(cheese_types[1]) == true ||foods.include?(cheese_types[2]) == true
      foods.find do |item|
        item == "cheddar" || item == "gouda" || item == "camembert"
      end
  else 
    return nil 
  end

end
