class Section < ActiveRecord::Base
	belongs_to :project
	has_many :tasks
	has_many :comments, :through => :tasks
end
