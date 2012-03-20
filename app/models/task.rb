class Task < ActiveRecord::Base
	belongs_to :section
	has_many :comments
end
