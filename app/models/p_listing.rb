class PListing < ActiveRecord::Base

	# before_save :do_something

	# def do_something
	# 	self.total_time = self.time_out - self.time_in
	# end

geocoded_by :street
after_validation :geocode

	  has_attached_file :p_image,
                    :styles => {
                      :thumb => "75x75>",
                      :small => "150x150>"
                    }, default_url: "civic2016.jpg"
                      validates_attachment_content_type :p_image, :content_type => /\Aimage\/.*\Z/

        def self.search(search)
    	if search
    	where(["street ILIKE ? OR city_place ILIKE ?","%#{search}%", "%#{search}%"])
    	else
    	all 
    	end
    end



end
