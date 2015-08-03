require 'pry'

pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}

# 1) If attribute array exists, shovel in
# 2) Otherwise, create array and then shovel in

# {"Theo" = {:color => [:purple]}}

def nyc_pigeon_organizer(data)
  list = {}
  data.each do |attribute, sub_attributes_hash|
    sub_attributes_hash.each do |sub_attribute, names_array|
      names_array.each do |name|
        list[name] ||= {}
        list[name][attribute] ||= []
        list[name][attribute] << sub_attribute.to_s
      end
    end
  end
  list
end


puts nyc_pigeon_organizer(pigeon_data)