class Project < ActiveRecord::Base
	has_many :sections, :dependent => :destroy
	has_many :tasks, :through => :sections
	accepts_nested_attributes_for :sections, :reject_if => lambda { |a| a[:title].blank? }, :allow_destroy => true

	
end
