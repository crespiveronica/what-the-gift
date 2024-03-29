class Matcher
  
  def self.matches(string, keys)
  	keys.each do |key|
  		if /#{key.downcase}/.match(string.downcase)
  			return true
		end
  	end
  	return false
  end

  def self.matches_how_many_items(items, keys)
  	cant = 0
  	items.each do |string_item|
  		keys.each do |key|
	  		if /#{key.downcase}/.match(string_item.downcase)
	  			cant.next
	  			break
			end
  		end
  	end
  	cant
  end

  def self.matches_any(items, key)
    items.each do |string_item|
      if /#{key.downcase}/.match(string_item.downcase)
        return true
      end
    end
    return false
  end

  def self.float? string
    string.to_i.to_s == string || string.to_f.to_s == string
  end


  def self.is_null_or_empty field
    field.nil? || field.empty?
  end
end