class CreateBooths < ActiveRecord::Migration[6.0]
  def change
    create_table :booths do |t|

      t.timestamps
    end
  end
end
