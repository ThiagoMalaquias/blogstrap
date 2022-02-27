class Manager < ApplicationRecord

  def self.login(email, password)
    self.find_by(email: email, password: password)
  end
end
