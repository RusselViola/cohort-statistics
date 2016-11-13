class Lesson
  include Grade
  attr_reader :name, :body, :grade

  def initialize(name, body)
    @name = name
    @body = body
  end

  def submittable?
    false
  end

end

class Article < Lesson

end

class Challenge < Lesson
  def submittable?
    true
  end
end

class Video < Lesson

end
