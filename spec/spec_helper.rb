require "rspec"
if RUBY_PLATFORM.downcase.include?("darwin")
  require "growl"
end
if RUBY_PLATFORM.downcase.include?("linux")
  require "libnotify"
end
