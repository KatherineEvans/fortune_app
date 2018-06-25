Rails.application.routes.draw do
  get "/lucky_day" => "fortune_pages#your_fortune"
  get "/lucky_numbers" => "fortune_pages#lotto_numbers"
  get "/page_visit" => "fortune_pages#site_visits"
  get "/beer" => "fortune_pages#beer_song"
end
