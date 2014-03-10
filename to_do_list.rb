require './lib/to_do'

@list = []

def main_menu
  puts "Enter 'Q' to add a task or 'H' to list all of your tasks. Enter 'zebra' to exit. Enter '.' to reach the secret menu."
  main_choice = gets.chomp
  if main_choice == 'Q'
    add_task
  elsif main_choice == 'q'
    puts "Just had to be different, eh?\n\n"
    puts "Alright, I'll allow it\n\n"
    add_task
  elsif main_choice == 'H'
    list_tasks
  elsif main_choice == 'h'
    puts "Brrrrrrrrrrnmp. That's a french word that means 'WRONG'\n\n"
    main_menu
  elsif main_choice == 'zebra'
    puts "Beat it, nerd."
  elsif main_choice == 'z'
    puts "Fat fingers, huh?\n\n"
    main_menu
  elsif main_choice == 'f'
    puts "Five Gooooooldeeeeen Riiiiiings"
    main_menu
  elsif main_choice == 'l'
    puts "So you want to write a letter?\n\n"
    puts "Sounds like a plan. Get crackin':\n\n"
    write_letter
  elsif main_choice == 'L'
    list_letters
  elsif main_choice == '.'
    puts "Possible entries include: Q, q, H, h, zebra, z, f, l, L and happy."
    main_menu
  elsif main_choice == 'happy'
    puts "I was just kidding. That doesn't do anything."
    main_menu
  else
    puts "You get the HECK OUT OF HERE!!!!!!"
    main_menu
  end
end

def add_task
  puts "Describe your tasks. I.E. wash the jet ski, trim your beard, etc."
  user_description = gets.chomp
  @list << Task.new(user_description)
  puts "Computing...... blurb....\n\n\n\n\n\n\n"
  puts "Task added.\n\n"
  main_menu
end

def list_tasks
  puts "Here are your tasks - get to work, jerk!\n"
  @list.each do |task|
    puts "- #{task.description}\n"
  end
  main_menu
end

@letters = []
def write_letter
  puts "Please enter the name of the person to whom your letter will be addressed."
  user_addressee = gets.chomp
  puts "Please enter the body of the letter."
  user_body = gets.chomp
  new_letter = Letter.new(user_addressee, user_body)
  puts "Please press 'P' to print your new letter."
  @letters << new_letter
  choice = gets.chomp
  if choice == 'P'
    puts "Just kidding, that function doesn't work."
    main_menu
  else
    puts "Press 'M' for main menu or 'L' to see your letters."
    choice = gets.chomp
    if choice == 'M'
    main_menu
    elsif choice == 'L'
    list_letters
    else
    puts "Rejected for non-compliance."
    main_menu
    end
  end
end

def list_letters
  puts "Here are your letters!\n"
  @letters.each do |letter|
    puts "- #{letter.addressee}\n"
    puts "#{letter.body}\n\n"
  end
  main_menu
end


main_menu
