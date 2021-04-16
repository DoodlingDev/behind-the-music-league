# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
# rubocop:enable Style/Documentation
