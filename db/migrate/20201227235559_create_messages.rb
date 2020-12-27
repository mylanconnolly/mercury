# frozen_string_literal: true

class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.references :created_by, null: false, foreign_key: { to_table: :users }
      t.references :room, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end