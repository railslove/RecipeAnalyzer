# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130607151641) do

  create_table "display_names", :force => true do |t|
    t.integer  "locale_id"
    t.string   "text"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "display_names", ["locale_id"], :name => "index_display_names_on_locale_id"

  create_table "ingredient_names", :force => true do |t|
    t.integer  "locale_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "expression"
  end

  add_index "ingredient_names", ["locale_id"], :name => "index_ingredient_names_on_locale_id"

  create_table "ingredients", :force => true do |t|
    t.string   "name_EN"
    t.string   "source"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "tag_id"
    t.integer  "tag"
  end

  add_index "ingredients", ["tag"], :name => "index_ingredients_on_tag"

  create_table "ingredients_names", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "locales", :force => true do |t|
    t.string   "language"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "recipes", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "recipes", ["user_id"], :name => "index_recipes_on_user_id"

  create_table "tags", :force => true do |t|
    t.integer  "display_name_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "tags", ["display_name_id"], :name => "index_tags_on_display_name_id"

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
