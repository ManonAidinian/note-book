
require_relative 'note.rb'
require_relative 'view.rb'

class Controller
  def initialize(notebook)
    @notebook = notebook
    @view = View.new
  end

  def display_all_notes
    array_of_note_objects = @notebook.all
    @view.print_all(array_of_note_objects)
  end

  def create
    new_note_title = @view.ask_for_title
    new_note_description = @view.ask_for_description
    new_note = Note.new(new_note_title, new_note_description)
    @notebook.add(new_note)
    @view.note_successfully_added
  end

  def modify
    idx = @view.ask_for_editing_index
    new_desc = @view.ask_for_description
    @notebook.edit(new_desc, idx)
    @view.note_successfully_modified
  end

  def delete
    index = @view.ask_for_delete_index
    @notebook.remove(index)
    @view.note_successfully_deleted
  end
end
