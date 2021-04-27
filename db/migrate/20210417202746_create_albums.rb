# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.string :spotify_id, null: false
      t.integer :popularity

      t.timestamps
    end

    create_join_table :artists, :albums
  end
end
# rubocop:enable Style/Documentation
