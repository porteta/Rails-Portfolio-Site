class AddPositionToPagesAndProjects < ActiveRecord::Migration
  def change
  	add_column :pages, :position, :integer
  	add_column :projects, :position, :integer
  	add_column :images, :position, :integer
  end
end
