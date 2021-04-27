class Round < ApplicationRecord
  has_many :submissions
  has_many :participants, through: :submissions
  has_many :songs, through: :submissions
  has_many :artists, through: :submissions
  has_many :albums, through: :songs, source: :album
  has_many :genres, through: :submissions
  has_many :votes, through: :submissions
end
