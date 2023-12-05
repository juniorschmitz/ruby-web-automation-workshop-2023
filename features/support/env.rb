# frozen_string_literal: true

require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'
require 'cucumber'
require 'rspec'
require 'faker'

ENVIRONMENT = ENV['ENVIRONMENT']
ENVIRONMENT_CONFIG = YAML.load_file(File.dirname(__FILE__) +"/environment/#{ENVIRONMENT}.yml")
URL = ENVIRONMENT_CONFIG['url']
BROWSER = ENV['BROWSER'].to_sym

Capybara.register_driver :selenium do |app|
  case BROWSER
  when :chrome
    options = setup_chrome_options
    client = setup_http_client
    Capybara::Selenium::Driver.new(app, browser: :chrome, options: options, http_client: client)
  else
    raise 'Browser not found'
  end
end

def setup_chrome_options
  options = Selenium::WebDriver::Chrome::Options.new

  # Basic Chrome configurations
  options.add_argument("--ignore-ssl-errors")
  options.add_argument("--ignore-certificate-errors")
  options.add_argument("--disable-popup-blocking")
  options.add_argument("--disable-gpu")
  options.add_argument("--disable-translate")
  options.add_argument("--start-maximized")
  options.add_argument("--incognito")
  options.add_argument("--no-sandbox")
  options.add_argument("--acceptInsecureCerts=true")
  options.add_argument("--window-size=1420,835")
  options.add_argument("--disable-impl-side-painting")
  options.add_argument("--debug_level=3")

  # Add options for headless mode, if necessary
  if ENV['HEADLESS']
    options.add_argument("--headless")
    options.add_argument("--disable-site-isolation-trials")
  end

  options
end

def setup_http_client
  client = Selenium::WebDriver::Remote::Http::Default.new
  client.read_timeout = 90
  client
end

Capybara.default_driver        = :selenium
Capybara.app_host              = URL
Capybara.default_max_wait_time = 10
