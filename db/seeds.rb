# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create list of categories
categories = [
	# "Art & Paintings",
	"Automobiles & Supplies",
	"Babies & Kids",
	# "Books",
	"Cameras & Photography",
	"Collectibles",
	"Computers & Laptops",
	"Foods & Restaurant",
	"Footware",
	"Games & Consoles",
	"Health & Beauty",
	"Home Appliances",
	"Jewelry & Watches",
	"Men's Wear",
	"Women's Wear",
	"Mobiles & Tablets",
	"Pets & Supplies",
	"Real Estate",
	"Services",
	"Sports Equipment",
	"Toys & Hobbies",
	"Travel & Tours",
	"Others"
]

categories.each do |category|
  Category.create!(:name => category)
end

# Create list of Status
statuses = [ "Available", "Sold" ]

statuses.each do |status|
  Status.create!(:name => status)
end

# Create list of Conditions
conditions = [ "Brand new", "Used" ]

conditions.each do |condition|
  Condition.create!(:name => condition)
end

# Create list of Ad Type
ad_types = [ "Sell", "Buy" ]

ad_types.each do |ad_type|
  AdType.create!(:name => ad_type)
end

regions = ["NCR", "CAR", "Region 1 - Ilocos Region", "Region 2 - Cagayan Valley", "Region 3 - Central Luzon", "Region 4A - CALABARZON",
			"Region 4B - MIMAROPA", "Region 5 - Bicol Region", "Region 6 - Western Visayas", "Region 7 - Central Visayas",
			"Region 8 - Eastern Visayas", "Region 9 - Zamboanga Peninsula", "Region 10 - Northern Mindanao", "Region 11 - Davao Region",
			"Region 12 - SOCCSKSARGEN",  "Region 13 - CARAGA",  "ARMM"
 			]

regions.each do |region|
	Region.create(name: region)
end

provinces = [["Abra", 2], ["Agusan del Norte", 11], ["Agusan del Sur", 11], ["Aklan", 9], ["Albay", 8], ["Antique", 9], ["Apayao", 2], ["Aurora", 5], ["Basilan", 17], ["Bataan", 5], ["Batanes", 4], ["Batangas", 6], ["Benguet", 2], ["Biliran", 11], ["Bohol", 10], ["Bukidnon", 13], ["Bulacan", 5], ["Cagayan", 4], ["Camarines Norte", 8], ["Camarines Sur", 8], ["Camiguin", 13], ["Capiz", 9], ["Catanduanes", 8], ["Cavite", 6], ["Cebu", 10], ["Compostela Valley", 14], ["Cotabato", 15], ["Davao del Norte", 14], ["Davao del Sur", 14], ["Davao Oriental", 14], ["Dinagat Islands", 16], ["Eastern Samar", 11], ["Guimaras", 9], ["Ifugao", 2], ["Ilocos Norte", 3], ["Ilocos Sur", 3], ["Ilo-Ilo", 9], ["Isabela", 4], ["Kalinga", 2], ["La Union", 3], ["Laguna", 6], ["Lanao del Norte", 13], ["Lanao del Sur", 17], ["Leyte", 11], ["Maguindanao", 17], ["Marinduque", 7], ["Masbate", 8], ["Metro Manila", 1], ["Misamis Occidental", 13], ["Misamis Oriental", 13], ["Mountain Province", 2], ["Negros Occidental", 9], ["Negros Oriental", 10], ["Northern Samar", 11], ["Nueva Ecija", 5], ["Nueva Vizcaya", 4], ["Occidental Mindoro", 7], ["Oriental Mindoro", 7], ["Palawan", 7], ["Pampanga", 5], ["Pangasinan", 3], ["Quezon", 6], ["Quirino", 4], ["Rizal", 6], ["Romblon", 7], ["Samar", 11], ["Sarangani", 15], ["Shariff Kabunsuan", 17], ["Siquijor", 10], ["Sorsogon", 8], ["South Cotabato", 15], ["Southern Leyte", 11], ["Sultan Kudarat", 15], ["Sulu", 17], ["Surigao del Norte", 16], ["Surigao del Sur", 16], ["Tarlac", 5], ["Tawi-Tawi", 17], ["Zambales", 5], ["Zamboanga del Norte", 12], ["Zamboanga del Sur", 12], ["Zamboanga Sibugay", 12]]

provinces.each do |province, region_id|
	Province.create(name: province, region_id: region_id)
end

# Province.find_by_name('Abra')
Province.all.each do |province|
	if province.name.eql?('Abra')
		municipalities = [ "Bangued", "Boliney", "Bucay", "Bucloc", "Daguioman", "Danglas", "Dolores", "La Paz", "Lacub", "Lagangilang", "Lagayan", "Langiden", "Licuan-Baay", "Luba", "Malibcong", "Manabo", "Peñarrubia", "Pidigan", "Pilar", "Sallapadan", "San Isidro", "San Juan", "San Quintin", "Tayum", "Tineg", "Tubo", "Villaviciosa" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Agusan del Norte')
		municipalities = [ "Butuan City", "Cabadbaran City", "Buenavista", "Carmen", "Jabonga", "Kitcharao", "Las Nieves", "Magallanes", "Nasipit", "Remedios T. Romualdez", "Santiago", "Tubay" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Agusan del Sur')
		municipalities = [ "Bayugan", "Bunawan", "Esperanza", "La Paz", "Loreto", "Prosperidad", "Rosario", "San Francisco", "San Luis", "Santa Josefa", "Sibagat", "Talacogon", "Trento", "Veruel" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Aklan')
		municipalities = [ "Altavas", "Balete", "Banga", "Batan", "Buruanga", "Ibajay", "Kalibo", "Lezo", "Libacao", "Madalag", "Makato", "Malay", "Malinao", "Nabas", "New Washington", "Numancia", "Tangala" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Albay')
		municipalities = [ "Ligao City", "Tabaco City", "Bacacay", "Camalig", "Daraga", "Guinobatan", "Jovellar", "Libon", "Malilipot", "Malinao", "Manito", "Oas", "Pio Duran", "Polangui", "Rapu-Rapu", "Santo Domingo", "Tiwi" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Antique')
		municipalities = [ "Anini-y", "Barbaza", "Belison", "Bugasong", "Caluya", "Culasi", "Hamtic", "Laua-an", "Libertad", "Pandan", "Patnongon", "San Jose", "San Remigio", "Sebaste", "Sibalom", "Tibiao", "Tobias Fornier", "Valderram" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Apayao')
		municipalities = [ "Calanasan", "Conner", "Flora", "Kabugao", "Luna", "Pudtol", "Santa Marcela" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Aurora')
		municipalities = [ "Baler", "Casiguran", "Dilasag", "Dinalungan", "Dingalan", "Dipaculao", "Maria Aurora", "San Luis" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Basilan')
		municipalities = [ "Isabela City", "Lamitan City", "Akbar", "Al-Barka", "Hadji Mohammad Aju", "Lantawan", "Maluso", "Sumisip", "Tipo-Tipo", "Tuburan", "Ungkaya Puka" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Bataan')
		municipalities = [ "Balanga City", "Abucay", "Bagac", "Dinalupihan", "Hermosa", "Limay", "Mariveles", "Morong", "Orani", "Orion", "Pilar", "Samal" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Batanes')
		municipalities = [ "Basco", "Itbayat", "Ivana", "Mahatao", "Sabtang", "Uyugan" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Batangas')
		municipalities = [ "Batangas City", "Lipa City", "Tanauan City", "Agoncillo", "Alitagtag", "Balayan", "Balete", "Bauan", "Calaca", "Calatagan", "Cuenca", "Ibaan", "Laurel", "Lemery", "Lian", "Lobo", "Mabini", "Malvar", "Mataas na Kahoy", "Nasugbu", "Padre Garcia", "Rosario", "San Jose", "San Juan", "San Luis", "San Nicolas", "San Pascual", "Santa Teresita", "Santo Tomas", "Taal", "Talisay", "Taysan", "Tingloy", "Tuy" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Benguet')
		municipalities = [ "Baguio City", "Atok", "Bakun", "Bokod", "Buguias", "Itogon", "Kabayan", "Kapangan", "Kibungan", "La Trinidad", "Mankayan", "Sablan", "Tuba", "Tublay" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Biliran')
		municipalities = [ "Almeria", "Atok", "Biliran", "Cabucgayan", "Caibiran", "Culaba", "Kawayan", "Maripipi", "Naval" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Bohol')
		municipalities = [ "Tagbilaran City", "Alburquerque ", "Alicia ", "Anda ", "Antequera ", "Baclayon ", "Balilihan ", "Batuan ", "Bien Unido ", "Bilar ", "Buenavista ", "Calape ", "Candijay ", "Carmen ", "Catigbian ", "Clarin ", "Corella ", "Cortes ", "Dagohoy ", "Danao ", "Dauis ", "Dimiao ", "Duero ", "Garcia Hernandez ", "Guindulman ", "Inabanga ", "Jagna ", "Jetafe ", "Lila ", "Loay ", "Loboc ", "Loon ", "Mabini ", "Maribojoc ", "Panglao ", "Pilar ", "Pres. Carlos P. Garcia ", "Sagbayan ", "San Isidro ", "San Miguel ", "Sevilla ", "Sierra Bullones ", "Sikatuna ", "Talibon ", "Trinidad ", "Tubigon ", "Ubay ", "Valencia" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Bukidnon')
		municipalities = [ "Malaybalay City", "Valencia City", "Baungon", "Cabanglasan", "Damulog", "Dangcagan", "Don Carlos", "Impasug-Ong", "Kadingilan", "Kalilangan", "Kibawe", "Kitaotao", "Lantapan", "Libona", "Malitbog", "Manolo Fortich", "Maramag", "Pangantucan", "Quezon", "San Fernando", "Sumilao", "Talakag" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Bulacan')
		municipalities = [ "Malolos City", "Meycauayan City", "San Jose del Monte City", "Angat", "Balagtas", "Baliuag", "Bocaue", "Bulacan", "Bustos", "Calumpit", "Doña Remedios Trinidad", "Guiguinto", "Hagonoy", "Marilao", "Norzagaray", "Obando", "Pandi", "Paombong", "Plaridel", "Pulilan", "San Ildefonso", "San Miguel", "San Rafael", "Santa Maria" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Cagayan')
		municipalities = [ "Tuguegarao City", "Abulug", "Alcala", "Allacapan", "Amulung", "Aparri", "Baggao", "Ballesteros", "Buguey", "Calayan", "Camalaniugan", "Claveria", "Enrile", "Gattaran", "Gonzaga", "Iguig", "Lal-Lo", "Lasam", "Pamplona", "Peñablanca", "Piat", "Rizal", "Sanchez-Mira", "Santa Ana", "Santa Praxedes", "Santa Teresita", "Santo Niño", "Solana", "Tuao" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Camarines Norte')
		municipalities = [ "Basud", "Capalonga", "Daet", "Jose Panganiban", "Labo", "Mercedes", "Paracale", "San Lorenzo Ruiz", "San Vicente", "Santa Elena", "Talisay", "Vinzons" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Camarines Sur')
		municipalities = [ "Iriga City", "Naga City", "Baao", "Balatan", "Bato", "Bombon", "Buhi", "Bula", "Cabusao", "Calabanga", "Camaligan", "Canaman", "Caramoan", "Del Gallego", "Gainza", "Garchitorena", "Goa", "Lagonoy", "Libmanan", "Lupi", "Magarao", "Milaor", "Minalabac", "Nabua", "Ocampo", "Pamplona", "Pasacao", "Pili", "Presentacion", "Ragay", "Sagñay", "San Fernando", "San Jose", "Sipocot", "Siruma", "Tigaon", "Tinambac" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Camiguin')
		municipalities = [ "Catarman", "Guinsiliban", "Mahinog", "Mambajao", "Sagay" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Capiz')
		municipalities = [ "Roxas City", "Cuartero", "Dao", "Dumalag", "Dumarao", "Ivisan", "Jamindan", "Ma-ayon", "Mambusao", "Panay", "Panitan", "Pilar", "Pontevedra", "President Roxas", "Sapi-an", "Sigma", "Tapaz" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Catanduanes')
		municipalities = [ "Bagamanoc", "Baras", "Bato", "Caramoran", "Gigmoto", "Pandan", "Panganiban", "San Andres", "San Miguel", "Viga", "Virac" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Cavite')
		municipalities = [ "Cavite City", "Tagaytay City", "Trece Martires City", "Alfonso", "Amadeo", "Bacoor", "Carmona", "Dasmariñas", "Gen. Mariano Alvarez", "Gen. Emilio Aguinaldo", "Gen. Trias", "Imus", "Indang", "Kawit", "Magallanes", "Maragondon", "Mendez", "Naic", "Noveleta", "Rosario", "Silang", "Tanza", "Ternate" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Cebu')
		municipalities = [ "Argao City", "Bogo City", "Carcar City", "Cebu City", "Danao City", "Lapu-Lapu City", "Mandaue City", "Talisay City", "Toledo City", "Naga City", "Alcantara", "Alcoy", "Alegria", "Aloguinsan", "Argao", "Asturias", "Badian", "Balamban", "Bantayan", "Barili", "Boljoon", "Borbon", "Carmen", "Catmon", "Compostela", "Consolacion", "Cordoba", "Daanbantayan", "Dalaguete", "Dumanjug", "Ginatilan", "Liloan", "Madridejos", "Malabuyoc", "Medellin", "Minglanilla", "Moalboal", "Oslob", "Pilar", "Pinamungahan", "Poro", "Ronda", "Samboan", "San Fernando", "San Francisco", "San Remigio", "Santa Fe", "Santander", "Sibonga", "Sogod", "Tabogon", "Tabuelan", "Tuburan", "Tudela" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Compostela Valley')
		municipalities = [ "Compostela", "Laak", "Mabini", "Maco", "Maragusan", "Mawab", "Monkayo", "Montevista", "Nabunturan", "New Bataan", "Pantukan" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Cotabato')
		municipalities = [ "Kidapawan City", "Alamada", "Aleosan", "Antipas", "Arakan", "Banisilan", "Carmen", "Kabacan", "Libungan", "M'Lang", "Magpet", "Makilala", "Matalam", "Midsayap", "Pigkawayan", "Pikit", "President Roxas", "Tulunan" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Davao del Norte')
		municipalities = [ "Island Garden City of Samal", "Panabo City", "Tagum City", "Asuncion", "Braulio E. Dujali", "Carmen", "Kapalong", "New Corella", "San Isidro", "Santo Tomas", "Talaingod" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Davao del Sur')
		municipalities = [ "Davao City", "Digos City", "Bansalan", "Don Marcelino", "Hagonoy", "Jose Abad Santos", "Kiblawan", "Magsaysay", "Malalag", "Malita", "Matanao", "Padada", "Santa Cruz", "Santa Maria", "Sarangani", "Sulop" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Davao Oriental')
		municipalities = [ "Mati City", "Baganga", "Banaybanay", "Boston", "Caraga", "Cateel", "Governor Generoso", "Lupon", "Manay", "San Isidro", "Tarragona" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Dinagat Islands')
		municipalities = [ "Basilisia (Rizal)", "Cagdianao", "Dinagat", "Libjo (Albor) ", "Loreto", "San Jose", "Tubajon" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Eastern Samar')
		municipalities = [ "Borongan City", "Arteche", "Balangiga", "Balangkayan", "Can-avid", "Dolores", "General MacArthur", "Giporlos", "Guiuan", "Hernani", "Jipapad", "Lawaan", "Llorente", "Maslog", "Maydolong", "Mercedes", "Oras", "Quinapondan", "Salcedo", "San Julian", "San Policarpo", "Sulat", "Taft" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Guimaras')
		municipalities = [ "Buenavista", "Jordan", "Nueva Valencia", "San Lorenzo", "Sibunag" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Ifugao')
		municipalities = [ "Aguinaldo", "Alfonso Lista", "Asipulo", "Banaue", "Hingyon", "Hungduan", "Kiangan", "Lagawe", "Lamut", "Mayoyao", "Tinoc" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Ilocos Norte')
		municipalities = [ "Laoag City", "Batac City", "Adams", "Bacarra", "Badoc", "Bangui", "Banna", "Burgos", "Carasi", "Currimao", "Dingras", "Dumalneg", "Marcos", "Nueva Era", "Pagudpud", "Paoay", "Pasuquin", "Piddig", "Pinili", "San Nicolas", "Sarrat", "Solsona", "Vintar" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Ilocos Sur')
		municipalities = [ "Candon City", "Vigan City", "Alilem", "Banayoyo", "Bantay", "Burgos", "Cabugao", "Caoayan", "Cervantes", "Galimuyod", "Gregorio Del Pilar", "Lidlidda", "Magsingal", "Nagbukel", "Narvacan", "Quirino", "Salcedo", "San Emilio", "San Esteban", "San Ildefonso", "San Juan", "San Vicente", "Santa", "Santa Catalina", "Santa Cruz", "Santa Lucia", "Santa Maria", "Santiago", "Santo Domingo", "Sigay", "Sinait", "Sugpon", "Suyo", "Tagudin" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Ilo-Ilo')
		municipalities = [ "Passi City", "Iloilo City", "Ajuy", "Alimodian", "Anilao", "Badiangan", "Balasan", "Banate", "Barotac Nuevo", "Barotac Viejo", "Batad", "Bingawan", "Cabatuan", "Calinog", "Carles", "Concepcion", "Dingle", "Dueñas", "Dumangas", "Estancia", "Guimbal", "Igbaras", "Janiuay", "Lambunao", "Leganes", "Lemery", "Leon", "Maasin", "Miagao", "Mina", "New Lucena", "Oton", "Pavia", "Pototan", "San Dionisio", "San Enrique", "San Joaquin", "San Miguel", "San Rafael", "Santa Barbara", "Sara", "Tigbauan", "Tubungan", "Zarraga" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Isabela')
		municipalities = [ "Cauayan City", "Santiago City", "Alicia", "Angadanan", "Aurora", "Benito Soliven", "Burgos", "Cabagan", "Cabatuan", "Cordon", "Delfin Albano", "Dinapigue", "Divilacan", "Echague", "Gamu", "Ilagan", "Jones", "Luna", "Maconacon", "Mallig", "Naguilian", "Palanan", "Quezon", "Quirino", "Ramon", "Reina Mercedes", "Roxas", "San Agustin", "San Guillermo", "San Isidro", "San Manuel", "San Mariano", "San Mateo", "San Pablo", "Santa Maria", "Santo Tomas", "Tumauini" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Kalinga')
		municipalities = [ "Tabuk City", "Balbalan", "Pasil", "Pinukpuk", "Rizal", "Tanudan", "Tinglayan" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('La Union')
		municipalities = [ "San Fernando City", "Agoo", "Aringay", "Bacnotan", "Bagulin", "Balaoan", "Bangar", "Bauang", "Burgos", "Caba", "Luna", "Naguilian", "Pugo", "Rosario", "San Gabriel", "San Juan", "Santo Tomas", "Santol", "Sudipen", "Tubao" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Laguna')
		municipalities = [ "Calamba City", "San Pablo City", "Santa Rosa City", "Alaminos", "Bay", "Biñan", "Cabuyao", "Calauan", "Cavinti", "Famy", "Kalayaan", "Liliw", "Los Baños", "Luisiana", "Lumban", "Mabitac", "Magdalena", "Majayjay", "Nagcarlan", "Paete", "Pagsanjan", "Pakil", "Pangil", "Pila", "Rizal", "San Pedro", "Santa Cruz", "Santa Maria", "Siniloan", "Victoria" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Lanao del Norte')
		municipalities = [ "Iligan City", "Bacolod", "Baloi", "Baroy", "Kapatagan", "Kauswagan", "Kolambugan", "Lala", "Linamon", "Magsaysay", "Maigo", "Matungao", "Munai", "Nunungan", "Pantao Ragat", "Pantar", "Poona Piagapo", "Salvador", "Sapad", "Sultan Naga Dimaporo", "Tagoloan", "Tangcal", "Tubod" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Lanao del Sur')
		municipalities = [ "Marawi City", "Bacolod-Kalawi", "Balabagan", "Balindong", "Bayang", "Binidayan", "Buadiposo-Buntong", "Bubong", "Bumbaran", "Butig", "Calanogas", "Ditsaan-Ramain", "Ganassi", "Kapai", "Kapatagan", "Lumba-Bayabao", "Lumbaca-Unayan", "Lumbatan", "Lumbayanague", "Madalum", "Madamba", "Maguing", "Malabang", "Marantao", "Marogong", "Masiu", "Mulondo", "Pagayawan", "Piagapo", "Poona Bayabao", "Pualas", "Saguiaran", "Sultan Dumalondong", "Picong", "Tagoloan Ii", "Tamparan", "Taraka", "Tubaran", "Tugaya", "Wao" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Leyte')
		municipalities = [ "Baybay City", "Ormoc City", "Tacloban City", "Abuyog", "Alangalang", "Albuera", "Babatngon", "Barugo", "Bato", "Burauen", "Calubian", "Capoocan", "Carigara", "Dagami", "Dulag", "Hilongos", "Hindang", "Inopacan", "Isabel", "Jaro", "Javier", "Julita", "Kananga", "La Paz", "Leyte", "Macarthur", "Mahaplag", "Matag-ob", "Matalom", "Mayorga", "Merida", "Palo", "Palompon", "Pastrana", "San Isidro", "San Miguel", "Santa Fe", "Tabango", "Tabontabon", "Tanauan", "Tolosa", "Tunga", "Villaba" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Maguindanao')
		municipalities = [ "Cotabato City", "Ampatuan", "Buluan", "Datu Abdullah Sangki", "Datu Anggal Midtimbang", "Datu Paglas", "Datu Piang", "Datu Saudi-Ampatuan", "Datu Unsay", "Gen. S. K. Pendatun", "Guindulungan", "Mamasapano", "Mangudadatu", "Pagagawan", "Pagalungan", "Paglat", "Pandag", "Rajah Buayan", "Shariff Aguak", "South Upi", "Sultan sa Barongis", "Talayan", "Talitay" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Marinduque')
		municipalities = [ "Boac", "Buenavista", "Gasan", "Mogpog", "Santa Cruz", "Torrijos" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Masbate')
		municipalities = [ "Masbate City", "Aroroy", "Baleno", "Balud", "Batuan", "Cataingan", "Cawayan", "Claveria", "Dimasalang", "Esperanza", "Mandaon", "Milagros", "Mobo", "Monreal", "Palanas", "Pio V. Corpuz", "Placer", "San Fernando", "San Jacinto", "San Pascual", "Uson" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Metro Manila')
		municipalities = [ "Caloocan", "Las Piñas", "Makati", "Malabon", "Mandaluyong", "Manila", "Marikina", "Muntinlupa", "Navotas", "Parañaque", "Pasay", "Pasig", "Quezon City", "San Juan", "Taguig", "Valenzuela", "Pateros" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Misamis Occidental')
		municipalities = [ "Oroquieta City", "Ozamis City", "Tangub City", "Aloran", "Baliangao", "Bonifacio", "Calamba", "Clarin", "Concepcion", "Don Victoriano Chiongbian", "Jimenez", "Lopez Jaena", "Panaon", "Plaridel", "Sapang Dalaga", "Sinacaban", "Tudela" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Misamis Oriental')
		municipalities = [ "Cagayan de Oro", "Gingoog City", "El Salvador City", "Alubijid", "Balingasag", "Balingoan", "Binuangan", "Claveria", "El Salvador", "Gitagum", "Initao", "Jasaan", "Kinoguitan", "Lagonglong", "Laguindingan", "Libertad", "Lugait", "Magsaysay", "Manticao", "Medina", "Naawan", "Opol", "Salay", "Sugbongcogon", "Tagoloan", "Talisayan", "Villanueva" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Mountain Province')
		municipalities = [ "Barlig", "Bauko", "Besao", "Bontoc", "Natonin", "Paracelis", "Sabangan", "Sadanga", "Sagada", "Tadian" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Negros Occidental')
		municipalities = [ "Bacolod City", "Bago City", "Cadiz City", "Escalante City", "Himamaylan City", "Kabankalan City", "La Carlota City", "Sagay City", "San Carlos City", "Silay City", "Sipalay City", "Talisay City", "Victorias City", "Binalbagan", "Calatrava", "Candoni", "Cauayan", "Enrique B. Magalona", "Hinigaran", "Hinoba-an", "Ilog", "Isabela", "La Castellana", "Manapla", "Moises Padilla", "Murcia", "Pontevedra", "Pulupandan", "Salvador Benedicto", "San Enrique", "Toboso", "Valladolid" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Negros Oriental')
		municipalities = [ "Bais", "Bayawan", "Canlaon", "Dumaguete", "Guihulngan", "Tanjay", "Amlan", "Ayungon", "Bacong", "Basay", "Bindoy", "Dauin", "Jimalalud", "La Libertad", "Mabinay", "Manjuyod", "Pamplona", "San Jose", "Santa Catalina", "Siaton", "Sibulan", "Tayasan", "Valencia", "Vallehermoso", "Zamboanguita" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Northern Samar')
		municipalities = [ "Allen", "Biri", "Bobon", "Capul", "Catarman", "Catubig", "Gamay", "Laoang", "Lapinig", "Las Navas", "Lavezares", "Lope de Vega", "Mapanas", "Mondragon", "Palapag", "Pambujan", "Rosario", "San Antonio", "San Isidro", "San Jose", "San Roque", "San Vicente", "Silvino Lobos",  "Victoria" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Nueva Ecija')
		municipalities = [ "Cabanatuan City", "Gapan City", "Palayan City", "San Jose City", "Science City of Muñoz", "Aliaga", "Bongabon", "Cabiao", "Carranglan", "Cuyapo", "Gabaldon", "General Mamerto Natividad", "General Tinio", "Guimba", "Jaen", "Laur", "Licab", "Llanera", "Lupao", "Nampicuan", "Pantabangan", "Peñaranda", "Quezon", "Rizal", "San Antonio", "San Isidro", "San Leonardo", "Santa Rosa", "Santo Domingo", "Talavera", "Talugtug", "Zaragoza" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Nueva Vizcaya')
		municipalities = [ "Alfonso Castaneda", "Ambaguio", "Aritao", "Bagabag", "Bambang", "Bayombong", "Diadi", "Dupax del Norte", "Dupax del Sur", "Kasibu", "Kayapa", "Quezon", "Santa Fe", "Solano", "Villaverde" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Occidental Mindoro')
		municipalities = [ "Abra de Ilog", "Calintaan", "Looc", "Lubang", "Magsaysay", "Mamburao", "Paluan", "Rizal", "Sablayan", "San Jose", "Santa Cruz" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Oriental Mindoro')
		municipalities = [ "Calapan City", "Baco", "Bansud", "Bongabong", "Bulalacao", "Gloria", "Mansalay", "Naujan", "Pinamalayan", "Pola", "Puerto Galera", "Roxas", "San Teodoro", "Socorro", "Victoria" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Palawan')
		municipalities = [ "Puerto Princesa City", "Aborlan", "Agutaya", "Araceli", "Balabac", "Bataraza", "Brooke's Point", "Busuanga", "Cagayancillo", "Coron", "Culion", "Cuyo", "Dumaran", "El Nido", "Kalayaan", "Linapacan", "Magsaysay", "Narra", "Quezon", "Rizal", "Roxas", "San Vicente", "Sofronio Española", "Taytay" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Pampanga')
		municipalities = [ "Angeles City", "City of San Fernando", "Apalit", "Arayat", "Bacolor", "Candaba", "Floridablanca", "Guagua", "Lubao", "Mabalacat", "Macabebe", "Magalang", "Masantol", "Mexico", "Minalin", "Porac", "San Luis", "San Simon", "Santa Ana", "Santa Rita", "Santo Tomas", "Sasmuan" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Pangasinan')
		municipalities = [ "Alaminos City", "Dagupan City", "San Carlos City", "Urdaneta City", "Agno", "Aguilar", "Alcala", "Anda", "Asingan", "Balungao", "Bani", "Basista", "Bautista", "Bayambang", "Binalonan", "Binmaley", "Bolinao", "Bugallon", "Burgos", "Calasiao", "Dasol", "Infanta", "Labrador", "Laoac", "Lingayen", "Mabini", "Malasiqui", "Manaoag", "Mangaldan", "Mangatarem", "Mapandan", "Natividad", "Pozzorubio", "Rosales", "San Fabian", "San Jacinto", "San Manuel", "San Nicolas", "San Quintin", "Santa Barbara", "Santa Maria", "Santo Tomas", "Sison", "Sual", "Tayug", "Umingan", "Urbiztondo", "Villasis" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Quezon')
		municipalities = [ "Lucena City", "Tayabas City", "Agdangan", "Alabat", "Atimonan", "Buenavista", "Burdeos", "Calauag", "Candelaria", "Catanauan", "Dolores", "General Luna", "General Nakar", "Guinayangan", "Gumaca", "Infanta", "Jomalig", "Lopez", "Lucban", "Macalelon", "Mauban", "Mulanay", "Padre Burgos", "Pagbilao", "Panukulan", "Patnanungan", "Perez", "Pitogo", "Plaridel", "Polillo", "Quezon", "Real", "Sampaloc", "San Andres", "San Antonio", "San Francisco", "San Narciso", "Sariaya", "Tagkawayan", "Tiaong", "Unisan" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Quirino')
		municipalities = [ "Aglipay", "Cabarroguis", "Diffun", "Maddela", "Nagtipunan", "Saguday" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Rizal')
		municipalities = [ "Rizal", "Antipolo City", "Angono", "Baras", "Binangonan", "Cainta", "Cardona", "Jalajala", "Morong", "Pililla", "Rodriguez", "San Mateo", "Tanay", "Taytay", "Teresa" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Romblon')
		municipalities = [ "Alcantara", "Banton", "Cajidiocan", "Calatrava", "Concepcion", "Corcuera", "Ferrol", "Looc", "Magdiwang", "Odiongan", "Romblon", "San Agustin", "San Andres", "San Fernando", "San Jose", "Santa Fe", "Santa Maria" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Samar')
		municipalities = [ "Catbalogan City", "Calbayog City", "Almagro", "Basey", "Calbiga", "Daram", "Gandara", "Hinabangan", "Jiabong", "Marabut", "Matuguinao", "Motiong", "Pagsanghan", "Paranas", "Pinabacdao", "San Jorge", "San Jose De Buan", "San Sebastian", "Santa Margarita", "Santa Rita", "Santo Niño", "Tagapul-an", "Talalora", "Tarangnan", "Villareal", "Zumarraga" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Sarangani')
		municipalities = [ "Alabel", "Glan", "Kiamba", "Maasim", "Maitum", "Malapatan", "Malungon" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Shariff Kabunsuan')
		municipalities = [ "Barira", "Buldon", "Datu Blah T. Sinsuat", "Datu Odin Sinsuat", "Kabuntalan", "Matanog", "Northern Kabuntalan", "Parang", "Sultan Kudarat", "Sultan Mastura", "Upi" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Siquijor')
		municipalities = [ "Enrique Villanueva", "Larena", "Lazi", "Maria", "San Juan", "Siquijor" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Sorsogon')
		municipalities = [ "Sorsogon City", "Barcelona", "Bulan", "Bulusan", "Casiguran", "Castilla", "Donsol", "Gubat", "Irosin", "Juban", "Magallanes", "Matnog", "Pilar", "Prieto Diaz", "Santa Magdalena" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('South Cotabato')
		municipalities = [ "General Santos City", "Koronadal City", "Banga", "Lake Sebu", "Norala", "Polomolok", "Santo Niño", "Surallah", "T'Boli", "Tampakan", "Tantangan", "Tupi" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Southern Leyte')
		municipalities = [ "Maasin City", "Anahawan", "Bontoc", "Hinunangan", "Hinundayan", "Libagon", "Liloan", "Limasawa", "Macrohon", "Malitbog", "Padre Burgos", "Pintuyan", "Saint Bernard", "San Francisco", "San Juan", "San Ricardo", "Silago", "Sogod", "Tomas Oppus" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Sultan Kudarat')
		municipalities = [ "Tacurong City", "Bagumbayan", "Columbio", "Esperanza", "Isulan", "Kalamansig", "Lambayong", "Lebak", "Lutayan", "Palimbang", "President Quirino", "Sen. Ninoy Aquino" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Sulu')
		municipalities = [ "Hadji Panglima Tahil", "Indanan", "Jolo", "Kalingalan Caluang", "Lugus", "Luuk", "Maimbung", "Old Panamao", "Omar", "Pandami", "Panglima Estino", "Pangutaran", "Parang", "Pata", "Patikul", "Siasi", "Talipao", "Tapul", "Tongkil" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Surigao del Norte')
		municipalities = [ "Surigao City", "Alegria", "Bacuag", "Burgos", "Claver", "Dapa", "Del Carmen", "General Luna", "Gigaquit", "Mainit", "Malimono", "Pilar", "Placer", "San Benito", "San Francisco", "San Isidro", "Santa Monica", "Sison", "Socorro", "Tagana-an", "Tubod" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Surigao del Sur')
		municipalities = [ "Bislig City", "Tandag City", "Barobo", "Bayabas", "Cagwait", "Cantilan", "Carmen", "Carrascal", "Cortes", "Hinatuan", "Lanuza", "Lianga", "Lingig", "Madrid", "Marihatag", "San Agustin", "San Miguel", "Tagbina", "Tago" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Tarlac')
		municipalities = [ "Tarlac City", "Anao", "Bamban", "Camiling", "Capas", "Concepcion", "Gerona", "La Paz", "Mayantoc", "Moncada", "Paniqui", "Pura", "Ramos", "San Clemente", "San Jose", "San Manuel", "Santa Ignacia", "Victoria" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Tawi-Tawi')
		municipalities = [ "Bongao", "Languyan", "Mapun", "Panglima Sugala", "Sapa-Sapa", "Sibutu", "Simunul", "Sitangkai", "South Ubian", "Tandubas", "Turtle Islands" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Zambales')
		municipalities = [ "Olongapo City", "Botolan", "Cabangan", "Candelaria", "Castillejos", "Iba", "Masinloc", "Palauig", "San Antonio", "San Felipe", "San Marcelino", "San Narciso", "Santa Cruz", "Subic" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Zamboanga del Norte')
		municipalities = [ 	"Dapitan City", "Dipolog City", "Bacungan", "Baliguian", "Godod", "Gutalac", "Jose Dalman", "Kalawit", "Katipunan", "La Libertad", "Labason", "Liloy", "Manukan", "Mutia", "Piñan", "Polanco", "Pres. Manuel A. Roxas", "Rizal", "Salug", "Sergio Osmeña Sr.", "Siayan", "Sibuco", "Sibutad", "Sindangan", "Siocon", "Sirawai", "Tampilisan" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Zamboanga del Sur')
		municipalities = [ "Pagadian City", "Zamboanga City", "Aurora", "Bayog", "Dimataling", "Dinas", "Dumalinao", "Dumingag", "Guipos", "Josefina", "Kumalarang", "Labangan", "Lakewood", "Lapuyan", "Mahayag", "Margosatubig", "Midsalip", "Molave", "Pitogo", "Ramon Magsaysay", "San Miguel", "San Pablo", "Sominot", "Tabina", "Tambulig", "Tigbao", "Tukuran", "Vincenzo A. Sagun" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
	if province.name.eql?('Zamboanga Sibugay')
		municipalities = [ "Alicia", "Buug", "Diplahan", "Imelda", "Ipil", "Kabasalan", "Mabuhay", "Malangas", "Naga", "Olutanga", "Payao", "Roseller Lim", "Siay", "Talusan", "Titay", "Tungawan" ]
		municipalities.each do |municipality|
			Municipality.create(name: municipality, province_id: province.id )
		end
	end
end
