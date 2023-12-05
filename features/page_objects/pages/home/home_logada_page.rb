# frozen_string_literal: true

Dir[File.join(File.dirname(__FILE__), '../../sections/*/*.rb')].sort.each { |file| require file }

class HomeLogadaPage < SitePrism::Page
  set_url '/admin/home'

  element :btn_logout, 'button[data-testid="logout"]'
  element :h1_message_welcome, 'h1'
end
