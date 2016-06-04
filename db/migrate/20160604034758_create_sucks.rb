class CreateSucks < ActiveRecord::Migration
  def change
    create_table :sucks do |t|
      t.integer :user_id
      t.integer :complaint_id

      t.timestamps

    end
  end
end
