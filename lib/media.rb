require 'rdigg'

class Media < Rdigg

@@type = 'medium'

# /media
# all media
  def find_all(*args)
    path = "media"
     Rdigg.fetch(path, @@type, args)
  end

# /media/media_short_name
# media from short name, like images, videos, news etc..
  def find_by_type(medium, *args)
    path = "medium/#{medium}"
     Rdigg.fetch(path, @@type, args)
  end
end