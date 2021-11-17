class CreateBooths < ActiveRecord::Migration[6.0]
  def change
    create_table :booths do |t|
      t.text       :prize_name, null: false
      t.text       :machine_name, null: false
      t.text       :category, null: false
      t.integer    :price, null: false
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
