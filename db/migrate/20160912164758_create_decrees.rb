class CreateDecrees < ActiveRecord::Migration
  def change
    create_table :decrees do |t|
      t.string :title
      t.integer :autor_id
      t.timestamps null: false
    end
  end
end
