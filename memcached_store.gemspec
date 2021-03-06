# encoding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)
require "memcached_store/version"

Gem::Specification.new do |spec|
  spec.name = "memcached_store"
  spec.authors = ["Camilo Lopez", "Tom Burns", "Arthur Neves", "Francis Bogsanyi"]
  spec.email = ["camilo@camilolopez.com", "tom.burns@shopify.com", "arthurnn@gmail.com", "francis.bogsanyi@shopify.com"]
  spec.summary = spec.description = 'Plugin-able Memcached adapters to add features (compression, safety)'
  spec.homepage = "https://github.com/Shopify/memcached_store/"
  spec.license = "MIT"

  spec.metadata["allowed_push_host"] = "https://rubygems.org"

  spec.version = MemcachedStore::VERSION
  spec.files = Dir["lib/**/*.rb", "README.md", "LICENSE"]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 2.2.0"

  spec.add_runtime_dependency "activesupport", ">= 4"
  spec.add_runtime_dependency "memcached", "~> 1.8.0"

  spec.add_development_dependency "rake"
end
