class User < ApplicationRecord
  has_many :comments
  has_many :articles
  enum role: [:author, :admin]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :author
  end
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  include Gravtastic
  gravtastic
end
