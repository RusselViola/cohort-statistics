class SystemCheckSubmission
  include Grade
  attr_reader :solution, :student, :grade

  def initialize(solution = "", student)
    @solution = solution
    @student = student
  end

  def assign_grade(grade)
    if grade < 0 || grade > 3
      raise InvalidGradeError
    else
      @grade = grade.to_f
    end
  end

  def graded?
    !@grade.nil?
  end

end

class InvalidGradeError < StandardError
end
