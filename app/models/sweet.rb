class Sweet < ApplicationRecord
  has_many :vendor_sweets
  has_many :vendors, through: :vendor_sweets

  def sweet_comment(id)
    comment = vendor_sweets.find_by(vendor_id: id, sweet_id: self.id)&.comment
  end
end
