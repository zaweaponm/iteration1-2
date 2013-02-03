class CreateActivity < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :act_name
      t.string :institution

      t.timestamps
    end
  end
end
