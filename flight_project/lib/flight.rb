require "passenger"
class Flight

    # attr_reader

    def initialize(flight_str, cap_num)
        @flight_number = flight_str
        @capacity = cap_num
        @passengers = []
    end

    def passengers
        @passengers
    end

    def full?
        return true if @passengers.length == @capacity
        return false if @passengers.length < @capacity
    end

    def board_passenger(passenger)
        @passengers << passenger if passenger.has_flight?(@flight_number) && !self.full?
    end

    def list_passengers
       arr = []

       @passengers.each do |passenger|
        arr << passenger.name
       end
       arr
    end

    def [](index_num)
        return @passengers[index_num]
    end

    def <<(p)
        self.board_passenger(p)
    end
end