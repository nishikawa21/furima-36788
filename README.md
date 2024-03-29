# furima-36788

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

## users テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| last_name          | string | null: false |
| first_name         | string | null: false |
| last_name_kana     | string | null: false |
| first_name_kana    | string | null: false |
| nickname           | string | null: false |
| email              | string | null: false |
| encrypted_password | string | null: false |
| birthday           | date   | null: false |

### Association

- has_many :products
- belongs_to :destination
- belongs_to :card


## products テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| name               | string | null: false |
| explanation        | text   | null: false |
| category           | integer| null: false |
| status             | integer| null: false |
| postage            | integer| null: false |
| prefecture         | integer| null: false |
| days               | integer| null: false |
| price              | string | null: false |

### Association

- belongs_to :users
- has_many :images


## destination テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user_id            | integer| null: false |
| post_code          | string | null: false |
| prefecture         | integer| null: false |
| city               | string | null: false |
| address            | string | null: false |
| building_name      | string | null: false |
| tell               | string | null: false |

### Association

- belongs_to :users


## card テーブル

| Column             | Type   | Options     |
| ------------------ | ------ | ----------- |
| user_id            | integer| null: false |
| customer_id        | string | null: false |
| card_id            | string | null: false |

### Association

- belongs_to :users
