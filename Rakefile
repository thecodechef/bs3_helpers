$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require "bs3_helpers/version"
require "bs3_helpers/messages"

task :build do  
  system "gem build bs3_helpers.gemspec"
end

task :commit do
  system "git add ."
  system "git commit -m #{Bs3Helpers::Messages::Commits.first}"
end

task :release => :build do  
  system "gem push bs3_helpers-#{Bs3Helpers::VERSION}.gem"
  system "git tag -a v#{Bs3Helpers::VERSION} -m #{Bs3Helpers::Messages::Commits.all.join('\n')}"
  system "git push -u origin master --tags"
end 
