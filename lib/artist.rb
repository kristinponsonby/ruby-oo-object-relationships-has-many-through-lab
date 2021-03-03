class Artist
    attr_accessor :name, :song, :genre

     @@all = []
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        Song.new(name, self, genre)
    end

    def songs
        Song.all.select {|song| song.artist == self} 
    end

    def genres
        songs.map do |song|
            song.genre
        end
    end
 
end

#def new_meal(waiter, total, tip=0)
 #   Meal.new(waiter, self, total, tip)
 # end 

  #customer has many waiters, through meals
   #def waiters
    #meals.map do |meal|
    #  meal.waiter