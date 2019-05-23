class VentureCapitalist
    attr_reader

    @@all = []

    def initialize(name, total_worth)
        @name = name
        @total_worth = total_worth
        @@all << self
    end

    def self.all
        @@all
    end

    def self.tres_commas_club
    end

    def offer_contract
# given a **startup object**, type of investment (as a string), and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
    end

    def funding_rounds
#  returns an array of all funding rounds for that venture capitalist
    end

    def portfolio
# Returns a **unique** list of all startups this venture capitalist has funded
    end

    def biggest_investment
# returns the largest funding round given by this venture capitalist
    end

    def invested
# given a **domain string**, returns the total amount invested in that domain
    end
end