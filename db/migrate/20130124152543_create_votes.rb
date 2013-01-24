class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :chicken
      t.boolean :cobra
      t.text :reason
      t.integer :user_id

      t.timestamps
    end
  end
end
