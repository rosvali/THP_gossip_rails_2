class Tag < ApplicationRecord
	validates:title, length: {in:3..14}
	has_many :join_table_gossip_tags
	has_many :gossips, through: :join_table_gossip_tags
end
