json.array!(@ambientes) do |ambiente|
  json.extract! ambiente, :id, :nombre, :ubicacion, :codigo, :descripcion
  json.url ambiente_url(ambiente, format: :json)
end
