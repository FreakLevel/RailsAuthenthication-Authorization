# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2] # :nodoc:
  def change
    create_table :users do |t|
      t.string :user
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
