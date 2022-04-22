class CreateEquipment < ActiveRecord::Migration[7.0]
  def change
    create_table :equipment do |t|
      t.boolean       :rental, default: false
      t.string        :equipment, null: false
      t.string        :code, null: false
      t.date   :deleted_at
      t.references :rental, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
