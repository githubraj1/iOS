require 'watir'
require 'watir-scroll'
require 'yaml'
require_relative '../../features/support/env'


at_exit do
  generatereports = Reports::Reportconfigurations.new
  generatereports.functionalreports
end

After do |scenario|
  $browser.close
end