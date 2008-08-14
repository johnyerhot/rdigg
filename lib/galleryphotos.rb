require "rdigg"

class GalleryPhotos < Rdigg
  
@@type = "galleryphoto"

# /galleryphotos  
# all gallery photos
  def find(*args)
    path = "galleryphotos"
     Rdigg.fetch(path, @@type, args)
  end
  
# /galleryphotos/comments
# all comments from gallery photos
  def find_comments(*args)
    path = 'galleryphotos/comments'
     Rdigg.fetch(path, "comment", args)
  end
  
# /galleryphotos/ids/comments
# all gallery photos with provide ids
  def find_by_ids(ids, *args)
    path = "galleryphotos/#{ids}"
     Rdigg.fetch(path, @@type, args)
  end
  
# /galleryphotos/ids/comments
# all comments from gallery photos with provide ids
  def find_comments_by_ids(ids, *args)
    path = "galleryphotos/#{ids}/comments"
     Rdigg.fetch(path, "comment", args)
  end  
  
end