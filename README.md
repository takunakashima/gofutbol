**# テーブル設計**

**##　usersテーブル**

| Column             | Type   | Options                   |
| ------------------ | ------ | --------------------------|
| email              | string | null: false , unique: true|
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| birth_date         | date   | null: false               |
| team_id            | integer| null: false               |

**### Association**

- has_many :posts
- has_many :comments
- has_many :user_favorites
- has_many :favorites, through: :user_favorites

**##　favoritesテーブル**

| Column             | Type   | Options                   |
| ------------------ | ------ | --------------------------|
| follow             | string | null: false , unique: true|
| follower           | string | null: false               |

**### Association**

- has_many :user
- has_many :user, through: :user_favorites

**## user_　favoritesテーブル**

| Column             | Type    | Options                        |
| ------------------ | ------- | -------------------------------|
| user               |reference| null: false , foreign_key: true|
| favorite           |reference| null: false , foreign_key: true|

**### Association**

- belongs_to :user
- belongs_to :favorite

**##　postsテーブル**

| Column             | Type    | Options                         |
| ------------------ | ------- | --------------------------------|
| month_id           | integer | null: false                     |
| day_id             | integer | null: false                     |
| team_id            | integer | null: false                     |
| content            | text    | null: false                     |
| user               |reference| null: false , foreign_key: true |

**### Association**

- belongs_to :user
- has_many :comments
- has_many :post_tags
- has_many :tags, through: :post_tags

**##　tagsテーブル**

| Column             | Type   | Options     |
| ------------------ | ------ | ------------|
| tag_name           | string | null: false |

**### Association**

- has_many :post_tags
- has_many :posts, through: :user_favorites

**##　post_tagsテーブル**

| Column             | Type    | Options                         |
| ------------------ | ------- | --------------------------------|
| tag                |reference| null: false, foreign_key: true  |
| post               |reference| null: false, foreign_key: true  |

**### Association**

- belongs_to :post
- belongs_to :tag

**##　commentsテーブル**

| Column             | Type    | Options                        |
| ------------------ | ------- | -------------------------------|
| post               |reference| null: false ,foreign_key: true |
| user               |reference| null: false ,foreign_key: true |

**### Association**

- belongs_to :post
- belongs_to :user