class Project < ActiveRecord::Base
	has_attached_file :thumbnail, styles: {thumbnail: "350x250#"}
	has_many :images, dependent: :destroy
	validates :title, :permalink, :text, :thumbnail, :images, presence: true
	accepts_nested_attributes_for :images, :allow_destroy => true

	default_scope order(:position)
end
