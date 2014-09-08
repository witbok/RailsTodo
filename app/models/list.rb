class List < ActiveRecord::Base
	has_many :task
	validates :name, presence: true
	validates :description, presence: true
end
