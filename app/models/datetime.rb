class Datetime < ActiveRecord::Base
  validates :name, :datetime, {presence: true}
  
  belongs_to :user
end