class CreateComplaints < ActiveRecord::Migration
  def change
    create_table :complaints do |t|
      t.integer :company_id
      t.integer :user_id
      t.text :body
      t.text :caption

      t.timestamps

    end
  end
end
