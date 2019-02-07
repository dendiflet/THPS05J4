class Gossip < ApplicationRecord
	belongs_to :user, dependent: :destroy

	has_many :join_table_tag_gossips
	has_many :tags, through: :join_table_tag_gossips
	has_many :likes


  validates :content, presence: true
  validates :title, presence: true, length: { in: 3..14}

end
