class Ambiente < ActiveRecord::Base

	validates :nombre, :presence => true
	validates :ubicacion, :presence => true

	def self.search(search, page)
		where(['upper(nombre) like ?',
		"%#{search}%".upcase]).paginate(page: page).order("id")
	end
end
