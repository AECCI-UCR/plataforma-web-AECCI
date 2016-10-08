if ENV["RAILS_ENV"]=='development'

  User.create([{email: 'b20000@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', admin: true, confirmed_at: Time.now},
               {email: 'b20001@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now},
               {email: 'b20002@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now},
               {email: 'b20003@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now},
               {email: 'b30000@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', admin: true, confirmed_at: Time.now},
               {email: 'b40000@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now},
               {email: 'b50000@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now},
               {email: 'b50000@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now},
               {email: 'b60000@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now},
               {email: 'b60001@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now},
               {email: 'b60001@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', confirmed_at: Time.now}
              ])

  courses = Course.create([{name: 'Introducción a la Computación e Informática', initials: 'CI-1010', year: 1},
                           {name: 'Introducción a la Matemática para Computación ', initials: 'MA-0291', year: 1},
                           {name: 'Programación I', initials: 'CI-1101', year: 1}, {name: 'Programación II', initials: 'CI-1201', year: 2},
                           {name: 'Diseño de Circuitos Digitales', initials: 'CI-1210', year: 2},
                           {name: 'Cálculo para Computación I', initials: 'MA-0293', year: 2},
                           {name: 'Ensambladores y Microprocesadores', initials: 'CI-1220', year: 2},
                           {name: 'Estructuras de Datos y Análisis de Algoritmos', initials: 'CI-1221', year: 2},
                           {name: 'Bases de Datos I', initials: 'CI-1312', year: 3},
                           {name: 'Sistemas Operativos I', initials: 'CI-1310', year: 3}, {name: 'Investigación de Operaciones', initials: 'CI-1453', year: 3},
                           {name: 'Ingeniería de Software I', initials: 'CI-1330', year: 3},
                           {name: 'Arquitectura de Computadoras', initials: 'CI-1323', year: 4}, {name: 'Paradigmas Computacionales', initials: 'CI-1441', year: 4},
                           {name: 'Informática y Sociedad', initials: 'CI-1440', year: 4},
                           {name: 'Redes de Computadoras I', initials: 'CI-1320', year: 3},
                           {name: 'Ingeniería de Software II', initials: 'CI-1430', year: 4}])

  teachers = Teacher.create([{name: 'Roxana Vargas'},
                             {name: 'Braulio Solano'},
                             {name: 'Raul Blanco'},
                             {name: 'Iliana Alpizar'},
                             {name: 'Allan Calderón'},
                             {name: 'Juan Carlos Briceño'},
                             {name: 'Gabriela Salazar'},
                             {name: 'Mauricio Valverde'},
                             {name: 'Francisco Arroyo'},
                             {name: 'Richard Delgado'},
                             {name: 'Sanders Pacheco'},
                             {name: 'Ricardo Gang'},
                             {name: 'Luis Quesada'}])


  Test.create!([{year: 2013, semester: 1, test_number: 1, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[0], teacher: teachers[0]},
                {year: 2014, semester: 2, test_number: 2, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[1], teacher: teachers[1]},
                {year: 2015, semester: 2, test_number: 2, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[1], teacher: teachers[3]},
                {year: 2014, semester: 2, test_number: 3, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[3], teacher: teachers[10]},
                {year: 2016, semester: 1, test_number: 1, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[14], teacher: teachers[11]},
                {year: 2012, semester: 3, test_number: 1, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[7], teacher: teachers[7]},
                {year: 2011, semester: 1, test_number: 3, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[5], teacher: teachers[5]},
                {year: 2015, semester: 1, test_number: 2, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[0], teacher: teachers[6]},
                {year: 2013, semester: 1, test_number: 3, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[2], teacher: teachers[1]},
                {year: 2010, semester: 2, test_number: 1, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[11], teacher: teachers[0]},
                {year: 2014, semester: 2, test_number: 2, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[3], teacher: teachers[10]},
                {year: 2011, semester: 1, test_number: 3, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[6], teacher: teachers[9]},
                {year: 2012, semester: 1, test_number: 1, file_url: File.open(Rails.root.join('app', 'assets', 'prueba_pdf.pdf')), course: courses[9], teacher: teachers[4]}])


  Ad.create!([{title: 'Oferta laboral en HP', description: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', image_url: File.open(Rails.root.join('app', 'assets', 'images', 'fotos', 'kylo.png')), image_carousel_url: File.open(Rails.root.join('app', 'assets', 'images', 'fotos', 'carousel', 'carousel-1.png')), important: true},
              {title: 'Camisas semana U', description: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', image_url: File.open(Rails.root.join('app', 'assets', 'images', 'fotos', 'soldado.jpg')), image_carousel_url: File.open(Rails.root.join('app', 'assets', 'images', 'fotos', 'carousel', 'carousel-2.png')), important: true},
              {title: 'Pago de casilleros', description: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', image_url: File.open(Rails.root.join('app', 'assets', 'images', 'fotos', 'yosemite.png')), image_carousel_url: 'dummy', important: false},
              {title: 'Prueba con seed', description: 'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit...', image_url: File.open(Rails.root.join('app', 'assets', 'images', 'fotos', 'binary.png')), image_carousel_url: File.open(Rails.root.join('app', 'assets', 'images', 'fotos', 'carousel', 'carousel-3.png')), important: true}])
else
  User.create({email: 'asoinfo@ecci.ucr.ac.cr', password: 'password', password_confirmation: 'password', admin: true, confirmed_at: Time.now})
end