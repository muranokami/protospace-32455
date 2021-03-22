# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# テーブル設計

## usersテーブル

| Column     | Type   | Options  |
| ---------- | ------ | -------- |
| email      | string | NOT NULL |
| password   | string | NOT NULL |       
| name       | string | NOT NULL |
| profile    | text   | NOT NULL |
| occupation | text   | NOT NULL |
| position   | text   | NOT NULL |

### Association

- belongs_to :comments
- belongs_to :prototypes


## commentsテーブル

| Column    | Type       | Options  |
| --------- | ---------- | -------- |
| text      | text       | NOT NULL |
| user      | references |          |
| prototype | references |          |

### Association

- has_many :users
- has_many :prototypes


## prototypes

| Column     | Type          | Options  |
| ---------- | ------------- | -------- |
| title      | string        | NOT NULL |
| catch_copy | text          | NOT NULL |
| concept    | text          | NOT NULL |
| image      | ActiveStorage |          |
| user       | references    |          |

### Association

- has_many :users
- belongs_to :comments

会話や、チャットを楽しくできるコミュニケーションツール
人と会話が多くなれば良いと思い作りました。
会話をすることで友達を増やしていきましょう。