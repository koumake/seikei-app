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

#テーブル設計

##usersテーブル
|column|type|options|
|nickname|string|null: false|
|email|string|null: false|
|password|string|null: false|
### Association
-- has_many :meetings
-- has_many :groups, through: group_users
-- has_many :group_users
-- has_many :GroupMessages
-- has_many :reviews
-- has_many :ReviewComments

##meetingテーブル
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
-- has_many :GroupMessage


## group_usersテーブル
|column|type|options|
|user|references|foreign_key; true|
|group|references|foreign_key; true|
### Association
-- belongs_to :user
-- belongs_to :group

## GroupMessageテーブル
|column|type|options|
|content|text|null: false|
|user|references|foreign_key: true|
|group|references|foreign_key: true|
### Association
-- belongs_to :user
-- belongs_to :group


##reviewテーブル
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
-- has_many :ReviewComment

##ReviewCommentテーブル
|column|type|options|
|content|text|null: false|
|user|references|foreign_key: true|
|review|references|foreign_key: true|
### Association
-- belongs_to :user
-- belongs_to :review