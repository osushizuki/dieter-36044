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

##users テーブル
|Column               |Type     |Options                       |
|nick_name            |string   |null: false                   |
|encrypted_password   |string   |null: false                   |
|weight               |integer  |null: false                   |
|height               |integer  |null: false                   |
|age                  |integer  |null: false                   |
|habit_id             |integer  |null: false                   |

### Association
has_many :exercises
has_many :meals

##exercises テーブル
|Column               |Type         |Options                       |
|time                 |integer      |null: false                   |
|menu_id              |Integer      |null: false                   |
|user                 |references   |null: false, foreign_key: true|

### Association
belongs_to :user

##meals テーブル
|Column               |Type         |Options                       |
|calorie              |integer      |null: false                   |
|explanation          |text         |null: false                   |
|user                 |references   |null: false, foreign_key: true|

### Association
belongs_to :user