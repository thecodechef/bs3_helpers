$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require "bs3_helpers/version"
require "bs3_helpers/messages"

task :build  => :commit do  
  system "gem build bs3_helpers.gemspec"
end

task :commit => :update do
  system "git add ."
  system "git commit -m '#{Bs3Helpers::Messages::Commits.first}'"
end

task :release => :build do  
  system "gem push bs3_helpers-#{Bs3Helpers::VERSION}.gem"
  system "git tag -a v#{Bs3Helpers::VERSION} -m '#{Bs3Helpers::Messages::Commits.first}'"
  system "git push -u origin master --tags"
end 

task :update do
  system "git pull origin master"
end
