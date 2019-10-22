def nyc_pigeon_organizer(data)
    pigeon_hash = {}
    
  data.each do |pidgeon_data, value|
    value.each do |stats, all_names|
      all_names.each do |name|
        if !pigeon_hash[name]
          pigeon_hash[name] = {}
        end
        
        if !pigeon_hash[name][pidgeon_data] 
          pigeon_hash[name][pidgeon_data] = []
        end
        pigeon_hash[name][pidgeon_data].push(stats.to_s)
      end
    end 
  end
  
  pigeon_hash

end
