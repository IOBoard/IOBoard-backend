class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :status, :mode

  validate :mode_is_valid
  validates_presence_of :mode

  MODES = [:available, :busy, :away]

  def mode_is_valid
    errors.add :mode, "must be a valid status: " + MODES.to_s unless
        MODES.include? mode
  end
end
