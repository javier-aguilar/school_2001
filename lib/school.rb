class School

  attr_reader :start_time, :hours_in_school_day, :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student_name)
    @student_names << student_name
  end

  def end_time
    #Time.new(@start_time[0] + @hours_in_school_day)
    num = @start_time.split(':')[0].to_i + @hours_in_school_day
    if(num > 24)
      num = num - 24
    end
      "#{num}:00"
  end

  def is_full_time?
    @hours_in_school_day >= 7 ? true : false
  end

  def standard_student_names
    @student_names.map { |value| value.capitalize}
  end

  def convert_end_time_to_clock_time
    if(end_time.split(':')[0].to_i > 12)
     "#{end_time.split(':')[0].to_i - 12}:00"
    else
      end_time
    end
  end
end
