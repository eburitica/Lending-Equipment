class Registro < ActiveRecord::Base

  validates :documento, :presence => true
  validates :nombre_completo, :presence => true
  validates :numero_ficha, :presence => true
  validates :email, :presence => true

  # validar un atributo booleano
  validates :genero, inclusion: [true, false]

  # validarformato de un email
  validates :email, format:{ with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
  message: 'Formato no valido' }

  # Valida si un atributo es numerico
  validates :documento, numericality: true

	def self.search(search, page)
		where(['upper(documento) like ?  or numero_ficha = ?',
		"%#{search}%".upcase,"#{search}"]).paginate(page: page).order("id")
	end
end
