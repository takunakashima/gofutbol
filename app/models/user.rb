class User < ApplicationRecord
    devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
   
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :team
    has_many :comments
    has_many :posts
    has_many :favorites    

    VALID_PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
    validates :password, format: { with: VALID_PASSWORD_REGEX}
    validates :nickname, presence: true
    validates :first_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/}
    validates :last_name, presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/}

    def favorite_find(post_id)
        favorites.where(post_id: post_id).exists?
    end
end
