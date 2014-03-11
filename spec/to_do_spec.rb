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

describe List do
  it 'initializes a list with description' do
    test_list = List.new("home chores")
    test_list.should be_an_instance_of List
  end
  it 'is intialized with an empty array' do
    test_list = List.new([])
    test_list.tasks.should eq []
  end
end

describe Letter do
  it 'initializes a letter' do
    test_letter = Letter.new("addressee", "body")
    test_letter.should be_an_instance_of Letter
  end

  it 'is initialized with an an addressee' do
    test_letter = Letter.new("Mark", "Hey, how are you?")
    test_letter.addressee.should eq "Mark"
  end

  it 'is initialized with a body of text' do
    test_letter = Letter.new("Mark", "Hey, how are you?")
    test_letter.body.should eq "Hey, how are you?"
  end
end


