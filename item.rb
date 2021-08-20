class Item  

    attr_accessor :title, :description

    def initialize (title, deadline, description)
        return raise '!!!invalid date!!!' if !Item.valid_date?(deadline)
        @title = title
        @deadline = deadline
        @description = description
    end

    def self.valid_date?(deadline)
        year = deadline[0..3].to_i
        month = deadline[5..6].to_i
        day = deadline[8..9].to_i
        if year < 1900 || year > 2150 || month > 12 || day > 31 || day < 1 
            return false
        end
        true
    end

    def deadline
        @deadline
    end

    def deadline=(date)
        if Item.valid_date?(date)
            @deadline = date
        else
            raise "!!invalid date!!"
        end
    end
end


# p Item.new('Fix ', '2019-10-25', 'It loads.')
# p Item.new('Fix login page', '2019-10-42', 'It loads slow.')
# Item.valid_date?('1912-06-23') # true
# Item.valid_date?('2018-13-20') # false
# Item.valid_date?('2018-12-32') # false
# Item.valid_date?('10-25-2019') # false