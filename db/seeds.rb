# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Spina::Category.create(
  id: 1,
  title: "Giới thiệu",
  urlTitle: "#"
)
Spina::Category.create(
  id: 2,
  title: "Khoá học",
  urlTitle: "#"
)
Spina::Category.create(
  id: 3,
  title: "Tác phẩm",
  urlTitle: "tac-pham"
)
Spina::Category.create(
  id: 4,
  title: "Giảng viên",
  urlTitle: "giang-vien"
)
Spina::SubCategory.create(
  id: 1,
  title: "Về Ngôi Nhà Nhỏ",
  urlTitle: "ve-ngoi-nha-nho",
  category_id: 1
)
Spina::SubCategory.create(
  id: 2,
  title: "Với báo chí",
  urlTitle: "voi-bao-chi",
  category_id: 1
)
Spina::SubCategory.create(
  id: 3,
  title: "Nhận xét",
  urlTitle: "nhan-xet",
  category_id: 1
)
Spina::SubCategory.create(
  id: 4,
  title: "Workshop",
  urlTitle: "workshop",
  category_id: 2
)
Spina::SubCategory.create(
  id: 5,
  title: "Các lớp học",
  urlTitle: "lop-hoc",
  category_id: 2
)
