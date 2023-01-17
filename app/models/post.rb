class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :user
    belongs_to :team
    belongs_to :month
    belongs_to :day
    has_many :comments
    has_many :favorites
    # has_many :post_tags
    # has_many :post_tags,through: :post_tags
    has_one_attached :image

    validates :month_id, numericality: { other_than: 1 , message: "は---以外を入力してください"}
    validates :day_id, numericality: { other_than: 1 , message: "は---以外を入力してください"}
    validates :content, presence: true, length: { maximum: 1000 }
    validates :image, presence: true

    def self.search(search)
      if search != ""
        Post.where('content LIKE(?)', "%#{search}%")
      else
        Post.all
      end
    end

    def already_favorited?(user) #引数を受け取るように設定
      favorites.where(user_id: user.id).exists?
    end
end
