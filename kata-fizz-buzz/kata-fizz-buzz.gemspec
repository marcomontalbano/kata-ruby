# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'kata-fizz-buzz'
  spec.version       = '1.0'
  spec.licenses      = ['MIT']

  spec.summary       = 'Fizz buzz is a group word game for children to teach them about division.'
  spec.description   = 'Fizz buzz (also known as bizz buzz, or simply buzz) is a group word game for children to teach them about division. Players take turns to count incrementally, replacing any number divisible by three with the word "fizz", and any number divisible by five with the word "buzz".'
  
  spec.authors       = ['Marco Montalbano']
  spec.email         = 'marcomontalbano.work@gmail.com'
  spec.homepage      = 'https://bitbucket.org/mmontalbano/kata-fizz-buzz'
  
  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md ROADMAP.md CHANGELOG.md)
  
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
