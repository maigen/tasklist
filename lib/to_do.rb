class Task
  def initialize(description)
    @description = description
  end

  def description
    @description
  end
end

class Letter
  def initialize(addressee, body)
    @addressee = addressee
    @body = body
  end

  def addressee
    @addressee
  end

  def body
    @body
  end
end
