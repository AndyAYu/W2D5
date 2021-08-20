class Passenger

    attr_reader :name

    def initialize(name)
        @name = name
        @flight_numbers = []
    end

    def has_flight?(num_str)
        return true if @flight_numbers.include?(num_str.upcase)
        false
    end

    def add_flight(flight_num_str)
    @flight_numbers << flight_num_str.upcase if !has_flight?(flight_num_str)
    end

    
end