class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :places
  has_many :address
  has_many :description
  has_many :comments
  has_many :photos

  # mount_uploader :picture, PictureUploader

end
