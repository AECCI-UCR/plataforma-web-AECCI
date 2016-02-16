class CreateAds < ActiveRecord::Migration
  def change
    create_table :ads do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.string :image_carousel_url
      t.boolean :important

      t.timestamps null: false
    end
  end
end
