class Project < ActiveRecord::Base
	has_many :sections
	has_many :tasks, :through => :sections
	has_many :comments, :through => :tasks
end
