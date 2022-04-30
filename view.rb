
class View

  def print_all(notebook_array)
    puts ""
    notebook_array.each_with_index do |note_object, index|
      puts "#{index + 1} - [ ] - #{note_object.title} > #{note_object.description}"
    end
  end

  def ask_for_title
    puts ""
    puts 'What is the title of your new note?'
    gets.chomp
  end

  def ask_for_description
    puts ""
    puts 'Please enter a (new) description for your note :'
    gets.chomp
  end

  def ask_for_editing_index
    puts ""
    puts 'Which note description would you like to edit? (Please choose a number)'
    gets.chomp.to_i - 1
  end

  def note_successfully_added
    puts ""
    puts 'Your new note has been successfully added.'
  end

  def note_successfully_modified
    puts ""
    puts 'Your note has been successfully edited.'
  end

  def note_successfully_deleted
    puts ""
    puts 'Your note has been successfully deleted.'
  end

  def ask_for_delete_index
    puts ""
    puts 'What note would you like to delete? (Please choose a number)'
    gets.chomp.to_i - 1
  end
end
