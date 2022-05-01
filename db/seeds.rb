# 管理者
admin = User.create!(name:  "管理者",
  password:  "adminadmin",
  password_confirmation: "adminadmin",
  admin: true)

# # ここからユーザー
User.create!(name:  "テストユーザー1",
  password:  "aaa111",
  password_confirmation: "aaa111")

User.create!(name:  "テストユーザー2",
  password:  "bbb222",
  password_confirmation: "bbb222")

User.create!(name:  "テストユーザー3",
  password:  "ccc333",
  password_confirmation: "ccc333")

Rental.create!(equipment_id:  "1",
  reason:  "貸出理由テスト1",
  code:  "test_code1",
  reserve_schedule_date:  "2022-03-13",
  return_schedule_date:  "2022-04-30",
  status_id:  "1",
  rental_user:  "テストユーザー1",
  user_id: "1")

Rental.create!(equipment_id:  "2",
  reason:  "貸出理由テスト2",
  code: "test_code2",
  reserve_schedule_date: "2022-03-01",
  return_schedule_date: "2022-05-31",
  status_id: "2",
  rental_user: "テストユーザー2",
  user_id: "2")

Rental.create!(equipment_id:  "3",
  reason:  "貸出理由テスト3",
  code: "test_code3",
  reserve_schedule_date: "2022-03-01",
  return_schedule_date: "2022-03-31",
  status_id: "3",
  rental_user: "テストユーザー3",
  user_id: "3")