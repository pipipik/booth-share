# テーブル設計

## users テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| email      | string | null: false |
| password   | string | null: false |
| name       | string | null: false |
| occupation | text   | null: false |
| position   | text   | null: false |

### Association

- has_many :booths
- has_many :comments

## booths テーブル

| Column       | Type       | Options     |
| ------------ | ---------- | ----------- |
| prize_name   | text       | null: false |
| machine_name | text       | null: false |
| type         | text       | null: false |
| user         | references | null: false |

### Association

- belongs_to :user
- has_many :comments

## comments テーブル

| Column | Type       | Options     |
| ------ | ---------- | ----------- |
| text   | text       | null: false |
| user   | references | null: false |
| booth  | references | null: false |

### Association

- belongs_to :user
- belongs_to :booth
