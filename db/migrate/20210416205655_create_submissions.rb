# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateSubmissions < ActiveRecord::Migration[6.1]
  def change
    create_table :submissions do |t|
      t.references :round, foreign_key: true
      t.references :participant, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
# rubocop:enable Style/Documentation
