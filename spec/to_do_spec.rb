require 'rspec'
require 'to_do'

describe Task do
  it 'initializes a task with description' do
    test_task = Task.new("clip toenails")
    test_task.should be_an_instance_of Task
  end

  it 'includes a description of what task to complete' do
    test_task = Task.new("walk the giraffe")
    test_task.description.should eq "walk the giraffe"
  end
end
