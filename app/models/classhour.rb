class Classhour < ApplicationRecord
  belongs_to :users, optional: true
  belongs_to :pupils, optional: true
end
