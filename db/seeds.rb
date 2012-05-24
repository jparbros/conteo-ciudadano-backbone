# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'csv'

puts "Leyendo archivo"
casillas = File.read('doc/casillas_2012.csv').force_encoding('MacRoman').encode('UTF-8')

puts "Parseando archivo"
casillas_array = CSV.parse(casillas, :headers => true)

casillas_array.each do |casilla|
  estado = State.find_or_create_by_name(casilla['NOMBRE_ESTADO'])

  puts "Creando casilla #{casilla['CABECERA_DISTRITAL']} #{casilla['SECCION']} #{casilla['TIPO_CASILLA_W']} \n"

  PollingBooth.create( address: casilla['DOMICILIO'],
    distric: casilla['ID_DISTRITO'],
    district_head: casilla['CABECERA_DISTRITAL'],
    location: casilla['UBICACION_CASILLA'],
    nominal_list: casilla['LISTA_NOMINAL_CASILLA'],
    references: casilla['REFERENCIA_CASILLA'],
    section: casilla['SECCION'],
    state_id: estado.id,
    type: casilla['TIPO_CASILLA_W']
  )
end