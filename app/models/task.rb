class Task < ActiveRecord::Base
	belongs_to :section
	has_many :comments, :dependent => :destroy
	accepts_nested_attributes_for :comments, :reject_if => lambda { |a| a[:comment].blank? }, :allow_destroy => true

	scope :taskcount, where('complete = ?', true)
end
