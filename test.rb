require 'selenium-webdriver'

options = Selenium::WebDriver::Chrome::Options.new(
  binary: "C:/Program Files (x86)/Google/Chrome/Application/chrome.exe")
options.add_option(:debugger_address, "127.0.0.1:9222")

Selenium::WebDriver::Chrome.path = "C:\\RubyWork\\test_of_selenium\\chromedriver.exe"

driver = Selenium::WebDriver.for :chrome, options: options

# ページのタイトルを表示する
print(driver.title)
print("========== source ========== ")
print(driver.page_source)

