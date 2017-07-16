class User < ApplicationRecord
  has_many :pupils
end

#  create_table "users", force: :cascade do |t|
#    t.string   "name"
#    t.string   "email"
#    t.string   "subject"
#    t.datetime "created_at", null: false
#    t.datetime "updated_at", null: false
#  end