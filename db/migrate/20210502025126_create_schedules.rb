class CreateSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :schedules do |t|
      t.string :title
      t.date :start_date
      t.date :end_date
      t.integer :all_day
      t.text :post_memo

      t.timestamps
    end
  end
end
