class AvailableTimesController < ApplicationController
  require 'date'

  def index
    times = AvailableTime.all
    render json: times.as_json
  end

  def add_time
    time = Time.zone.parse("10:00")
    new_time = AvailableTime.create!(date: Date.current, time: time, available: true, event_id: 1)
    if new_time.save
      render json: new_time.as_json
    else
      render json: {errors: new_time.errors.full_messages}, status: 422
    end
  end
end

# 4・21 ここまで

# タイムゾーンと90日後の日付を取得してから30分毎のレコードを自動作成
# whenever
# railsの TimeWithZoneを使う

# 10:00 - 18:00
