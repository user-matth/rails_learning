class CreateBanners < ActiveRecord::Migration[6.0]
  def change
    create_table :banners do |t|
      t.boolean :active
      t.integer :order
      t.string :name
      t.string :image
      t.string :resume
      t.string :description

      t.timestamps
    end
  end
end
