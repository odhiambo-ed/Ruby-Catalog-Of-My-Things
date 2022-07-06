require './app'
class MainEntry
  puts 'Welcome to catalog of my things App'

  def self.page
    puts "\n"
    puts 'Please choose an option by entering a number: '

    @content = {
      '1' => 'List all books',
      '2' => 'List all music albums',
      '3' => 'List of games',
      '4' => 'List all genres (e.g \'Comedy\', \'Thriller\')',
      '5' => 'List all labels (e.g. \'Gift\', \'New\')',
      '6' => 'List all authors (e.g. \'Stephen King\')',
      '7' => 'Add a book',
      '8' => 'Add a music album',
      '9' => 'Add a game',
      '10' => 'Exit'
    }

    @content.each do |index, string|
      puts "#{index} - #{string}"
    end

    Integer(gets.chomp)
  end

  method = AppMethod.new

  loop do
    case page
    when 1
      method.list_books
    when 2
      method.list_musics
    when 3
      method.list_games
    when 4
      method.list_authors
    when 5
      method.list_genres
    when 6
      method.list_labels
    when 7
      method.create_book
    when 8
      method.create_music
    when 9
      method.create_game
    when 10
      puts 'Thank you for using the app!'
      exit
    else
      puts 'Choose a number between 1 to 9'
    end
  end
end

def main
  MainEntry.New
end

main
