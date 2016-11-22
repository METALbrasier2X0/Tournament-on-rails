json.extract! tournoi, :id, :name, :game, :date, :time, :players, :created_at, :updated_at
json.url tournoi_url(tournoi, format: :json)