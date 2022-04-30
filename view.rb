
class View

  def print_all(notebook_array)
    notebook_array.each_with_index do |note_object, index|
      puts "#{index + 1} - [ ] - #{note_object.title} > #{note_object.description}"
    end
  end

  def ask_for_title
    puts 'What is the title of your new note?'
    gets.chomp
  end

  def ask_for_description
    puts 'Please enter a description for your new note :'
    gets.chomp
  end

  def note_successfully_added
    puts 'Your new note has been successfully added:'
  end

  def note_successfully_deleted
    puts 'Your note has been successfully deleted:'
  end

  def ask_for_delete_index
    puts 'What note would you like to delete? (Please choose a number) :'
    gets.chomp.to_i - 1
  end
end
