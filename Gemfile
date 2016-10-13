source 'https://rubygems.org'

# Declare your gem's dependencies in core.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

# Declare any dependencies that are still in development here instead of in
# your gemspec. These might include edge Rails or gems from your path or
# Git. Remember to move these dependencies to your gemspec before releasing
# your gem to rubygems.org.

# To use a debugger
# gem 'byebug', group: [:development, :test]
# You need tell where the engine is
if Dir.exist? '../model'
  gem 'scheduler_model', path: '../model'
else
  gem 'scheduler_model', :git => 'https://github.com/alexrochas/class_grid_scheduler_core.git'
end
