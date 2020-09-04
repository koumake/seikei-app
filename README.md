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

# 美容整形口コミ共有アプリ

## アプリケーションの概要
このアプリでできること
* ユーザーが美容整形の口コミを投稿&投稿にコメントできる
* ユーザーがオフ会を自由に募集できる
* ユーザーが自由にグループを作ってグループチャットができる

## URL

## テスト用アカウント

## このアプリの利用方法

## このアプリ制作の意図
#### ターゲット
* 美容整形に興味がある２０代の女性
* 夜職や援助交際等で稼いでる人

#### ターゲットの悩み
* 美容外科の口コミやクリニック数が多すぎて選べない
* 気軽に話せる整形友達が欲しい
* 整形した人達でオフ会をしたい
* コンプレックス仲間が欲しい（鼻が低いなど）
* 整形経験者に話を聞きたい
* 整形したいけど怖いし勇気が出ない

これらの課題を解決するためにこのアプリを作成しました。


## 要件定義
|    機能          | 目的               |   詳細            | ユーザーストーリー|
| --------------- | ------------------ | ---------------- | -------------- |
| オフ会募集機能 | ユーザーがオフ会を自由に<br>募集できるようにするため | ・オフ会募集投稿機能<br>・募集中オフ会一覧表示機能<br>・各オフ会の詳細表示機能<br>・オフ会申し込み機能 | ユーザーは気軽にオフ会ができて整形仲間ができる<br>整形仲間とクリニックの情報を共有できる |
| グループチャット機能 | ・整形に興味がある人達が<br>口コミなどの情報共有するため<br>・コンプレックスや悩みを相談しあえるようにするため | ・グループ作成機能<br>・グループ内でチャット機能<br>・グループ一覧表示機能 | ユーザーはグループ内で整形の情報を共有できる<br>ユーザーはグループ内で容姿の悩みを打ち明けれて傷が癒える |
| 整形の口コミ投稿機能 | ・ユーザーが自由に口コミを<br>共有できるようにするため<br>ユーザーが口コミを調べれるようにするため |・口コミ投稿機能<br>・口コミ詳細表示機能<br>・口コミ一覧表示機能 | ・ユーザーは自由に口コミを投稿でき、<br>承認欲求も満たされる<br>・ユーザーはリアルな口コミを知り、<br>整形に失敗しなくなる |

## 実装機能の特徴
#### オフ会募集機能
* オフ会の申し込みをする時に主催者にDMを送れるように実装

#### グループチャット機能
* チャットではテキストだけでなく写真も投稿できるように実装

#### 口コミ投稿機能
* 写真は「整形前」と「整形後」の２枚以上投稿できるように実装
* 口コミ投稿者にリプライを送れるようにコメント機能を実装

## 今後実装予定の機能
* ユーザー間でDMのやりとりができる機能
* 特定のユーザーをブロックする機能
* クリニック一覧表示機能
* クリニックを予約できる機能

## ローカルでの動作方法

# テーブル設計

## usersテーブル
|column|type|options|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |
### Association
-- has_many :meetings
-- has_many :groups, through: group_users
-- has_many :group_users
-- has_many :speaks
-- has_many :reviews
-- has_many :ReviewComments

## meetingテーブル
|column|type|options|
| -------- | ------ | ----------- |
|title|string|null: false|
|date_time|string|null: false|
|plece|string|null: false|
|number|string|null: false|
|target_person|string|null: false|
|content|text|null: false|
|user|references|foreign_key: true|
### Association
-- belongs_to :user
-- has_many :MeetingParticipations, through: meeting_MeetingParticipations
-- has_many :meeting_MeetingParticipations


## roomテーブル
|column|type|options|
|name|string|
### Association
-- has_many :messages
-- has_many :entries


## messageテーブル
|column|type|options|
|content|text|
|user|references|foreign_key: true|
|room|references|foreign_key: true|
### Association
-- belongs_to user
-- belongs_to room


## entriesテーブル
|column|type|options|
|user|references|foreign_key: true|
|room|references|foreign_key: true|
### Association
-- belongs_to :user
-- belongs_to :room



## groupテーブル
|column|type|options|
|name|string|null: false|
|user|references|foreign_key: true|
### Association
-- has_many :users, through: group_users
-- has_many :group_users
-- has_many :speaks


## group_usersテーブル
|column|type|options|
|user|references|foreign_key; true|
|group|references|foreign_key; true|
### Association
-- belongs_to :user
-- belongs_to :group

## speakテーブル
|column|type|options|
|content|text|null: false|
|user|references|foreign_key: true|
|group|references|foreign_key: true|
### Association
-- belongs_to :user
-- belongs_to :group


## reviewテーブル
|column|type|options|
|title|string|null: false|
|treatment_site|string|null: false|
|date|string|null: false|
|clinic|string|null: false|
|doctor|string|null: false|
|price|integer|null: false|
|content|text|null: false|
|user|references|foreign_key: true|
### Association
-- belongs_to :user
-- has_many :comments

##commentテーブル
|column|type|options|
|content|text|null: false|
|user|references|foreign_key: true|
|review|references|foreign_key: true|
### Association
-- belongs_to :user
-- belongs_to :review