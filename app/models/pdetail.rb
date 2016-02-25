class Pdetail < ActiveRecord::Base
		has_attached_file :propertyimage, styles: {  :thumb => "150x150>", :medium => "200x200>",
                      :small => "250x250>"}, default_url: "camp.jpg"
                      validates_attachment_content_type :propertyimage, :content_type => /\Aimage\/.*\Z/


    def self.search(search)
    	if search
    	where(["city ILIKE ? OR location ILIKE ?","%#{search}%", "%#{search}%"])
    	else
    	all 
    	end
    end

end
