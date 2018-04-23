class Tenant < ApplicationRecord
  belongs_to :address
  belongs_to :contact
  
end
