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
| オフ会募集機能 | ユーザーがオフ会を自由に<br>募集できるようにするため | ・オフ会募集投稿機能<br>・募集中オフ会一覧表示機能<br>・各オフ会の詳細表示機能<br>・オフ会申し込み機能 | ユーザーは気軽にオフ会ができて整形仲間ができる |


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