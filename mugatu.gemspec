require_relative './lib/mugatu/version'

Gem::Specification.new do |s|
  s.name = 'mugatuy'
  s.summary = 'Mugatu'
  s.version = Mugatu::VERSION
  s.authors = ['Steve Weiss']
  s.email = ['weissst@mail.gvsu.edu']
  s.homepage = 'https://github.com/sirscriptalot/mugatu'
  s.license = 'MIT'
  s.files = `git ls-files`.split("\n")
end
