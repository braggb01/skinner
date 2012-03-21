class Section < ActiveRecord::Base
	belongs_to :project
	has_many :tasks, :dependent => :destroy
	accepts_nested_attributes_for :tasks, :reject_if => lambda { |a| a[:description].blank? }, :allow_destroy => true
end
