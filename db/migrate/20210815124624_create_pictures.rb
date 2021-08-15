class CreatePictures < ActiveRecord::Migration[6.1]
  def change
    create_table :pictures do |t|
      t.text :name
      t.references :imageable, polymorphic: true, null: false
    end
  end
end
