require "pry"

def nyc_pigeon_organizer(data)
  pegion_list = {}

    data.each do |key, value|
      value.each do |color,name|
        name.each do |pegion|
          pegion_list[pegion] ||= {}
          pegion_list[pegion][key] ||= []
          pegion_list[pegion][key] << color.to_s
        end
      end
    end
    pegion_list
end
