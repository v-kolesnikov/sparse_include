# frozen_string_literal: true

require_relative 'lib/sparse_include/version'

Gem::Specification.new do |spec|
  spec.name          = 'sparse_include'
  spec.version       = SparseInclude::VERSION
  spec.authors       = ['Vasily Kolesnikov']
  spec.email         = ['re.vkolesnikov@gmail.com']

  spec.summary       = 'Sparse include Ruby modules'
  spec.homepage      = 'https://github.com/v-kolesnikov/sparse_include'
  spec.license       = 'MIT'

  spec.files         = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ['lib']
end
