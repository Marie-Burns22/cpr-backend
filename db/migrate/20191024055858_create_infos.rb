class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :title
      t.string :content
      t.string :placement

      t.timestamps
    end
  end
end
