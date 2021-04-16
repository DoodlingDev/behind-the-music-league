# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|
      t.string :name, null: false

      t.timestamps
    end

    create_join_table :genres, :artists
  end
end
# rubocop:enable Style/Documentation
