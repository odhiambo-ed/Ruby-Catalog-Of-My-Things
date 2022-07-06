require_relative './music_album'
require_relative './genre'

class App

  def initialize   
    @albums = []
    @genres = []   
  end  
  
  def add_album(album_name, publish_date, genre_name, on_spotify)
    new_album_instance = MusicAlbum.new(on_spotify, album_name, publish_date)
    new_genre_instance = Genre.new(genre_name)
    new_album_instance.genre = new_genre_instance
 
    hash = {
      'album_name' => new_album_instance.name,
      'publish_date' => new_album_instance.publish_date,
      'on_spotify?' => new_album_instance.on_spotify,
      'genre' => new_genre_instance.name
    }

    genre_hash = {
      'genre_name' => new_genre_instance.name
    }

    @albums << hash
    @genres << genre_hash
  end

   def list_all_albums
    puts "\nNote: No albums available." if @albums.empty?

    puts "\n"
    puts "ALL ALBUMS"
    puts "Genre \t\t| On spotify? \t| Album Name \t\t| Publish Date"

    @albums.each do |album|
      puts "#{album['genre'].to_s.strip} \t\t| #{album['on_spotify?'].to_s.strip.rjust(10)} \t| #{album['album_name'].to_s.strip.rjust(10)} \t\t| #{album['publish_date'].to_s.strip.rjust(10)}"

    end
  end

  def list_all_genres
    puts "\nNote: No genres available." if @genres.empty?

    puts "\n"
    puts "ALL GENRES"
    puts "Name"
    puts "\n"
    @genres.each do |genre|
      puts genre['genre_name'].to_s.strip
      puts "\n"
    end
  end
end
