class CreateRentals < ActiveRecord::Migration[7.0]
  def change
    create_table :rentals do |t|
      t.date :reserve_schedule_date, comment: '予約予定日'
      t.date :reserve_actual_date, comment: '予定日'
      t.date :return_schedule_date, comment: '返却予定'
      t.date :return_actual_date, comment: '返却日'
      t.date :return_over_date, comment: '延滞時間'
      t.string :status, comment: '予約状態'
      t.string :equipment, comment: '予約機器'
      t.string :code, comment: 'コード'
      t.string :reason, comment: '貸出理由'
      t.boolean :apply, comment: '申請'
      t.boolean :rental_confirmation, comment: '確定'
      t.boolean :return_confirmation, comment: '返却確認'
      t.date   :deleted_at
      t.references :user, foreign_key: true


      t.timestamps
    end
  end
end