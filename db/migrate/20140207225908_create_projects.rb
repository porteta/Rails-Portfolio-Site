class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :text
      t.string :permalink

      t.timestamps
    end
  end
end
