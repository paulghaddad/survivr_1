Gem::Specification.new do |s|
  s.name                        = "colorizr"
  s.version                     = "0.0.2"
  s.date                        = "2016-06-01"
  s.summary                     = "Colors Everywhere!"
  s.description                 = "A simple gem to colorize terminal output"
  s.authors                     = ["Paul Haddad"]
  s.email                       = "paulh16@gmail.com"
  s.files                       = ["lib/colorizr.rb", "lib/colorizr/string.rb", "lib/colorizr/terminal_colors.rb"]
  s.homepage                    = "http://udacity.com"
  s.license                     = "MIT"
  s.add_development_dependency "rspec", ["~> 3.4"]
end
