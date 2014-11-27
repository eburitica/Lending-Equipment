1# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


tipo_elementos = [{nombre:"Portatiles",descripcion:"",icono:"fa-laptop"},
{nombre:"Cargadores de portatil",descripcion:"",      icono:"fa-shopping-cart"},
{nombre:"Mouses",descripcion:"",                      icono:"fa-location-arrow"},
{nombre:"Cables HDMI",descripcion:"",                 icono:"fa-shopping-cart"},
{nombre:"Cables VGA",descripcion:"",                  icono:"fa-shopping-cart"},
{nombre:"Diademas",descripcion:"",                    icono:"fa-headphones"},
{nombre:"Pantalla-TV",descripcion:"",                 icono:"fa-desktop"},
{nombre:"Control de pantalla",descripcion:"",         icono:"fa-shopping-cart"},
{nombre:"Control de aire",descripcion:"",             icono:"fa-shopping-cart"},
{nombre:"Microfonos",descripcion:"",                  icono:"fa-microphone"},
{nombre:"Equipo de sonido",descripcion:"",            icono:"fa-volume-up"},
{nombre:"Bafles de portatil",descripcion:"",          icono:"fa-volume-down "},
{nombre:"Video-Beam",descripcion:"",                  icono:"fa-hdd-o"},
{nombre:"Pantalla Video-Beam",descripcion:"",         icono:"fa-image"},
{nombre:"Extenciones",descripcion:"",                 icono:"fa-shopping-cart"},
{nombre:"Llaves",descripcion:"",                      icono:"fa-key"},
{nombre:"Astas",descripcion:"",                       icono:"fa-shopping-cart"}]


tipo_elementos.each do |tipo_elemento|
	TipoElemento.where(nombre: tipo_elemento[:nombre], icono: tipo_elemento[:icono]).first || TipoElemento.create(tipo_elemento)
end




users = [{nombre:"Esteban Buritica Castaño", email:"baneste.17@gmail.com", crypted_password:"123456", salt:"123456"}]

users.each do |user|
	User.where(nombre: user[:nombre], email: user[:email] ,crypted_password: user[:crypted_password], salt: user[:salt]).first || User.create(user)
end

estados = [{nombre:"Malo",descripcion:""},
{nombre:"Reparacion",descripcion:""},
{nombre:"Reservado",descripcion:""},
{nombre:"Permiso de salida",descripcion:""},
{nombre:"Disponible",descripcion:""}]




estados.each do |estado|
	Estado.where(nombre: estado[:nombre]).first || Estado.create(estado)
end