class MainController < ApplicationController
  def index
    require 'date'

    endDate = DateTime.parse("2nd Jan 2021 14:00:00 GMT+0800")
    @registrationOpen = DateTime.now < endDate
  end
end
