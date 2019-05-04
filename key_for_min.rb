# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  if name_hash == {}
    return nil
  else 
    min_key = name_hash.first[0] ##first[0] of a hash is it's key
    min_value = name_hash.first[1] ##first[1] of a hash is it's value
    name_hash.each do |key, value|
      if value < min_value ##if new value is more less
        min_value = value ##replaces value 
        min_key = key
      end
    end
    return min_key ##last return value in 'else'
  end
end