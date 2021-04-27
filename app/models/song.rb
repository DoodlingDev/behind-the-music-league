# frozen_string_literal: true

class Song < ApplicationRecord
  belongs_to :album
  has_and_belongs_to_many :artists
  has_many :submissions
  has_many :genres, through: :artists
  has_many :votes, through: :submissions
  has_many :submitters, through: :submissions, source: :participant
end
