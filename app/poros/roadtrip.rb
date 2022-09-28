class Roadtrip
attr_reader :id, :starting_location, :destination, :trip_time, :weather_data, :trip_time_hours

    def initialize(starting_location, destination, weather_data, trip_time)
        @id = nil 
        @starting_location = starting_location 
        @destination = destination
        @trip_time = trip_time
        @weather_data = weather_data
        @trip_time_hours = ((trip_time / 60) / 60).to_s + " hours"
    end
end