module ArticlesHelper
  def format_date_time(date)
    minutes_since = time_difference(date).floor
    return date.localtime.strftime("%b %e, %Y @ #{minutes_since} minutes ago")
  end

  def time_difference(date)
    return ((Time.new - date)/60)
  end
end
