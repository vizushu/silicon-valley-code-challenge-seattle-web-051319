class Startup
    attr_reader :founder
    attr_accessor :name, :domain

    @@all = []

    def initialize(name, founder, domain )
        @name = name
        @founder = founder
        @domain = domain
        @@all << self
    end

    def self.all
        @@all
    end

    def pivot
# given a string of a **domain** and a string of a **name**, change the domain and name of the startup
    self.domain = gets.chomp
    self.name = gets.chomp
    end

    def find_by_founder(name)
# given a string of a **founder's name**, returns the **first startup** whose founder's name matches
        @@all.find do |startup|
        startup.founder == name
        end    
    end

    def domains
# should return an **array** of all of the different startup domains
        @@all.collect do |startup|
            startup.domain
        end.uniq
    end

    def sign_contract(vc, type, investment)
# given a **venture capitalist object**, type of investment (as a string), 
# and the amount invested (as a float), creates a new funding round and associates it with that startup and venture capitalist.
    fifth_fund = FundingRound.new(self, vc, type, investment)
    end

    def num_funding_rounds
# Returns the total number of funding rounds that the startup has gotten
        FundingRound.all.count
    end

    def total_funds
# Returns the total sum of investments that the startup has gotten
        total_inv = FundingRound.all.each do |funding_amount|
            funding_amount.startup = self
        end.sum
    end

    def investors
# Returns a **unique** array of all the venture capitalists that have invested in this company
    end

    def big_investors
# Returns a **unique** array of all the venture capitalists that have invested in this company and are in the Trés Commas club
    end


end

FundingRound.all.select |round|
    round.startup == self


