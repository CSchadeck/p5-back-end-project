class CreateMembers < ActiveRecord::Migration[6.1]
  def change
    create_table :members do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :email

      t.timestamps
    end
  end
end
