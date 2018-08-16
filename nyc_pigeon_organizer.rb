def nyc_pigeon_organizer(data)
  pigeon_list = {}

  pigeon_data.each do |key, value| #change for data
    value.each do |key2, value2|
        pigeon_list << value2
    end
  end

  pigeon_list = pigeon_list.flatten.uniq

  pigeon_list = pigeon_list.collect { |item| [item, [pigeon_data]] } #change for data

#  pigeon_list.each {|k,v| v.delete(:two) if k == :clubs}
  pigeon_list.each do |key, value|
    value.each do |key2, value2|
      value2.each do |key3, value3|
      key3.delete_if {value3.any? != key}
    end
  end

end
##
