class LocomotiveEngineer
  def self.generate_list_of_wagons(*arguments)= arguments

  def self.fix_list_of_wagons(each_wagons_id, missing_wagons)
    temp_wagons_id = *each_wagons_id[2..each_wagons_id.length - 1], *each_wagons_id[0..1]
    output_wagons_id = *temp_wagons_id[0], *missing_wagons, *temp_wagons_id[1..temp_wagons_id.length - 1]
  end

  def self.add_missing_stops(routing_hash, **arguments)
    stops = {stops: arguments.values.to_a}
    new_routing_hash = {**routing_hash, **stops}
    new_routing_hash
  end

  def self.extend_route_information(route, more_route_information)
    extended_route_information = {**route, **more_route_information}
    extended_route_information
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

puts ""
puts "3"
puts ""
puts LocomotiveEngineer.add_missing_stops({from: "New York", to: "Miami"},
                    stop_1: "Washington, DC", stop_2: "Charlotte", stop_3: "Atlanta",
                    stop_4: "Jacksonville", stop_5: "Orlando")

puts ""
puts "4"
puts ""
puts LocomotiveEngineer.extend_route_information({"from": "Berlin", "to": "Hamburg"}, {"length": "100", "speed": "50"})
