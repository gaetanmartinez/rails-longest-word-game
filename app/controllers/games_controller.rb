class GamesController < ApplicationController
  def new
    @letters = []
    @voyelles =  ["A", "E", "I", "O", "U","Y"]
    @consonnes =  ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z"]

      @letters << @voyelles.sample(5)
      @letters << @consonnes.sample(5)

  end

  def score
    URI.open("https://wagon-dictionary.herokuapp.com/:word")
  end
end
