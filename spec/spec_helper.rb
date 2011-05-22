require "rspec"
if RUBY_PLATFORM =~ /darwin/i
  require "growl"
end
if RUBY_PLATFORM =~ /linux/i
  require "libnotify"
end
