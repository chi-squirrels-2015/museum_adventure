class CreateCollections < ActiveRecord::Migration
  def change
    create_table :collections do |t|
      t.belongs_to :museum
      t.string :name

      t.timestamps
    end
  end
end
