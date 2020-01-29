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
end
