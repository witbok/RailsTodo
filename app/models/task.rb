class Task < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :due_date, presence:true
end
