# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'kata-ruby-tt'
  spec.version       = '1.0'
  spec.licenses      = ['MIT']

  spec.summary       = 'Ruby - Tip & Tricks'
  spec.description   = 'Ruby - Tip & Tricks'
  
  spec.authors       = ['Marco Montalbano']
  spec.email         = 'marcomontalbano.work@gmail.com'
  spec.homepage      = 'https://github.com/mmontalbano/kata-ruby-tt'
  
  spec.files         = Dir.glob("{bin,lib}/**/*") + %w(LICENSE README.md ROADMAP.md CHANGELOG.md)
  
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
