module ArticlesHelper
  def format_date_time(date)
    return date.strftime("%b %e, %Y @ %H%M hrs")
  end
end
