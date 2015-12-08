$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

require "bs3_helpers/version"

task :build do  
  system "gem build bs3_helpers.gemspec"
end

task :release => :build do  
  system "gem push bs3_helpers-#{Bs3Helpers::VERSION}.gem"
  system "git tag -a v#{Bs3Helpers::VERSION}"
  system "git push -u origin master --tags"
end 
