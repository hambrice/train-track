class Plan < ActiveRecord::Base
  belongs_to :client
  belongs_to :trainer
  has_many :exerciseplans
  has_many :exercises, through: :exerciseplans
end
