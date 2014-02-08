class Image < ActiveRecord::Base
	has_attached_file :image
	attr_accessor :delete_image
	validates :image, :position, presence: true

	default_scope order(:position)
end
