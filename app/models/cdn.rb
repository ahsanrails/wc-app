class Cdn < ActiveRecord::Base
	has_attached_file :avatar, styles: {  :thumb => "150x150>",
                      :small => "150x150>"}, default_url: "property.jpg"
                      validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

end

