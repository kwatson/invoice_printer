lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'invoice_printer/version'

Gem::Specification.new do |spec|
  spec.name          = 'invoice_printer'
  spec.version       = InvoicePrinter::VERSION
  spec.authors       = ['Josef Strzibny']
  spec.email         = ['strzibny@strzibny.name']
  spec.summary       = 'Super simple PDF invoicing in pure Ruby'
  spec.description   = 'Super simple PDF invoicing in pure Ruby (based on Prawn library).'
  spec.homepage      = 'https://github.com/strzibny/invoice_printer'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'prawn'
  spec.add_dependency 'prawn-layout'

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
