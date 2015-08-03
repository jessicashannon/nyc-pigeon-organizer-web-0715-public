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
def nyc_pigeon_organizer(data)
  list = {}
  data.each do |attribute, sub_attributes|
    sub_attributes.each do |sub_attribute, names|
      names.each do |name|
        if list.has_key?(name)
          if list[name].has_key?(attribute)
            list[name][attribute] << sub_attribute.to_s
          else
            list[name][attribute] = [sub_attribute.to_s]
          end
        else
        list[name] = {attribute => [sub_attribute.to_s]}
        end
      end
    end
  end
  list
end


puts nyc_pigeon_organizer(pigeon_data)