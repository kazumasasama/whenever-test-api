class AvailableTimesController < ApplicationController

  def index
    times = AvailableTime.all
    render json: times.as_json
  end
end
