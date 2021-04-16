# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateArtists < ActiveRecord::Migration[6.1]
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :spotify_id, null: false

      t.timestamps
    end
  end
end
# rubocop:enable Style/Documentation
