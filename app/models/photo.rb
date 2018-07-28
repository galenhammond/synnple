class Photo < ApplicationRecord
	has_attached_file :image, styles: {large: "600x600>", thumbnail: "150x150#"}
	validates_attachment :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	has_attached_file :image, url: "/system/:hash.:extension", hash_secret: "synapp"
end
