require 'rdigg'

class GalleryPhoto < Rdigg

@@type = 'galleryphoto'

# /galleryphoto/id
# photo from id
  def find(id, *args)
    path = "galleryphoto/#{id}"
     Rdigg.fetch(path, @@type, args)
  end
  
# /galleryphoto/id/comments
# comments belonging to photo from id
  def find_comments(id, *args)
    path = "galleryphoto/#{id}/comments"
     Rdigg.fetch(path, "comment", args)
  end  
  
# /galleryphoto/story_id/comment/comment_id
# specific comment belonging to photo from id
  def find_comment(story_id, comment_id, *args)
    path = "galleryphoto/#{story_id}/comment/#{comment_id}"
     Rdigg.fetch(path, "comment", args)
  end  
  
# /galleryphoto/story_id/comment/comment_id/replies
# replies to specific comment
  def find_comment_replies(story_id, comment_id, *args)
    path = "galleryphoto/#{story_id}/comment/#{comment_id}/replies"
     Rdigg.fetch(path, "comments", args)
  end

end