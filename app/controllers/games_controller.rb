require 'open-uri'

class GamesController < ApplicationController
  def new
    charset = Array('A'..'Z')
    @letters = Array.new(10) { charset.sample }.join
  end

  def score
    raise
  end

  def english_word?(word)
    response = open("https://wagon-dictionary.herokuapp.com/#{word}")
    json = JSON.parse(response.read)
    return json['found']
  end

end
