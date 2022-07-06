require_relative './classes/app'
require_relative './modules/music_album_functions'

class Main
  include MusicAlbumFunction

  def initialize
    @app = App.new
  end

  def menu
    puts "\n"
    puts 'Please choose an option by entering a number:
    1  - List all books
    2  - List all music albums
    3  - List of games
    4  - List all genres (e.g \'Comedy\', \'Thriller\')
    5  - List all labels (e.g. \'Gift\', \'New\')
    6  - List all authors (e.g. \'Stephen King\')
    7  - Add a book
    8  - Add a music album
    9  - Add a game
    10 - Exit'
  end

  def handle_menu_selection
    user_input = gets.chomp
    case user_input
    when '1'
      @app.list_all_books
    when '2'
      @app.list_all_albums
    when '3'
      @app.list_all_games
    when '4'
      @app.list_all_genres
    when '5'
      @app.list_all_labels
    when '6'
      @app.list_all_authors
    when '7'
      add_new_book_details
    when '8'
      add_new_album_details
    when '9'
      add_new_game_interractively
    when '10'
      puts 'Exiting the application...'
      exit
    else
      puts "\nERROR: Invalid option. Please select a digit from (1-10)\n"
    end
  end

  def run
    user_input = nil

    puts 'Welcome to the catalog of my things'

    while user_input != '10'
      menu
      handle_menu_selection
    end
  end
end

Main.new.run
