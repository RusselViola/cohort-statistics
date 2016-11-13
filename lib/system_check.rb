require_relative "exceeds"
class SystemCheck < Lesson
  attr_reader :submissions

  def initialize(name, due)
    @name = name
    @due = due
    @submissions = []
  end

  def submittable?
    true
  end

  def add_submission(submission)
    @submissions << submission
  end

  def average_grade
    sum = 0.0
    @submissions.each do |submission|
      if submission.graded?
        sum += submission.grade
      end
    end
    average = (sum / @submissions.count)
    average
  end

  def did_student_complete_system_check?(student_name)
    @submissions.each do |submission|
      if submission.student == student_name
        return true
      end
    end
   false
  end

  def not_nil?
    !nil?
  end

end
