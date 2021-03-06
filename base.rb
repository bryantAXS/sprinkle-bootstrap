require 'yaml'
require 'active_support/core_ext/hash/indifferent_access'

root = File.dirname(__FILE__)

$config = YAML.load_file(File.join(root, 'config.yml')).with_indifferent_access

Dir[File.join(root, 'packages', '**', '*.rb')].each { |f| require f }
