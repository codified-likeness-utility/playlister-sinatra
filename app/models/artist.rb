class Artist < ActiveRecord::Base
    has_many :songs
    has_many :genres, through: :songs

    # attr_reader :name

    # @@all = []

    # def initialize(params)
    #     @name = params[:name]
    #     @@all << self
    # end

    # def self.all
    #     @@all
    # end

end