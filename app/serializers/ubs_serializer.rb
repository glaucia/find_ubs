class UbsSerializer < ActiveModel::Serializer
  #attributes :id, :name, :address, :city, :phone, :lat, :long, :size, :adaptation_for_senior, :medical_equipament, :medicine

  attributes :data

	def data		
		{
			current_page: current_page,
			per_page: per_page,
			total_entries: total_entries,			
	  	entries:
		  [{	  	 
		    id:object.id,
		    name: object.name,
		    address: object.address,
		    city: object.city,
		    phone: object.phone,
		  	geocode:
					{
						lat: object.lat,
						long: object.lng
					},
		 		scores:
					{
						size: object.size,
			    	adaptation_for_seniors: object.adaptation_for_seniors,
			    	medical_equipament: object.medical_equipament,
			    	medicine: object.medicine
					}
			}]
		}
end




	
end
