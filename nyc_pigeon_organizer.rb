require "pry"
def nyc_pigeon_organizer(data)
  pigeon_list = {}

  data.each do |info, options|
    options.each do |option, names|
      names.each do |name|

      pigeon_list[name] ||= {}
      pigeon_list[name][info] ||= []
      pigeon_list[name][info] << option.to_s

      end
    end
  end
  pigeon_list
end
