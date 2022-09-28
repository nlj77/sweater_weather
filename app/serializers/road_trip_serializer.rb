class RoadtripSerializer
    include JSONAPI::Serializer
    attributes :starting_location, :destination, :travel_time, :weather_data
end