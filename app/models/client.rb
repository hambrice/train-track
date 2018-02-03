class Client < ActiveRecord::Base
  has_many :plans
  belongs_to :trainer

  has_secure_password

  def name
    self.first_name + " " + self.last_name
  end
end
