$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '../../', 'lib'))

require 'bundler/setup'

require 'capybara'

require 'rspec'

require 'gherkin'

require 'require_all'

require 'page-object'

require_all 'lib'

World(PageObject::PageFactory)