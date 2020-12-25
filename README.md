# README

# テーブル設計
## users テーブル
| Column           | Type       | Options     |
| ---------------- | ------     | ----------- |
| nickname         | string     | null: false |
| password         | string     | null: false |
| email            | string     | null: false unique: true, index:true |
| profile          | text       | null: false |
### Association
- has_many :breeds

## breeds テーブル
| Column                       |  Type        |   Options   |
| ---------------------------- | -----------  | ----------- |
| title                        | string       | null: false |
| category_id                  | integer      | null: false |
| type_name                    | string       | null: false |
| date                         | date         | null: false |
| result                       | string       |             |
| text                         | text         |             |
| user_id                      | reference    | foreign_key: true |
### Association 
- belongs_to :users
- has_one:informations

## informations テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ------------|
| breeding_name      | string     | null: false |
| locality           | string     | null: false |
| generation_id      | integer    | null: false |
| food_id            | integer    | null: false |
| memo               | text       |             |
| breeds_id          | reference  | foreign_key: true |
### Association
- belongs_to :breeds
- has_many :more-informations

## more-informations テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ------------|
| size               | string     |             |
| sex_id             | integer    |             |
| birth_day          | date       |             |
| memo               | text       |             |
| informations_id    | reference  | foreign_key: true |
### Association
- belongs_to :informations
- has_many :detail-informations

## detail-informations テーブル
| Column               | Type       | Options     |
| -------------------- | ---------- | ------------| 
| exchange_date        | date       | null: false |
| capacity             | string     | null: false |
| weight               | string     |             |
| more-informatinos_id | reference  | foreign_key: true |
### Association
- belongs_to :more-informations

## 画像をアップロードする際はActive Storage Gemを用いる。