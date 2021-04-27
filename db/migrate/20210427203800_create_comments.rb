class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.references :submission, foreign_key: true
      t.references :participant, foreign_key: true
      t.string :body, null: false

      t.timestamps
    end
  end
end
