class User < ApplicationRecord
  authenticates_with_sorcery!

  has_many :authentications, dependent: :destroy
  accepts_nested_attributes_for :authentications

  has_many :drive_records, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :bookmark_destinations, through: :bookmarks, source: :destination

  validates :password, length: { minimum: 6 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :email, presence: true, uniqueness: true, length: { maximum: 255 }
  validates :name, presence: true, length: { maximum: 50 }
  validates :reset_password_token, presence: true, uniqueness: true, allow_nil: true

  def unbookmark(destination)
    bookmark_destinations.destroy(destination)
  end

  def bookmark?(place)
    destination = Destination.find_by(name: place['displayName']['text'], address: place['formattedAddress'])
    bookmark_destinations.include?(destination)
  end
end
