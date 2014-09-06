json.array!(@tipo_elementos) do |tipo_elemento|
  json.extract! tipo_elemento, :id, :nombre, :descripcion, :icono
  json.url tipo_elemento_url(tipo_elemento, format: :json)
end
