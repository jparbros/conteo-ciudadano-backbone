class PollingBooth < ActiveRecord::Base
  attr_accessible :address, :distric, :district_head, :location, :nominal_list, :references, :section, :state_id, :type
end
