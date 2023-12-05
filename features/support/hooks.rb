# frozen_string_literal: true

After do |scenario|
  if scenario.failed?
    screenshot = Capybara.page.save_screenshot("log/screenshots/#{scenario.__id__}.png")
    attach(screenshot, 'image/png')
    Capybara.current_session.driver.quit
  end
end
