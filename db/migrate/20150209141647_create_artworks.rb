class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.belongs_to :collection
      t.belongs_to :artist
      t.date       :date
      t.string     :title
      t.string     :medium
      t.string     :dimensions
      t.string     :url

      t.timestamps
    end
  end
end
