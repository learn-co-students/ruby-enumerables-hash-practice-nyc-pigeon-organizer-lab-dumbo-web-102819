def nyc_pigeon_organizer(data)
  pigeon_names_array = (data[:gender][:male] + data[:gender][:female]).sort
  
  pigeon_hash = {}
  pigeon_names_array.length.times {|i|
    pigeon_hash[pigeon_names_array[i]] = {
      :color => [],
      :gender => [],
      :lives => []
    }
  }
  
  pigeon_hash = pigeon_hash.reduce({}){|name_layer, (name, property_hash)|
    name_layer[name] = property_hash
    property_hash.reduce({}){|attribute_layer, (attribute, attribute_array)|
      attribute_layer[attribute] = attribute_array
      data[attribute].each{|specific_attribute, name_array|
        if name_array.include?(name)
          attribute_layer[attribute].append(specific_attribute.to_s)
        end
      }
      
      attribute_layer
    }
    
    name_layer
  }
  
  pigeon_hash
end
