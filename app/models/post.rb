class Post < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to :user
    belongs_to :team
    belongs_to :month
    belongs_to :day
    has_many :comments
    # has_many :post_tags
    # has_many :post_tags,through: :post_tags
    has_one_attached :image

    validates :month_id, numericality: { other_than: 1 }
    validates :day_id, numericality: { other_than: 1 }
    validates :content, presence: true
    validates :image, presence: true


end
