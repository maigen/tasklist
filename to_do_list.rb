require './lib/task'
require './lib/letter'
require './lib/list'

@list = []
@letters = []
@chore_lists = []
@current_list

def main_menu

  puts "Enter 'N' to add a new list 'H' to list all of your lists. Enter 'zebra' to exit. Enter '.' to reach the secret menu."
  main_choice = gets.chomp
  case main_choice
  when 'N', 'n'
    add_list
  when 'H'
    list_lists
  when 'h'
    puts "Brrrrrrrrrrnmp. That's a french word that means 'WRONG'\n\n"
    main_menu
  when 'zebra'
    puts "Beat it, nerd."
  when 'z'
    puts "Fat fingers, huh?\n\n"
    main_menu
  when 'f'
    puts "Five Gooooooldeeeeen Riiiiiings"
    main_menu
  when 'l'
    puts "So you want to write a letter?\n\n"
    puts "Sounds like a plan. Get crackin':\n\n"
    write_letter
  when 'L'
    list_letters
  when '.'
    puts "Possible entries include: N, n, H, h, zebra, z, f, l, L and happy."
    main_menu
  when 'happy'
    puts "I was just kidding. That doesn't do anything."
    main_menu
  else
    puts "You get the HECK OUT OF HERE!!!!!!"
  end
end

def list_lists
  puts "Please enter the number of the list you would like to examine.\n"
    @chore_lists.each_with_index do |list, index|
      puts "#{index+1}. #{list.description}\n"
    end
  list_number = gets.chomp.to_i
  puts "Enter 'a' to create a new task for this list.\n"
  puts "Enter 'v' to exit to the main menu.\n"
  puts "Enter 'd' to delete a task on this list.\n"
  puts "Enter 's' to view tasks on this list.\n"
  list_choice = gets.chomp
  case list_choice
  when 'a', 'A'
    puts "What would you like to call your new task?"
    task_name = gets.chomp
    task_to_add = Task.new(task_name)
    @current_list.new_task(task_to_add)
    main_menu
  when 'v', 'V'
    main_menu
  when 'd', 'D'
    puts "Enter the number to delete it from the list.\n"
    @current_list.items.each_with_index do |task, index|
    puts "#{index+1}. #{task.description}\n"
  end
    delete_number = gets.chomp.to_i
    @current_list.items.delete_at(delete_number - 1)
    list_tasks
  when 's', 'S'
    list_tasks
  else
    puts "Silly rabbit."
    main_menu
  end
end

def add_list
  puts "You want to create a new task list? Enter the name here:"
  user_entry = gets.chomp
  @current_list = List.new(user_entry)
  @chore_lists << @current_list
  puts "Creating your new list. Please wait.\n\n"
  puts "List created. Would you like to add a new task? Type 'y' or press any key."
  newtask = gets.chomp
  if newtask == 'y'
    puts "What would you like to call your new task?"
    task_name = gets.chomp
    task_to_add = Task.new(task_name)
    @current_list.new_task(task_to_add)
    main_menu
  else
    main_menu
  end
end

def new_task(task)

  @current_list.new_task(task)
  @current_list << Task.new(name)
  puts "Computing...... blurb....\n\n\n\n\n"
  puts "Task added.\n\n"
  main_menu
end

def list_tasks
  puts "Here are your tasks - get to work, jerk!\n"
  @current_list.items.each_with_index do |task, index|
    puts "#{index+1}. #{task.description}\n"
  end
  puts "Have you completed a task? Enter 'y' if yes or 'lazy' if you haven't finished any tasks."
  choice = gets.chomp
  if choice == "lazy"
    puts "You're wasting your life, chum\n\n"
  elsif choice == 'y'
    puts "Enter the number to delete it from the list.\n"
    number = gets.chomp.to_i
    @current_list.delete_at(number - 1)
    list_tasks
  else
    main_menu
  end
end
























# def write_letter
#   puts "Please enter the name of the person to whom your letter will be addressed."
#   user_addressee = gets.chomp
#   puts "Please enter the body of the letter."
#   user_body = gets.chomp
#   new_letter = Letter.new(user_addressee, user_body)
#   puts "Please press 'P' to print your new letter."
#   @letters << new_letter
#   choice = gets.chomp
#   if choice == 'P'
#     puts "Just kidding, that function doesn't work."
#     main_menu
#   else
#     puts "Press 'M' for main menu or 'L' to see your letters."
#     choice = gets.chomp
#     if choice == 'M'
#       main_menu
#     elsif choice == 'L'
#       list_letters
#     else
#       puts "Rejected for non-compliance."
#       main_menu
#     end
#   end
# end

# def list_letters
#   puts "Here are your letters!\n"
#   @letters.each do |letter|
#     puts "- #{letter.addressee}\n"
#     puts "#{letter.body}\n\n"
#   end
#   main_menu
# end

main_menu


