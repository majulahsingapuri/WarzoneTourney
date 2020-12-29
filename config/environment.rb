# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address              => "smtp.sendgrid.net",
  :port                 => 587,
  :user_name            => 'apikey',
  :password             => ENV['sendgridkey'],
  :domain               => 'majulahsingapuri.github.io',
  :authentication       => "plain",
  :enable_starttls_auto => true
}