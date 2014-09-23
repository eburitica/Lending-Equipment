class TipoElemento < ActiveRecord::Base
	has_many :elementos
	# Validar que los atributos sean obligatorios
	validates :nombre, :presence => true

	def self.search(search, page)
		where(['upper(nombre) like ?',
		"%#{search}%".upcase]).paginate(page: page).order("id")
	end

end
