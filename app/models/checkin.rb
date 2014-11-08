class Checkin < ActiveRecord::Base
  belongs_to :location
  belongs_to :feel
end
