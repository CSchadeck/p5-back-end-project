class CreateRequests < ActiveRecord::Migration[6.1]
  def change
    create_table :requests do |t|
      t.string :title
      t.integer :user_id
      t.string :image_url
      t.text :description
      t.datetime :start_date
      t.datetime :end_date
      t.boolean :accepted
      t.string :accepted_by

      t.timestamps
    end
  end
end
