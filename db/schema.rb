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

ActiveRecord::Schema.define(:version => 20140104103432) do

  create_table "categories", :force => true do |t|
    t.string   "category"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.boolean  "custom",     :default => false
  end

  create_table "categories_sentences", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "sentence_id"
  end

  add_index "categories_sentences", ["category_id"], :name => "index_categories_sentences_on_category_id"
  add_index "categories_sentences", ["sentence_id"], :name => "index_categories_sentences_on_sentence_id"

  create_table "categories_words", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "word_id"
  end

  add_index "categories_words", ["category_id"], :name => "index_categories_words_on_category_id"
  add_index "categories_words", ["word_id"], :name => "index_categories_words_on_word_id"

  create_table "languages", :force => true do |t|
    t.string   "language"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sentences", :force => true do |t|
    t.text     "sentence"
    t.integer  "language_id"
    t.integer  "master_sentence_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "words", :force => true do |t|
    t.string   "word"
    t.integer  "language_id"
    t.integer  "master_word_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

end