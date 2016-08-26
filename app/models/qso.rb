class Qso < ActiveRecord::Base
  belongs_to :user
  #validates :date, presence: true
  #validates :body, presence: true
end
