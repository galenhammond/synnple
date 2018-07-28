class Picture < ApplicationRecord
	has_attached_file :image, styles: {large: "600x600>", thumbnail: "150x150#"}
	 validates_attachment_content_type :image, content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
end
