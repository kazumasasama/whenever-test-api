class AvailableTimesController < ApplicationController
  require 'date'

  def index
    times = AvailableTime.all
    render json: times.as_json
  end

  def add_time
    Time.zone = 'Eastern Time (US & Canada)'
    t = Time.zone.now + 30.day
    date = "#{t.year}"
    16.times do
      AvailableTime.create!(date: , time: day.
    end
  end
end

4・21 ここまで

タイムゾーンと90日後の日付を取得してから30分毎のレコードを自動作成
whenever
railsの TimeWithZoneを使う

10:00 - 18:00
