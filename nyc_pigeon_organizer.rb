require 'spec_helper'
require 'pry'

def nyc_pigeon_organizer(data)
  final_hash = Hash.new
  data.each do |attribute, sub_attribute|
    attribute # :color, :gender. :lives
    sub_attribute # {:purple =>}
      sub_attribute.each do |key, value|
        key # :purple, :white, :brown
        value # ["Theo", "Peter Jr", "Lucky"]
          value.each do |names|
            names # "Theo"...
            final_hash[names] = {} if final_hash[names] == nil
            final_hash[names][attribute] = [] if final_hash[names][attribute] == nil
            final_hash[names][attribute] << key.to_s
          end
      end
  end
  final_hash
end
