

module AcceptsComments
  def comments

    @comments ||= []
=begin    #above line equals this code
    if @comments #if comments already set, return that value
      @comments
    else
      @comments = [] #else create new empty array
    end
=end

  end
  def add_comment(comment)
    comments << comment
  end
end

class Clip
  def play
    puts "Playing #{object_id}..."
  end

  def initialize
    @comments = []
  end
end

class Video < Clip
  include AcceptsComments #mix in the comments and add comments method from module
  attr_accessor :resolution
end

class Song < Clip
  include AcceptsComments
  attr_accessor :beats_per_minute
end

class Photo
  include AcceptsComments
  def initialize #Initialize should never be in module as ruby will find initialize in class first and skip the one from module it it exists in both
    @format = 'JPEG'
  end
  def show
    puts "Displaying #{object_id}.."
  end

end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Wierd ending.")
song = Song.new
song.add_comment("Awesome beat.")
photo = Photo.new
photo.add_comment("Beautiful colors.")

p photo.show, video.play
p video.comments, song.comments, photo.comments
