class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :name
      t.string :image_url
      t.string :gender
      t.string :email
      t.string :locale
      t.integer :timezone_offset

      t.timestamps
    end
  end
end
