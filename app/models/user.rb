class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
 
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :team

    validates :team_id, numericality: { other_than: 1 , message: "can't be blank"}


end
