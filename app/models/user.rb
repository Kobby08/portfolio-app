class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  # validations
  validates_presence_of :name

  # public interface
  def first_name
    name.split.first
  end

  def last_name
    name.split.last
  end
end
