$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require "bs3_helpers/version"

desc "Builds the gem."
task :build  => :commit do  
  system "gem build bs3_helpers.gemspec"
end

desc "Commits Changes."
task :commit => :update do
  system "git add ."
  system "git commit"
end

desc "Releases the Gem to rubygems.org."
task :release => :build do  
  system "gem push bs3_helpers-#{Bs3Helpers::VERSION}.gem"
  system "git tag -a v#{Bs3Helpers::VERSION}"
  system "git push -u origin master --tags"
end 

desc "Updates the Gem by pulling it down from Github."
task :update do
  system "git pull origin master"
end

task default: :release
