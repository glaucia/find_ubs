require 'csv'

namespace :csv do
  desc "TODO"
  task import: :environment do
  	value = {}		
		value["Desempenho acima da média"] = 1
		value["Desempenho mediano ou  um pouco abaixo da média"] = 2
		value["Desempenho muito acima da média "] = 3

 		CSV.foreach('tmp/ubs.csv', col_sep: ',').with_index do |row, i|
     unless (i == 0)

       Ubs.create!(name: row[4], address: row[5], city: row[7], phone:row[8], lat: row[0], lng: row[1], size:value[row[9]], 
       	adaptation_for_seniors:value[row[10]],medical_equipament:value[row[11]], medicine:value[row[12]])
     end
    end

  end

end

