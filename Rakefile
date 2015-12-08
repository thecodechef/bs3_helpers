$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require "bs3_helpers/version"
require "bs3_helpers/messages"

task :build do  
  system "gem build bs3_helpers.gemspec"
end

task :commit do
  system "git add ."
  system "git commit -am #{Bs3Helpers::Messages::Commits}"
end

task :release => :build do  
  system "gem push bs3_helpers-#{Bs3Helpers::VERSION}.gem"
  system "git tag -a v#{Bs3Helpers::VERSION} -m #{Bs3Helpers::Messages::Commits}"
  system "git push -u origin master --tags"
end 
