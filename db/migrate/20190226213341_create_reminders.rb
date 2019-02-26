class CreateReminders < ActiveRecord::Migration[5.2]
  def change
    create_table :reminders do |t|
      t.string :title
      t.text :message
      t.datetime :datetime
      t.bigint :user_id

      t.timestamps
    end
    add_foreign_key :reminders, :users
  end
end
