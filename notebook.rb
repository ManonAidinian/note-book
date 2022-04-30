
require 'csv'
require_relative 'note.rb'

class Notebook
  def initialize(filepath)
    @notebook_array = []
    @filepath = filepath
    load_csv
  end

  def all
    @notebook_array
  end

  def add(new_note)
    @notebook_array << new_note
    store_csv
  end

  def remove(index)
    @notebook_array.delete_at(index)
    store_csv
  end

  private

  def load_csv
    CSV.foreach(@filepath) do |row|
      title = row[0]
      description = row[1]
      @notebook_array << Note.new(title, description)
    end
  end

  def store_csv
    CSV.open(@filepath, "wb") do |csv|
    @notebook_array.each do |note|
      csv << [note.title, note.description]
    end
  end
  end

end
