class User < ActiveRecord::Base
<<<<<<< HEAD
  has_one :registration
=======
>>>>>>> 63bbf5d79d7d015194efb59ee5f5de248d02d037
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
<<<<<<< HEAD
  validates :email, :presence => true
=======
>>>>>>> 63bbf5d79d7d015194efb59ee5f5de248d02d037
end
