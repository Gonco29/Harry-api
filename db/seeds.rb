# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


puts "Cleaning Seed"
Character.destroy_all if Rails.env.development?

puts "Creating characters..."

ojoloco = {name: "Alastor Moody", review: "Alastor 'Ojoloco' Moody era un Auror de el Ministerio de Magia, conocido por haber atrapado más mortífagos que cualquier otro Auror. Por causa de este empleo, sufrió muchas lesiones (Perdió un ojo, donde ahora tiene un ojo mágico capaz de ver a través de las cosas y las capas invisibles, un pedazo de nariz y una pierna). ", actor: "Brendan Gleeson", image_url: "https://res.cloudinary.com/abdulaba/image/upload/v1669900365/Harry/Alastor-Ojoloco-Moody__seldth.jpg"}
chochang = {name: "Cho Chang", review: "Cho Chang (n. entre 1978 y 1979) fue una bruja que asistió al Colegio Hogwarts de Magia y Hechicería desde 1990 a 1997 y fue elegida para la Casa de Ravenclaw. Fue Buscadora del equipo de Quidditch de su casa y una estudiante popular. ", actor: "Katie Leung", image_url: "https://res.cloudinary.com/abdulaba/image/upload/v1669900365/Harry/Cho-Chang__etm4ip.jpg"}
cedric = {name: "Cedric Diggory", review: "Cedric Diggory (septiembre/octubre de 1977 – 24 de junio de 1995) fue el hijo de Amos Diggory y su esposa. Comenzó a asistir al Colegio Hogwarts de Magia y Hechicería en 1989, y fue seleccionado para la casa Hufflepuff. En su sexto año Cedric puso su nombre para competir en el Torneo de los Tres Magos. Cedric fue asesinado por Peter Pettigrew con la maldición asesina, bajo las órdenes de Lord Voldemort.", actor: "Robert Pattinson", image_url: "https://res.cloudinary.com/abdulaba/image/upload/v1669900365/Harry/Cedric-Diggory__teeyto.jpg"}
harry = {name: "Harry James Potter", review: "Harry James Potter (n. el 31 de julio de 1980), es un mago de sangre mestiza y el único hijo de James y Lily Potter. Es la única persona conocida que ha sobrevivido a la maldición de Avada Kedavra, haciéndolo en dos ocasiones. Ambas veces la maldición fue conjurada por Lord Voldemort. Harry es también notable por ser el único Señor de la Muerte que se conoce, después de haber unido las tres Reliquias de la muerte. ", actor: "Daniel Radcliffe", image_url: "https://res.cloudinary.com/abdulaba/image/upload/v1669900365/Harry/Harry-Potter__htwqje.jpg"}
ron = {name: "Ronald Weasley", review: "Ronald 'Ron' Bilius Weasley (n. 1 de marzo de 1980) es un mago sangre pura, el sexto y más joven hijo de Arthur y Molly Weasley. Ron comenzó a asistir al Colegio Hogwarts de Magia y Hechicería en 1991 y fue seleccionado para la Casa Gryffindor. Pronto se convirtió en el mejor amigo de su compañero Harry Potter y luego de Hermione Granger. Después de la guerra, Ron se convirtió en Auror y ayudó a reformar y revolucionar el Ministerio de Magia", actor: "Rupert Grint", image_url: "https://res.cloudinary.com/abdulaba/image/upload/v1669900365/Harry/Ron-Weasley__lyqtwc.jpg"}
hagrid = {name: "Rubeus Hagrid", review: "El Profesor Rubeus Hagrid (n. 06 de diciembre de 1928), familiarmente conocido sólo por su apellido, 'Hagrid', es un mago semi gigante, hijo del señor Hagrid y la giganta Fridwulfa y medio hermano del gigante Grawp. Asistió al Colegio Hogwarts de Magia y Hechicería en 1940 y fue seleccionado para la Casa Gryffindor. En 1993, Hagrid asumió el cargo de profesor de Cuidado de Criaturas Mágicas. Como miembro de la Orden del Fénix original y la restaurada, Hagrid luchó en varias batallas de la Primera y la Segunda Guerra Mágica, incluyendo la Batalla de Hogwarts en 1998.", actor: "Robbie Coltrane", image_url: "https://res.cloudinary.com/abdulaba/image/upload/v1669900364/Harry/Rubeus-Hagrid__izy7qd.jpg"}
dumbledore = {name: "Albus Percival Wulfric Brian Dumbledore", review: "El profesor Dumbledore, (Orden de Merlín), (n. Verano[2] de 1881 - fl. 30 de junio de 1997) fue director del Colegio Hogwarts de Magia y Hechicería. También se desempeñó como Jefe Supremo de la Confederación Internacional de Magos. Albus Dumbledore era considerado como el mago más poderoso de su época. ", actor: "Michael Gambon", image_url: "https://res.cloudinary.com/abdulaba/image/upload/v1669900364/Harry/Albus-Dumbledore__ztskyf.jpg"}
hermione = {name: "Hermione Granger", review: "Hermione Jean Granger (n. 19 de septiembre de 1979) es una bruja hija de muggles. A los once años descubrió su don mágico y fue aceptada en el Colegio Hogwarts de Magia y Hechicería. Fue seleccionada para la Casa Gryffindor. Posee una mente académica brillante, y demostró ser una estudiante superdotada. Después de la Segunda Guerra Mágica, Hermione volvió a Hogwarts para terminar su educación. Después trabajó en el Ministerio de Magia, en el Departamento de Regulación y Control de Criaturas Mágicas, luchando para que trataran mejor a los elfos domésticos, y después en el Departamento de Aplicación de la Ley Mágica. ", actor: "Emma Watson", image_url: "https://res.cloudinary.com/abdulaba/image/upload/v1669900364/Harry/Hermione-Granger__ze0mnx.jpg"}

[ojoloco, chochang, cedric, harry, ron, hagrid, dumbledore, hermione].each do |attributes|
  character = Character.create!(attributes)
  puts "Created #{character.name}"
end
puts "Finished!"
