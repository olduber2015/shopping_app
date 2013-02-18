class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item
      t.string :link

      t.timestamps
    end
  end
end
