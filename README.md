# README


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

チャットやコメント、写真機能をつけている。
人の相談に乗るのに最適

コメント機能に写真を貼ったり、その投稿にコメントすることができる。
人が相談しやすいチャットツールを作ってみたいと思い作りました。
コメント機能
写真機能
ユーザー管理機能
苦労したところ
コメント機能を作るときのエラーを解決するのが難しかった。