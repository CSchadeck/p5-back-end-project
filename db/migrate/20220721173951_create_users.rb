class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.text :email
      t.text :bio
      t.text :request

      t.timestamps
    end
  end
end
