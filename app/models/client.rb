class Client < ActiveRecord::Base
  has_one :plan
  belongs_to :trainer

  has_secure_password

  def name
    self.first_name + " " + self.last_name
  end
end
