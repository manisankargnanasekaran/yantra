class Contact < ApplicationRecord
	 has_many :tenants
		#accepts_nested_attributes_for :tenant, :allow_destroy => true

end
