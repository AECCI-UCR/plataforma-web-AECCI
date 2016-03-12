# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

course = Course.create(name: 'Programacion II', initials: 'MPLP666')
course2 = Course.create(name: 'Bases de datos I', initials: 'BD001')
Test.create([{teacher: 'Di Mare', course: course}, {teacher: 'Braulio', course: course}, {teacher: 'Allan', course: course}, {teacher: 'Olman', course: course2}])
