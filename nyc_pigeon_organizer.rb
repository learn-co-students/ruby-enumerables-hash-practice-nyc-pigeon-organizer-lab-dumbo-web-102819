def nyc_pigeon_organizer(data)
  # write your code here!
  newData = {}
  data.each do |key, value|
    #Key = color, gender, lives
    #puts " key: #{key}, value: #{value}"
    value.each do |attrOfValue, names|
      #puts "   attr: #{attrOfValue}"
      #puts "   name: #{names}"
      names.each do |name|
        #puts "     real name: #{name}"
        if newData.key?(name)
          if newData[name].key?(key)
            newData[name][key].push(attrOfValue.to_s)
          else
            newData[name][key] = [attrOfValue.to_s]
          end
        else
          newData[name] = {key => [attrOfValue.to_s]}
        end
      end
    end
  end
  
  #puts "New Data #{newData}"
  newData
end
