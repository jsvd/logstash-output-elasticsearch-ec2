Gem::Specification.new do |s|

  s.name            = 'logstash-output-elasticsearch-ec2'
  s.version         = '0.1.0'
  s.licenses        = ['Apache License (2.0)']
  s.summary         = "EC2 plugin for the Elasticsearch Output"
  s.description     = "EC2 plugin for the Elasticsearch Output"
  s.authors         = ["Elasticsearch"]
  s.email           = 'richard.pijnenburg@elasticsearch.com'
  s.homepage        = "http://logstash.net/"
  s.require_paths = ["lib"]

  # Files
  s.files = `git ls-files`.split($\)

  # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "group" => "output" }

  # Jar dependencies
  s.requirements << "jar 'org.elasticsearch:elasticsearch-cloud-aws', '2.3.0'"

  # Gem dependencies
  s.add_runtime_dependency 'logstash-output-elasticsearch'
  s.add_runtime_dependency 'logstash', '>= 1.4.0', '< 2.0.0'
  s.add_runtime_dependency 'jar-dependencies', ['~> 0.0.6']

end

