# 管理者
admin = User.create!(name:  "管理者",
  email: "admin@admin",
  password:  "adminadmin",
  password_confirmation: "adminadmin",
  admin: true)

# # ここからユーザー
User.create!(name:  "テストユーザー1",
  email: "aaa@aaa",
  password:  "aaa111",
  password_confirmation: "aaa111")

User.create!(name:  "テストユーザー2",
  email: "bbb@bbb",
  password:  "bbb222",
  password_confirmation: "bbb222")

User.create!(name:  "テストユーザー3",
  email: "ccc@ccc",
  password:  "ccc333",
  password_confirmation: "ccc333")

User.create!(name:  "アンクス太郎",
  email: "ddd@ddd",
  password:  "ddd444",
  password_confirmation: "ddd444")

User.create!(name:  "畑野貴洋",
  email: "t_hatano@ankusu.com",
  password:  "3a07katouken",
  password_confirmation: "3a07katouken")

Rental.create!(equipment_id:  "2",
  reason:  "貸出理由テスト1",
  code: "test_code1",
  reserve_schedule_date: "2021-07-01",
  reserve_actual_date: "2021-07-01",
  return_schedule_date: "2021-08-31",
  return_actual_date: "2022-08-31",
  status_id: "4",
  rental_user: "テストユーザー1",
  lending: "返却済み",
  user_id: "2")

Rental.create!(equipment_id:  "1",
  reason:  "貸出理由テスト2",
  code: "test_code2",
  reserve_schedule_date: "2021-08-01",
  reserve_actual_date: "2021-08-01",
  return_schedule_date: "2021-09-30",
  return_actual_date: "2022-09-30",
  status_id: "4",
  rental_user: "テストユーザー2",
  lending: "返却済み",
  user_id: "3")

Rental.create!(equipment_id:  "4",
  reason:  "貸出理由テスト3",
  code: "test_code3",
  reserve_schedule_date: "2021-09-01",
  reserve_actual_date: "2021-09-01",
  return_schedule_date: "2021-10-31",
  return_actual_date: "2022-10-31",
  status_id: "4",
  rental_user: "畑野貴洋",
  lending: "返却済み",
  user_id: "6")

Rental.create!(equipment_id:  "2",
  reason:  "貸出理由テスト4",
  code: "test_code4",
  reserve_schedule_date: "2021-10-01",
  reserve_actual_date: "2021-10-01",
  return_schedule_date: "2021-11-30",
  return_actual_date: "2022-11-30",
  status_id: "4",
  rental_user: "アンクス太郎",
  lending: "返却済み",
  user_id: "5")

Rental.create!(equipment_id:  "1",
  reason:  "貸出理由テスト5",
  code: "test_code5",
  reserve_schedule_date: "2021-11-01",
  reserve_actual_date: "2021-11-01",
  return_schedule_date: "2021-12-31",
  return_actual_date: "2022-01-04",
  status_id: "4",
  rental_user: "テストユーザー1",
  lending: "返却済み",
  user_id: "2")

Rental.create!(equipment_id:  "3",
  reason:  "貸出理由テスト6",
  code: "test_code6",
  reserve_schedule_date: "2021-12-01",
  reserve_actual_date: "2021-12-01",
  return_schedule_date: "2022-01-15",
  return_actual_date: "2022-01-15",
  status_id: "4",
  rental_user: "テストユーザー2",
  lending: "返却済み",
  user_id: "3")

Rental.create!(equipment_id:  "1",
  reason:  "貸出理由テスト7",
  code: "test_code7",
  reserve_schedule_date: "2022-01-01",
  reserve_actual_date: "2022-01-01",
  return_schedule_date: "2022-02-01",
  return_actual_date: "2022-01-29",
  status_id: "4",
  rental_user: "テストユーザー2",
  lending: "返却済み",
  user_id: "3")

Rental.create!(equipment_id:  "2",
  reason:  "貸出理由テスト8",
  code: "test_code8",
  reserve_schedule_date: "2022-02-01",
  reserve_actual_date: "2022-01-31",
  return_schedule_date: "2022-02-25",
  status_id: "7",
  rental_user: "畑野貴洋",
  lending: "貸出中",
  user_id: "6")

Rental.create!(equipment_id:  "1",
  reason:  "貸出理由テスト9",
  code: "test_code9",
  reserve_schedule_date: "2022-02-01",
  return_schedule_date: "2022-02-28",
  status_id: "6",
  rental_user: "アンクス太郎",
  lending: "取消済み",
  user_id: "5")

Rental.create!(equipment_id:  "2",
  reason:  "貸出理由テスト10",
  code: "test_code10",
  reserve_schedule_date: "2025-02-01",
  return_schedule_date: "2025-02-28",
  status_id: "5",
  rental_user: "テストユーザー1",
  lending: "貸出中",
  user_id: "2")

Rental.create!(equipment_id:  "4",
  reason:  "貸出理由テスト11",
  code: "test_code11",
  reserve_schedule_date: "2022-02-01",
  reserve_actual_date: "2022-02-01",
  return_schedule_date: "2022-02-28",
  return_actual_date: "2022-03-01",
  status_id: "4",
  rental_user: "テストユーザー3",
  lending: "返却済み",
  user_id: "4")

Rental.create!(equipment_id:  "2",
  reason:  "貸出理由テスト12",
  code: "test_code12",
  reserve_schedule_date: "2022-03-01",
  reserve_actual_date: "2022-03-01",
  return_schedule_date: "2022-04-30",
  status_id: "3",
  rental_user: "テストユーザー3",
  lending: "貸出中",
  user_id: "4")

Rental.create!(equipment_id:  "3",
  reason:  "貸出理由テスト13",
  code: "test_code13",
  reserve_schedule_date: "2022-03-01",
  reserve_actual_date: "2022-03-01",
  return_schedule_date: "2022-05-31",
  status_id: "2",
  rental_user: "テストユーザー2",
  lending: "貸出中",
  user_id: "3")

Rental.create!(equipment_id:  "1",
  reason:  "貸出理由テスト14",
  code:  "test_code14",
  reserve_schedule_date:  "2022-04-01",
  return_schedule_date:  "2022-04-30",
  status_id:  "8",
  rental_user:  "アンクス太郎",
  lending: "貸出却下",
  user_id: "5")

Rental.create!(equipment_id:  "1",
  reason:  "貸出理由テスト15",
  code:  "test_code15",
  reserve_schedule_date:  "2022-05-01",
  return_schedule_date:  "2022-05-30",
  status_id:  "1",
  rental_user:  "テストユーザー1",
  lending: "貸出中",
  user_id: "2")