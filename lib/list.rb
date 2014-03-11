class List
  def initialize(list_description)
    @list_description = list_description
    @items = []
  end

  def add_list
    @add_list = add_list
  end

  def new_task(task)
    @items << task
  end

  def items
    @items
  end

  def description
    @list_description
  end
end
