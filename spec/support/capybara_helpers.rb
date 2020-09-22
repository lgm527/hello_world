# Pause capybara tests to poke around the browser page
module CapybaraHelpers
  def pause
    $stderr.write 'Press enter to continue'
    $stdin.gets
  end

  def run_in_browser
    Capybara.current_driver = :selenium_chrome
  end

  def run_in_default
    Capybara.use_default_driver
  end

  def run_headless
    Capybara.current_driver = :selenium_chrome_headless
  end

  def reload_page
    page.evaluate_script 'window.location.reload()'
  end
end
