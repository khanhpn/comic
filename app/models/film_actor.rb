class FilmActor < ApplicationRecord
  belongs_to :film
  belongs_to :actor
end
