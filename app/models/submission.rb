class Submission < ApplicationRecord
  belongs_to :round
  belongs_to :song
  belongs_to :participant

  has_many :artists, through: :song, source: :artists
  has_many :genres, through: :song, source: :artists
  has_many :votes
end
