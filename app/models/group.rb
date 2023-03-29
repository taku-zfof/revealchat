class Group < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validates :groupname, presence: true
  validates :password, length: { minimum: 6 },  on: :create
 
  def email_required?
    false
  end

  def email_changed?
    false
  end
  
end
