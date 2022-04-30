require_relative 'notebook'
require_relative 'controller'
require_relative 'router'

csv_file_path = File.join(__dir__, 'manon_s_notes.csv')

# csv_file_path = "/Users/manonmarypo/code/ManonAidinian/WIP/Note-Book/manon_s_notes.csv"

manon_notebook = Notebook.new(csv_file_path)
manon_nb_controller = Controller.new(manon_notebook)
manon_nb_router = Router.new(manon_nb_controller)

manon_nb_router.run
