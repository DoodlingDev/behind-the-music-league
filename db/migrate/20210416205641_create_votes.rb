# frozen_string_literal: true

# rubocop:disable Style/Documentation
class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_join_table :participants, :submissions, table_name: :votes
  end
end
# rubocop:enable Style/Documentation
