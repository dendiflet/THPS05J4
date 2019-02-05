class Tag < ApplicationRecord
	has_many :join_table_tag_gossips
	has_many :gossips, through: :join_table_tag_gossips
	validates :title, presence: true, uniqueness: true, length: { in: 3..15}
end
