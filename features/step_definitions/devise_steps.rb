Given /^I am not (?:signed|logged) in$/ do
  current_driver = Capybara.current_driver
  begin
    Capybara.current_driver = :rack_test
    page.driver.submit :get, '/users/sign_out', {}
  ensure
    Capybara.current_driver = current_driver
  end
end
