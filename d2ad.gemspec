Gem::Specification.new do |s|
  s.name        = 'd2ad'
  s.version     = '0.1.0'
  s.date        = '2013-02-17'
  s.summary     = 'Dota 2 Ability Draft Analyzer'
  s.description = 'Shows information about what abilities were upgraded at what levels for each player in a Dota 2 match. It can also return recent match IDs for a player. Handy for analyzing Ability Draft matches!'
  s.authors     = ['Nicholas Scheurich']
  s.email       = 'nick@scheurich.me'
  s.files       = ['lib/d2ad.rb', 'lib/d2ad/dota-api.rb', 'lib/d2ad/abilities.json']
  s.executables << 'd2ad'
  s.homepage    = 'http://gitub.com/ngscheurich/d2ad'
  s.license     = 'MIT'
end
