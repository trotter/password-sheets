class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def generate_seed
    self.seed = ActiveSupport::SecureRandom.hex(16)
  end
end
