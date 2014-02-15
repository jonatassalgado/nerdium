class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :profile_name, presence: true,
  					 uniqueness: true,
  					 format: {
  					 		with: /\A[a-zA-Z0-9_-]+\Z/,
  					 		message: "O nome do perfil nao pode ter espacos."
  					 }	

  validates_length_of :profile_name, minimum: 3, too_short: "O nome de usuarios precisa ter mais de 2 caracteres."


end
