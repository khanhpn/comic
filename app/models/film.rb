class Film < ApplicationRecord
  has_many :film_actors
  has_many :actors, through: :film_actors
end
