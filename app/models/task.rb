class Task < ApplicationRecord
  belongs_to :user
  has_many :matching_tasks
end
