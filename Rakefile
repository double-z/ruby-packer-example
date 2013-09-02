desc "Build AMI with packer"
task :build do
  app_file = "/tmp/archive.tar.gz"
  sh "git archive -o #{app_file} HEAD"
  rack_env = ENV['RACK_ENV'] || 'production'
  sh "packer build -var 'app_file=#{app_file}' --var 'rack_env=#{rack_env}' packer.json"
end

task :default => :build
