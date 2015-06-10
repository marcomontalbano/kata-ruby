# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'kata-bowling'
  spec.version       = '1.0'
  spec.licenses      = ['MIT']

  spec.summary       = 'Bowling refers to a series of sports or leisure activities in which a player rolls or throws a bowling ball towards a target.'
  spec.description   = 'Bowling refers to a series of sports or leisure activities in which a player rolls or throws a bowling ball towards a target.'
  
  spec.authors       = ['Marco Montalbano']
  spec.email         = 'marcomontalbano.work@gmail.com'
  spec.homepage      = 'https://bitbucket.org/mmontalbano/kata-bowling'
  
  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md ROADMAP.md CHANGELOG.md)
  
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
