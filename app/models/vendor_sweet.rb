class VendorSweet < ApplicationRecord
  belongs_to :vendor
  belongs_to :sweet

  validates :vendor_id, uniqueness: { scope: :sweet_id, message: "and sweet combination already exists" }
  validates :vendor_id, presence: true
  validates :sweet_id, presence: true
  validates :comment, presence: true

end
