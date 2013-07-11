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

ActiveRecord::Schema.define(:version => 20130711101447) do

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
  end

  create_table "ingredients_names", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "ingredients_tags", :force => true do |t|
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
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.text     "ingredient_list"
    t.integer  "prep_time"
    t.integer  "number_of_person"
    t.string   "image_url"
  end

  add_index "recipes", ["user_id"], :name => "index_recipes_on_user_id"

  create_table "recipes_tag", :id => false, :force => true do |t|
    t.integer "recipe_id"
    t.integer "tag_id"
  end

  add_index "recipes_tag", ["recipe_id", "tag_id"], :name => "index_recipes_tag_on_recipe_id_and_tag_id"

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
