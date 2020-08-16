class CreateUsers < ActiveRecord::Migration[4.2]
  def change
    create_table :users do |t|
      t.string :name
      t.integer :number
      t.binary :photo
      t.string :photo_content_type
      t.date :birthday
      t.string :school
      t.string :belong

      t.timestamps
    end
  end
end
