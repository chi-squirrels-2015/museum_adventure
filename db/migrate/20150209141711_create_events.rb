class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.belongs_to :museum
      t.string :name
      t.date :date
      t.text :description
    end
  end
end
