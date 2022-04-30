
class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    welcome
    while @running
      ask_for_action
      action = gets.chomp.to_i
      looping(action)
    end
  end

  def welcome
    puts '------------------------'
    puts 'WELCOME TO YOUR NOTEBOOK'
    puts '------------------------'
  end

  def ask_for_action
    puts ""
    puts '*** What would you like to do? *** (Please enter a number)'
    puts '1. See all my notes'
    puts '2. Create a new note'
    puts '3. Edit a note'
    puts '4. Delete a note'
    puts '5. Exit'
  end

  def looping(action)
    case action
    when 1 then @controller.display_all_notes
    when 2 then @controller.create
    when 3 then @controller.modify
    when 4 then @controller.delete
    when 5 then stop!
    else
      puts 'Please enter a correct number'
    end
  end

  def stop!
    @running = false
  end

end
