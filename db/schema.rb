# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180228150612) do

  create_table "spina_accounts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "address"
    t.string "postal_code"
    t.string "city"
    t.string "phone"
    t.string "email"
    t.text "preferences"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kvk_identifier"
    t.string "vat_identifier"
    t.boolean "robots_allowed", default: false
  end

  create_table "spina_articles", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "cover"
    t.text "description"
    t.text "content"
    t.datetime "date"
    t.integer "favorite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "sub_category_id"
    t.integer "photo_id"
    t.index ["sub_category_id"], name: "index_spina_articles_on_sub_category_id"
  end

  create_table "spina_attachment_collections", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_attachment_collections_attachments", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "attachment_collection_id"
    t.integer "attachment_id"
  end

  create_table "spina_attachments", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_blogposts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.text "description"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "photo_id"
  end

  create_table "spina_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "urlTitle"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "level"
    t.string "code"
    t.string "name"
    t.float "duration_min", limit: 24
    t.float "duration_max", limit: 24
    t.integer "learning_days"
    t.float "learning_hours", limit: 24
    t.float "course_fee", limit: 24
    t.string "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_layout_parts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "name"
    t.integer "layout_partable_id"
    t.string "layout_partable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer "account_id"
  end

  create_table "spina_line_translations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "spina_line_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "content"
    t.index ["locale"], name: "index_spina_line_translations_on_locale"
    t.index ["spina_line_id"], name: "index_spina_line_translations_on_spina_line_id"
  end

  create_table "spina_lines", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_navigation_items", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "page_id", null: false
    t.integer "navigation_id", null: false
    t.integer "position", default: 0, null: false
    t.string "ancestry"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["page_id", "navigation_id"], name: "index_spina_navigation_items_on_page_id_and_navigation_id", unique: true
  end

  create_table "spina_navigations", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false
    t.string "label", null: false
    t.boolean "auto_add_pages", default: false, null: false
    t.integer "position", default: 0, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["name"], name: "index_spina_navigations_on_name", unique: true
  end

  create_table "spina_options", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_page_parts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "page_id"
    t.integer "page_partable_id"
    t.string "page_partable_type"
  end

  create_table "spina_page_translations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "spina_page_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
    t.string "menu_title"
    t.string "description"
    t.string "seo_title"
    t.string "materialized_path"
    t.index ["locale"], name: "index_spina_page_translations_on_locale"
    t.index ["spina_page_id"], name: "index_spina_page_translations_on_spina_page_id"
  end

  create_table "spina_pages", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.boolean "show_in_menu", default: true
    t.string "slug"
    t.boolean "deletable", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.boolean "skip_to_first_child", default: false
    t.string "view_template"
    t.string "layout_template"
    t.boolean "draft", default: false
    t.string "link_url"
    t.string "ancestry"
    t.integer "position"
    t.boolean "active", default: true
  end

  create_table "spina_photo_collections", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_photo_collections_photos", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "photo_collection_id"
    t.integer "photo_id"
    t.integer "position"
  end

  create_table "spina_photos", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "student_id"
    t.bigint "teacher_id"
    t.string "description"
    t.string "title"
    t.integer "age"
    t.boolean "favorite"
    t.index ["student_id"], name: "index_spina_photos_on_student_id"
    t.index ["teacher_id"], name: "index_spina_photos_on_teacher_id"
  end

  create_table "spina_rewrite_rules", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "old_path"
    t.string "new_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_structure_items", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "structure_id"
    t.integer "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["structure_id"], name: "index_spina_structure_items_on_structure_id"
  end

  create_table "spina_structure_parts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "structure_item_id"
    t.integer "structure_partable_id"
    t.string "structure_partable_type"
    t.string "name"
    t.string "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["structure_item_id"], name: "index_spina_structure_parts_on_structure_item_id"
    t.index ["structure_partable_id"], name: "index_spina_structure_parts_on_structure_partable_id"
  end

  create_table "spina_structures", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "start_date"
    t.datetime "birthday"
    t.string "phone"
    t.text "description"
    t.string "home"
    t.string "parent"
    t.datetime "end_date"
    t.string "avatar"
    t.boolean "favorite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "course_id"
    t.index ["course_id"], name: "index_spina_students_on_course_id"
  end

  create_table "spina_sub_categories", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title"
    t.string "urlTitle"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_spina_sub_categories_on_category_id"
  end

  create_table "spina_teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.text "info"
    t.text "specialize"
    t.text "teaching_technic"
    t.string "avatar"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "birthday"
    t.string "phone"
    t.string "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spina_text_translations", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "spina_text_id", null: false
    t.string "locale", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "content"
    t.index ["locale"], name: "index_spina_text_translations_on_locale"
    t.index ["spina_text_id"], name: "index_spina_text_translations_on_spina_text_id"
  end

  create_table "spina_texts", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "spina_users", id: :integer, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "last_logged_in"
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
  end

end
