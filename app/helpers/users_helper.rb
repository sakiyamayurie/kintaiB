module UsersHelper
  
  # 勤怠基本情報を指定のフォーマットで返します。
  def format_basic_info(time)
    format("%.2f", ((time.hour * 60) + time.min) / 60.0)
  end 
  
  def week_color(day)
    if day.worked_on.wday == 0
      "text-danger"
    elsif day.worked_on.wday == 6
      "text-info"
    end
  end
end
