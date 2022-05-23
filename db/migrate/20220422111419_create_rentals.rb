class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.date :reserve_schedule_date, comment: '予約予定日'
      t.date :reserve_actual_date, comment: '予定日'
      t.date :return_schedule_date, comment: '返却予定'
      t.date :return_actual_date, comment: '返却日'
      t.date :return_over_date, comment: '延滞時間'
      t.integer :status_id, comment: '予約状態'
      t.integer :equipment_id, comment: '予約機器'
      t.string :code, comment: '型番'
      t.string :rental_user, comment: '貸出人氏名'
      t.string :reason, comment: '貸出理由'
      # t.string :reserving, comment: '貸出申請中'
      t.string :lending, comment: '貸出中'
      t.boolean :permission, comment: '許可or却下'
      t.boolean :confirmation, comment: '確認'
      t.date   :deleted_at
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end