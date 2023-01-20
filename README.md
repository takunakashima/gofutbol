# アプリケーション名
Go!Futbol!

<br>

# アプリケーション概要
サッカー情報特化型SNS 

コミュニティ機能を実装し、任意のグループで情報交換ができる

<br>

# 課題解決
競技人口約2億6000万人を誇り、全世界の人たちが注目を集めるサッカーの最高舞台FIFAワールドカップ。

2022年カタール大会は、今尚猛威を振るうコロナ禍の中開催される初めてのワールドカップでした。

今大会で活躍した選手や注目を集めた選手、またはチームの事を

「サッカーのことをもっと知りたい！」

「私だけが持っている特別な写真をみんなに見てほしい！」

と思った人はきっと多いはず。

この『Go!Futbol!』はよりサッカーに特化し、チームや選手にスポットをあて情報交換を行うSNSです。

<br>

# URL
https://gofutbol.onrender.com

<br>

# GitHub URL
https://github.com/takunakashima/gofutbol

<br>

# テスト用アカウントuser1
・ニックネーム　　　:球際の魔術師

・メールアドレス　　:go@futbol

・パスワード　　　　:futbol1

・名前　　　　　　　:球際 剛

・生年月日　　　　　:1930/1/1

・好きなチーム　　　:横浜Fマリノス

<br>

# テスト用アカウントuser2
・ニックネーム　　　:右利きのマラドーナ

・メールアドレス　　:sample@sample

・パスワード　　　　:sample1

・名前　　　　　　　:ディエゴ　マラドーナ

・生年月日　　　　　:1930/1/1

・好きなチーム　　　:横浜Fマリノス

<br>

# 利用方法
1.トップページより新規登録またはログインを行う。

2.サイドバーのメニューボタンより新規投稿をクリックする。

3.新規投稿画面より、画像（jpeg,pngのみ）、月日、チーム（任意）、テキストを入力し投稿するをクリックする。

投稿者は投稿した記事を編集・削除ができる。

投稿者以外は投稿に対してのコメント・お気に入りをつける事ができる。

お気に入りした記事・投稿した記事はログインしたアカウントでマイページをクリックし、一覧表示ができる。

検索フォームにキーワードを入力すると、キーワードの文字列を含む検索結果が一覧表示される。



<br>


# アプリケーションを作成したストーリー
私は小学生〜大学卒業までサッカーを続けていました。将来はプロのサッカー選手になることを目指し、日々練習を重ねてきました。<br>
しかし、いわゆる強豪高校や世代別の代表選手とは無縁の無名高校〜大学に在籍していたため、実績のない私は日本国内でのテストトライアウトを受けることさえままならない状況でした。<br>
そのため雑誌の海外トライアウト記事に直接電話をしてアポを取り、直接海外にトライアウトを受けに行っていました。（ウルグアイ・アルゼンチン）<br>
当時は今ほどSNSやネットが民間化はされておらず、練習をする時間とトライアウトの情報を得るために途方もない時間を要していました。<br>
「もし当時、今のようにコミュニケーションが誰とでも簡単にできたらどれほどの時間を削減し時間を有効に使えただろう？」<br>
このような自身の経験から、このアプリを作成することを考えました。<br>
現在までに未実装の機能になりますが、この「Go!Futbol!」というアプリは、将来的にサッカー海外トライアウトを支援する中間仲介アプリとしてのリリースを目指しています。<br>

<br>

# 実装した機能についてのGIF及び説明

### トップページ一覧

<!-- [![Image from Gyazo](https://i.gyazo.com/f242421a7e47dec8499a60eaf4a1761d.gif)](https://gyazo.com/f242421a7e47dec8499a60eaf4a1761d) -->
[![Image from Gyazo](https://i.gyazo.com/0e05bcd46ffd9e625495aca246ebee10.jpg)](https://gyazo.com/0e05bcd46ffd9e625495aca246ebee10)

### 新規投稿

[![Image from Gyazo](https://i.gyazo.com/9d267fc1c5dd53c7b4b583ab09ee3de7.gif)](https://gyazo.com/9d267fc1c5dd53c7b4b583ab09ee3de7)

### 検索機能

[![Image from Gyazo](https://i.gyazo.com/194779ccfe98a62a0ea51855db3a1d48.gif)](https://gyazo.com/194779ccfe98a62a0ea51855db3a1d48)

### コメント機能

[![Image from Gyazo](https://i.gyazo.com/ea5571ecc4f36f5be237239374d948dc.gif)](https://gyazo.com/ea5571ecc4f36f5be237239374d948dc)

### お気に入り機能

[![Image from Gyazo](https://i.gyazo.com/2e37c867e37fa22872064c17419444fc.gif)](https://gyazo.com/2e37c867e37fa22872064c17419444fc)

<br>

# 工夫したポイント
・ユーザーの操作性を考慮し視覚的に見やすいトップページを意識しました。

トップページは最新投稿がスクロールで見れるように実装、またサイドバーを部分テンプレートで使用し画面遷移操作を簡単にできるようにしてみました。

<br>

・任意のキーワード（チーム名、選手名）での検索機能を実装しました。

この機能により多くの投稿の中から欲しい記事を絞り込み閲覧する事が可能になりました。

<br>

・お気に入り機能を実装することで、お気に入り登録した記事を一覧で見れるようにしました。

また記事に対してのコメント機能を実装し、ユーザー間の簡易コミュニケーションが可能になりました。

<br>

# 実装予定の機能
・コミュニティグループ作成機能

・ダイレクトメッセージ機能

・海外トライアウトのリンク掲載

<br>

# テストコード

以下をRspecにてテストコードを記述し、正常系・異常系をモデル単体で実行しています。

・devise ユーザー新規登録機能

[![Image from Gyazo](https://i.gyazo.com/b225469f08aa1c213420c08a296b13b6.png)](https://gyazo.com/b225469f08aa1c213420c08a296b13b6)

・新規投稿機能

[![Image from Gyazo](https://i.gyazo.com/f6157c3c2b3c63398ba64c0697c4ad77.png)](https://gyazo.com/f6157c3c2b3c63398ba64c0697c4ad77)

<br>


# テーブル設計

## usersテーブル

| Column             | Type   | Options                   |
| ------------------ | ------ | --------------------------|
| email              | string | null: false , unique: true|
| encrypted_password | string | null: false               |
| nickname           | string | null: false               |
| first_name         | string | null: false               |
| last_name          | string | null: false               |
| birth_date         | date   | null: false               |
| team_id            | integer| null: false               |

<br>

### Association

- has_many :posts
- has_many :comments
- has_many :favorites
<!-- - has_many :favorites, through: :user_favorites -->

<br>

## favoritesテーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | --------------------------|
| user               |reference| null: false , unique: true|
| post               |reference| null: false , unique: true|

<br>

### Association

- belongs_to :user
- belongs_to :post

<br>

<!-- ## user_favoritesテーブル

| Column             | Type    | Options                        |
| ------------------ | ------- | -------------------------------|
| user               |reference| null: false , foreign_key: true|
| favorite           |reference| null: false , foreign_key: true|

### Associfonation

- belongs_to :user
- belongs_to :favorite -->

## postsテーブル

| Column             | Type    | Options                         |
| ------------------ | ------- | --------------------------------|
| month_id           | integer | null: false                     |
| day_id             | integer | null: false                     |
| team_id            | integer | null: false                     |
| content            | text    | null: false                     |
| user               |reference| null: false , foreign_key: true |

<br>

### Association

- belongs_to :user
- has_many :comments
- has_many :favorites

<!-- ## tagsテーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ------------|
| tag_name           | string | null: false |

### Association

- has_many :post_tags
- has_many :posts, through: :user_favorites

## post_tagsテーブル

| Column             | Type    | Options                         |
| ------------------ | ------- | --------------------------------|
| tag                |reference| null: false, foreign_key: true  |
| post               |reference| null: false, foreign_key: true  |

### Association

- belongs_to :post
- belongs_to :tag -->

<br>

## commentsテーブル

| Column             | Type    | Options                        |
| ------------------ | ------- | -------------------------------|
| comment            | text    | null: false                    |
| post               |reference| null: false ,foreign_key: true |
| user               |reference| null: false ,foreign_key: true |

<br>

### Association

- belongs_to :post
- belongs_to :user


<br>

# データベース設計

[![Image from Gyazo](https://i.gyazo.com/ba0cde682fb9f288a7cf6853a4e529f3.png)](https://gyazo.com/ba0cde682fb9f288a7cf6853a4e529f3)
<br>

# 画面遷移図

[![Image from Gyazo](https://i.gyazo.com/ff5855a5edcb22bb5a654000fa87716b.png)](https://gyazo.com/ff5855a5edcb22bb5a654000fa87716b)