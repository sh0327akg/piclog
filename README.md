# 個人作成アプリ(作成中)
# piclog
#### [github](https://github.com/sh0327akg/piclog)

### 作成の目的
- 学習したことの復習
- 気軽に記録できる備忘録として使えるものを作りたい

### 主な機能
- 写真、文章の記録

### 実装予定の機能
- 新規投稿・編集・削除機能
- ユーザー管理機能
- タグ管理機能
  - タグごとの一覧表示切替

### 使用技術
- 言語:Haml, SCSS, Ruby
- フレームワーク:Ruby on Rails
- DB:mySQL
- サーバー:AWS(予定)
***
### DB設計
##### usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|email|string|null: false,unique: true|
|password|string|null: false|
###### Association
- has_many: posts, dependent: :destroy

##### postsテーブル
|Column|Type|Options|
|------|----|-------|
|subject|string|null: false|
|text|text|null: false|
|image|text|null: false|
|user_id|integer|foreign_key: true|
|category_id|integer|foreign_key: true|
###### Association
- belongs_to: user
- belongs_to: tags
- has_many: categories

##### tagsテーブル
|Column|Type|Options|
|------|----|-------|
|------|----|-------|
###### Association
- has_many: posts

***

## トップ画面
<a href="#"><img src="#" alt="Image from Gyazo" width="1242"/></a>
