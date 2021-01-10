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
| user                         | reference    | foreign_key: true |
### Association 
- belongs_to :users
- has_one:information

## information テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ------------|
| breeding_name      | string     | null: false |
| locality           | string     | null: false |
| generation_id      | integer    | null: false |
| food_id            | integer    | null: false |
| memo               | text       |             |
| breed              | reference  | foreign_key: true |
### Association
- belongs_to :breeds
- has_many :more_informations

## more_information テーブル
| Column             | Type       | Options     |
| ------------------ | ---------- | ------------|
| number             | integer    | null;false  |
| size               | integer    |             |
| sex_id             | integer    |             |
| birth_day          | date       |             |
| memos              | text       |             |
| information        | reference  | foreign_key: true |

### Association
- belongs_to :information
- has_many :detail_informations

## detail_information テーブル
| Column               | Type       | Options     |
| -------------------- | ---------- | ------------| 
| exchange_date        | date       | null: false |
| capacity             | string     | null: false |
| weight               | integer    |
| notes                | string     |
| more-information     | reference  | foreign_key: true |
### Association
- belongs_to :more_information

## 画像をアップロードする際はActive Storage Gemを用いる。