class Page < ActiveRecord::Base
	validates :title, :permalink, :content, :position, presence: true
	
	default_scope order(:position) 
end
