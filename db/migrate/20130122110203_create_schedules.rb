class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
      t.string :d_fname
      t.string :d_lname

      t.timestamps
    end
  end
end
