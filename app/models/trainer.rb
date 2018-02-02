class Trainer < ActiveRecord::Base
  has_many :plans
  has_many :clients

  has_secure_password

  def name
    self.first_name + " " + self.last_name
  end
end
