class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :team
    has_many :comments
    has_many :posts
    validates :team_id, numericality: { other_than: 1 , message: "can't be blank"}


end
