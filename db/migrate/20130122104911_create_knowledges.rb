class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :topic
      t.text :content
      t.string :picture
      t.string :institution

      t.timestamps
    end
  end
end
