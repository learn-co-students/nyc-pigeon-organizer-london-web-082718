require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = []

  data.each do |key, value|
    value.each do |key2, value2|
        pigeon_list << value2

    end
  end

  pigeon_list = pigeon_list.flatten.uniq

  hash = Hash.new
  pigeon_list.each do |name|
    hash[name] = {}
  end

  hash.each do |item, value|
    hash[item] = data
  end

  hash.each do |key, value|
    value.each do |key2, value2|
      value2.each do |key3, value3|


        if !value3.include?(key)
          #key3.delete # hash[key][key2].delete_if {|key3| !value3.include?(key)}
          hash[key][key2].delete(key3)
        end

      end

    end

  end
  binding.pry
end
##
