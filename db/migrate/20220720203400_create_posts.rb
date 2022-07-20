class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :image
      t.datetime :start_date
      t.datetime :end_date
      t.text :notes

      t.timestamps
    end
  end
end
