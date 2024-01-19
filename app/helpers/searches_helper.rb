module SearchesHelper
  # 現在の曜日に基づいて、引数に渡された場所の営業時間に関する文字列を生成する処理
  def format_opening_hours(place)
    current_day_index = Time.zone.now.wday
    weekday_descriptions = place['currentOpeningHours']['weekdayDescriptions']
    weekday_descriptions[current_day_index - 1] 
  end
end

module SearchesHelper
  # 現在の曜日に基づいて、引数に渡された場所の営業時間に関する文字列を生成する処理
  def format_opening_hours(place)
    current_day_index = Time.zone.now.wday
    weekday_descriptions = place['currentOpeningHours']['weekdayDescriptions']
    
    opening_hours_for_today = weekday_descriptions[current_day_index - 1] # 曜日に対応する営業時間の文字列を取得。Time.zone.now.wdayの戻り値が示す曜日と、Google Places APIからレスポンスとして受け取る営業時間の配列が示す曜日のインデックスに差があるため、調整している。

    # 曜日に対応する営業時間の文字列から、曜日を指す文字列のみを取得
    day_of_week = opening_hours_for_today.split(':').first

    # 表示したい文字列を組み立てる
    "営業時間 (#{day_of_week}) : #{opening_hours_for_today.split(':')[1].strip}"
  end
end