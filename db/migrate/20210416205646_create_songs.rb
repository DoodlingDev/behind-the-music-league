# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateSongs < ActiveRecord::Migration[6.1]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.string :spotify_id, null: false

      t.timestamps
    end

    create_join_table :artists, :songs
  end
end
# rubocop:enable Style/Documentation
