require './game/game_controller'

class AppMethod
  attr_accessor :game_controller

  def create_book()
    puts 'create book'
  end

  def create_music()
    puts 'create music'
  end

  def create_game()
    puts 'create game'
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
