class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)= arguments

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    temp_wagons_id = *each_wagons_id[2..each_wagons_id.length - 1], *each_wagons_id[0..1]
    output_wagons_id = *temp_wagons_id[0], *missing_wagons, *temp_wagons_id[1..temp_wagons_id.length - 1]
  end

  def self.add_missing_stops
    raise 'Please implement the LocomotiveEngineer.add_missing_stops method'
  end

  def self.extend_route_information(route, more_route_information)
    raise 'Please implement the LocomotiveEngineer.extend_route_information method'
  end
end

puts ""
puts "1"
puts ""
puts LocomotiveEngineer.generate_list_of_wagons(1, 7, 12, 3, 14, 8, 5)

puts ""
puts "2"
puts ""
puts LocomotiveEngineer.fix_list_of_wagons([2, 5, 1, 7, 4, 12, 6, 3, 13], [3, 17, 6, 15])
