class AddTeacherIdToTest < ActiveRecord::Migration
  def change
    remove_column :tests, :teacher
    add_reference :tests, :teacher, index: true, foreign_key: true
  end
end
