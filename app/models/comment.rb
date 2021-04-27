# frozen_string_literal: true

class Comment < ApplicationRecord
  belongs_to :submission
  belongs_to :participant
end
