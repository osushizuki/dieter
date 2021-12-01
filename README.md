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

# アプリケーション名
dieter

# アプリケーション概要
一日の体重、消費カロリー、摂取カロリーを入力し、管理するアプリ

# URL

# テスト用アカウント

# 利用方法
アカウントを作成し、毎日の体重と摂取カロリーと運動内容を記録していく

# 目指した課題解決
ダイエットを細かく精密に行いたいけど、記録を管理するのが面倒でなかなか長続きしない人が、
自身のダイエットを簡単に記録できてモチベーションアップにつなげたい

# 洗い出した要件
 # トップページ
 [ボタン]
 ・サインイン/ログインページに遷移できるボタンがある
 ・ログイン時はログアウトできるボタンがある
 ・マイページに遷移するボタンがある
 ・体重入力ページに遷移するボタンがある
 ・摂取カロリー入力ページに遷移するボタンがある
 ・運動記録入力ページに遷移するボタンがある
 [表示]
 ・その日の摂取カロリーと食べたものが一覧で見ることができる
 ・その日の消費カロリーが計算されて、見ることができる
 # 体重入力ページ
 [ボタン]
 ・体重入力フォームがある
 # 摂取カロリー入力ページ
 [ボタン]
 ・摂取カロリー入力フォームがある
 ・食べた内容の入力フォームがある
 # 運動記録入力ページ
 [ボタン]
 ・運動内容入力フォームがある
 ・運動時間入力フォームがある
 # マイページ
 [表示]
 ・サインアップ時に入力した内容を見ることができる
 ・自分のこれまでの体重をグラフで見ることができる


## users テーブル
| Column               | Type     | Options                       |
| -------------------- | -------- | ----------------------------- |
| nick_name            | string   | null: false                   |
| encrypted_password   | string   | null: false                   |
| weight               | integer  | null: false                   |
| height               | integer  | null: false                   |
| age                  | integer  | null: false                   |
| habit_id             | integer  | null: false                   |
| sex_id               | integer  | null: false                   |

### Association
has_many :exercises
has_many :meals

## exercises テーブル
| Column               | Type         | Options                       |
| -------------------- | ------------ | ----------------------------- |
| time                 | integer      | null: false                   |
| menu_id              | integer      | null: false                   |
| user                 | references   | null: false, foreign_key: true|

### Association
belongs_to :user

## meals テーブル
| Column               | Type         | Options                       |
| -------------------- | ------------ | ----------------------------- |
| calorie              | integer      | null: false                   |
| explanation          | text         | null: false                   |
| user                 | references   | null: false, foreign_key: true|

### Association
belongs_to :user
* ...