require "report_builder"
require "date"

Before do
  driver.start_driver
  driver.manage.timeouts.implicit_wait = 30
  device_type = "android"
  @screen = DroidScreens.new if device_type.eql?("android")
end

Before("@criar_usuario") do
  @screen.user.create_user("Lucas Donato")
  @screen.home.home_page
end

After do
  screenshot = driver.screenshot_as(:base64)
  embed(screenshot, "image/png", "Screenshot")

  driver.quit_driver
end
at_exit do
  @infos = {
    "device" => "Android",
    "environment" => "Dev",
    "Data do Teste" => Time.now.to_s,
  }

  ReportBuilder.configure do |config|
    config.input_path = "log/report.json"
    config.report_path = "log/report"
    config.report_types = [:html]
    config.report_title = "Tagplus Pedidos"
    config.additional_info = @infos
    config.color = "indigo"
  end
  ReportBuilder.build_report
end
