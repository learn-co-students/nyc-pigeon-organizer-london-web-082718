require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = []

  data.each do |key, value|
    value.each do |key2, value2|
        pigeon_list << value2
              binding.pry
    end
  end

  pigeon_list = pigeon_list.flatten.uniq

  pigeon_list = pigeon_list.collect { |item| [item, [data]] }

  pigeon_list.each do |key, value|
    value[0].each do |key2, value2|
      value2.each do |key3, value3|


      #  if value3.any? != key
        #  key3.delete
      #  end
      end
    end
  end
end
##
