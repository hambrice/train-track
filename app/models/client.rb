class Client < User
  has_a :plan
  belongs_to :trainer, through: :plan
end
