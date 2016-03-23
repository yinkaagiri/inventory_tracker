# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
INSERT INTO companies (name, category, location, logo_url)
VALUES ("Tazz", "Restaurant", "398 Washington Terrace", "http://dummyimage.com/237x186.jpg/ff4444/ffffff");
