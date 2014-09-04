json.array!(@registros) do |registro|
  json.extract! registro, :id, :documento, :nombre_completo, :numero_ficha, :contrasena, :confirmar_contrasena, :email, :genero
  json.url registro_url(registro, format: :json)
end
