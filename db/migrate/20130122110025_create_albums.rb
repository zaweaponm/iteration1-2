class CreateAlbums < ActiveRecord::Migration
  def change
    create_table 'albums' do |t|
      t.string 'path'
      t.references 'activities'
      
      t.timestamps
    end
  end
end
