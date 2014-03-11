class Task
  def initialize(description)
    @description = description
  end

  def description
    @description
  end
end

class List
  def initialize(list_description)
    @list_description = list_description
    @items = []
  end

  def new_task
    @new_task = new_task
  end

  def items
    @items
  end

  def description
    @list_description
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
