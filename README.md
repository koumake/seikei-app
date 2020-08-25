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
-- has_many :MeetingParticipations
-- has_many :communitys
-- has_many :CommunityMessages
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


## meeting_MeetingParticipations テーブル
|column|type|options|
|meeting|references|foreign_key: true|
|MeetingParticipation|references|foreign_key: true|
### Association
-- belongs_to :meeting
-- belongs_to :MeetingParticipation


##MeetingParticipationテーブル
|column|type|options|
|user|references|foreign_key: true|
|meeting|references|foreign_key: true|
|profile|text|null: false|
|experience|string|null: false|
### Association
-- belongs_to :user
-- has_many :meeting, through: meeting_MeetingParticipations
-- has_many :MeetingParticipations

##communityテーブル
|column|type|options|
|title|string|null: false|
|genre|string|null: false|
|content|text|null: false|
|user|references|foreign_key: true|
### Association
-- belongs_to :user
-- has_many :CommunityMessage

##CommunityMessageテーブル
|column|type|options|
|content|text|null: false|
|user|references|foreign_key: true|
|community|references|foreign_key: true|
### Association
-- belongs_to :user
-- belongs_to :community


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