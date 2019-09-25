def nyc_pigeon_organizer(data)
  new_hash = Hash.new
  data.each do |category, value|
    value.each do |choices, names_array|
      names_array.each do |name|
        if new_hash[name] == nil
          new_hash[name] = {}
        end
        if new_hash[name][category] == nil
          new_hash[name][category] = []
        end
        new_hash[name][category] << choices.to_s
      end
    end
  end
  new_hash
end
