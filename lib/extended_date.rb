require 'date'

class Date
  def self.month_first(dat, day)
    parsed_date = Date.parse(dat.to_s)
    parsed_date.month_first(day)
  end

  def beginning_of_month
    Date.parse(self.strftime("%Y-%m-1"))
  end

  def month_first(day)
    req_wday = case 
      when ["sunday", "0"].include?(day.to_s.downcase) then 0
      when ["monday", "1"].include?(day.to_s.downcase) then 1
      when ["tuesday", "2"].include?(day.to_s.downcase) then 2
      when ["wednesday", "3"].include?(day.to_s.downcase) then 3
      when ["thursday", "4"].include?(day.to_s.downcase) then 4
      when ["friday", "5"].include?(day.to_s.downcase) then 5
      when ["saturday", "6"].include?(day.to_s.downcase) then 6
      else "Unknown"
    end

    if req_wday == "Unknown"
      result = "Invalid Input"
    else
      req_days = (req_wday - beginning_of_month.wday)
      req_days = ((req_days>=0) ? req_days : (7+req_days))
      result = beginning_of_month + req_days
    end
  end
end
