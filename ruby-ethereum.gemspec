$:.push File.expand_path("../lib", __FILE__)

require "ethereum/version"

Gem::Specification.new do |s|
  s.name        = "ruby-ethereum"
  s.version     = Ethereum::VERSION
  s.authors     = ["Jan Xie"]
  s.email       = ["jan.h.xie@gmail.com"]
  s.homepage    = "https://github.com/janx/ruby-ethereum"
  s.summary     = "Core library of the Ethereum project, ruby version."
  s.description = "Ethereum's implementation in ruby."
  s.license     = 'MIT'

  s.files = Dir["{lib}/**/*"] + ["LICENSE", "README.md"]
  s.require_paths = ["lib"]
  s.add_dependency('rlp')
  s.add_dependency('ethash')
  s.add_dependency('bitcoin-secp256k1')
  s.add_dependency('lru_redux')
  s.add_dependency('ffi')
  s.add_dependency('digest-sha3')
  s.add_dependency('block_logger')
  s.add_dependency('leveldb')

  s.add_development_dependency('rake')
  s.add_development_dependency('minitest')
  s.add_development_dependency('yard')
  #s.add_development_dependency('serpent')
end
