require './game/game_controller'

class AppMethod
  attr_accessor :game_controller

  def initialize
    @game_controller = GameController.new
  end

  def create_book()
    puts 'create book'
  end

  def create_music()
    puts 'create music'
  end

  def games
    puts "
    1. List all games
    2. List all authors
    3. Add new game
    "
    choice = gets.chomp
    case choice
    when '1'
      @game_controller.list_games
    when '2'
      @game_controller.list_authors
    when '3'
      @game_controller.add_game
    else
      puts 'Invalid choice'
      games
    end
  end

  def list_books()
    puts 'book list is empty'
  end

  def list_musics()
    puts 'music list is empty'
  end

  def list_games()
    puts 'game list is empty'
  end

  def list_authors()
    puts 'author list is empty'
  end

  def list_genres()
    puts 'genre list is empty'
  end

  def list_labels()
    puts 'label list is empty'
  end
end
