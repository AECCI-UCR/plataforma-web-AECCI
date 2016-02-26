class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :year
      t.string :teacher
      t.integer :semester
      t.integer :test_number
      t.string :file_url
      t.references :course, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
