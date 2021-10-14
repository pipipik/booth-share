class CreateBooths < ActiveRecord::Migration[6.0]
  def change
    create_table :booths do |t|
      t.text :prize_name
      t.text :machine_name
      t.text :category
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
