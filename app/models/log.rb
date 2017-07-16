class Log < ApplicationRecord
  belongs_to :pupil
end

#  create_table "logs", force: :cascade do |t|
#    t.integer  "pupil_id"
#    t.string   "type"
#    t.string   "content"
#    t.datetime "created_at", null: false
#    t.datetime "updated_at", null: false
#  end