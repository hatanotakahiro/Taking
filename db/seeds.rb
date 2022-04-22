# 管理者
admin = User.create!(name:  "管理者",
  password:  "adminadmin",
  password_confirmation: "adminadmin",
  admin: true)

# # ここからユーザー
User.create!(name:  "テストユーザー2",
  password:  "bbb222",
  password_confirmation: "bbb222")

User.create!(name:  "テストユーザー2",
  password:  "bbb222",
  password_confirmation: "bbb222")

User.create!(name:  "テストユーザー3",
  password:  "ccc333",
  password_confirmation: "ccc333")