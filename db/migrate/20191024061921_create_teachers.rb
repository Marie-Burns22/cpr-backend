class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :description
      t.string :img

      t.timestamps
    end
  end
end
