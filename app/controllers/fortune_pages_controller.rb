class FortunePagesController < ApplicationController
  @@page_counts = 0

  def your_fortune
    fortunes = ["You will win the lottery in 2019!", "Ill fortune is coming your way", "A new job is on the horizon"]
    @fortune = fortunes.sample
    render "fortune.json.jbuilder"
  end

  def lotto_numbers
    @numbers = (1...60).sort_by{rand}[1..6]
    render "lotto.json.jbuilder"
  end

  def site_visits
    @@page_counts += 1
    @count = @@page_counts
    render "visits.json.jbuilder"
  end

  def beer_song
    beer = 99
    tod = 1
    @beers = []
    99.times do 
      if beer != 0
        @beers << "#{beer} bottles of beer on the wall, #{beer} bottles of beer.
        Take one down and pass it around, #{beer - tod} bottles of beer on the wall."
        beer = beer - 1
      else 
        @beers << "No more bottles of beer on the wall, no more bottles of beer. 
        Go to the store and buy some more, 99 bottles of beer on the wall."
      end
    end
    render "beer.json.jbuilder"
  end

end
