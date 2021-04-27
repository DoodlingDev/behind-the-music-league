class Vote < ApplicationRecord
  belongs_to :submission
  belongs_to :voter, foreign_key: 'participant_id', class_name: 'Participant'

  has_one :song, through: :submission
  has_one :album, through: :song
  has_one :round, through: :submission
  has_one :submitter, through: :submission, source: :participants
end
