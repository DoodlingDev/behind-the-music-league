class Participant < ApplicationRecord
  has_many :votes

  has_many :submissions
  has_many :received_votes, through: :submissions, source: :votes
  has_many :submitted_songs, through: :submissions, source: :song
  has_many :submitted_artists, through: :submissions, source: :artists
  has_many :submitted_genres, through: :submissions, source: :genres

  has_many :rounds, through: :submissions
end
