class CreateDecreeReaders < ActiveRecord::Migration
  def change
    create_table :decree_readers do |t|
      t.belongs_to :unit
      t.belongs_to :decree

      t.timestamps null: false
    end
  end
end
