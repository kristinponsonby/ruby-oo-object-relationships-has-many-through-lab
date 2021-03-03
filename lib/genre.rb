class Genre
    attr_accessor :name, :artist, :song

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
        songs.map do |song|
              song.artist
        end
    end


end


#def waiters
    #meals.map do |meal|
    #  meal.waiter

    #waiter has many meals associated with himself
    #def meals
    #    Meal.all.select do |meal|
    #      meal.waiter == self #checking for waiter now
    #    end