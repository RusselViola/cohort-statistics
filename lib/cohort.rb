require 'pry'
class Cohort
  attr_reader :title, :start_date, :end_date, :students, :system_checks

  def initialize(title, start_date, end_date)
    @title = title
    @start_date = start_date
    @end_date = end_date
    @students = []
    @system_checks = []
  end

  def career_day
    @career_day = @end_date + 4
  end

  def enroll(student)
    @students << student
  end

  def assign(system_check)
    @system_checks << system_check
  end

  def roster
    roster_string = ""
    roster_string += "Cohort: #{@title}\n-----------------\n"
    @students.each do |student|
      roster_string += "#{student.name} #{student.email}"
    end
    roster_string
  end

  def system_check_completed?(system_check)
    @students.count == system_check.count
  end


end
