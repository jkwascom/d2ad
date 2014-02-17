Gem::Specification.new do |s|
  s.name        = 'dada'
  s.version     = '0.0.1'
  s.date        = '2013-02-15'
  s.summary     = 'Dota Ability Draft Analyzer'
  s.description = 'Shows information about what abilities were upgraded at what levels for each player in a Dota 2 match. It can also return recent match IDs for a player. Handy for analyzing Ability Draft matches!'
  s.authors     = ['Nicholas Scheurich']
  s.email       = 'nick@scheurich.me'
  s.files       = ['lib/dada.rb', 'lib/dada/dota-api.rb']
  s.executables << 'dada'
  s.homepage    = 'http://gitub.com/ngscheurich/dada'
  s.license     = 'MIT'
end
