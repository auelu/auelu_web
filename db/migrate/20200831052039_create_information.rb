class CreateInformation < ActiveRecord::Migration[5.1]
  def change
    create_table :information do |t|
      t.date :date
      t.string :newcontent

      t.timestamps
      t.index [:newcontent, :date], :unique => true
    end
  end
end
