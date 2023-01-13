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


**##　commentsテーブル**

| Column             | Type    | Options                        |
| ------------------ | ------- | -------------------------------|
| comment            | text    | null: false                    |
| post               |reference| null: false ,foreign_key: true |
| user               |reference| null: false ,foreign_key: true |

**### Association**

- belongs_to :post
- belongs_to :user