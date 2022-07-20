class Admin < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #enum role: %i[super_admin admin]

  enum role: [:super_admin, :admin]
  after_initialize :set_default_role, :if => :new_record?

  private

  def set_default_role
    self.role ||= :admin
  end
end
