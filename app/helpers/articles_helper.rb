module ArticlesHelper
  def format_date_time(date)
    return date.localtime.strftime("%b %e, %Y , %H %M hrs")
  end

  def format_date_time_ago(date)
    time_ago = time_difference(date)
    return date.localtime.strftime("%b %e, %Y , #{time_ago}")
  end

  def time_difference(date)
    #if less than 60 minutes difference, return minutes
    #if more than 60 minutes difference, return hrs
    #if more than 24 hrs, return days
    time_text = ''
    diff_in_minutes = (Time.new - date)/60.0

    if diff_in_minutes > 1440
      time_text = (diff_in_minutes/1440).floor.to_s + " day(s) ago"
    elsif diff_in_minutes > 60
      time_text = (diff_in_minutes/60).floor.to_s + " hr(s) ago"
    else
      time_text = diff_in_minutes.floor.to_s + " min(s) ago"
    end

    return time_text
  end
end
