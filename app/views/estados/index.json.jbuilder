json.array!(@estados) do |estado|
  json.extract! estado, :id, :permisos_de_salida, :disponible, :malo, :reparacion, :reservado, :descripcion
  json.url estado_url(estado, format: :json)
end
