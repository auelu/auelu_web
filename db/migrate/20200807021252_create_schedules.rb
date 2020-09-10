class CreateSchedules < ActiveRecord::Migration[5.1]
  def change
    create_table :schedules do |t|
      t.date :date
      t.integer :starthour
      t.integer :endhour
      t.integer :startminute
      t.integer :endminute
      t.string :gameplace
      t.string :content

      t.timestamps
    end
  end
end
