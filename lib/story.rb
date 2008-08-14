require 'rdigg'
 
class Story < Rdigg

@@type = "story"

# /story/id
# story with specified id
  def find(id, *args)
    path = "story/#{id}"
    Rdigg.fetch(path, @@type, args)
  end
    
# /story/id/comments
# comments from story with specified id
  def find_comments(id, *args)
    path = "story/#{id}/comments"
    Rdigg.fetch(path, @@type, args)
  end 
     
# /story/id/diggs
# diggs from story with specified id
  def find_diggs(id, *args)
    path = "story/#{id}/diggs"
    Rdigg.fetch(path, @@type, args)
  end    
  
# /story/story_id/comments/comment_id
# a story's specific comment
  def find_comment(story_id, comment_id, *args)
    path = "story/#{story_id}/comments/#{comment_id}"
    Rdigg.fetch(path, @@type, args)
  end
  
# /story/story_id/comments/comment_id/replies
# a comment's replies
  def find_comment_replies(story_id, comment_id, *args)
    path = "story/#{story_id}/comments/#{comment_id}/replies"
    Rdigg.fetch(path, @@type, args)
  end  

# /story/story_id/user/user_name/digg
# true if the user has dugg the story
  def user_dugg?(story_id, username, *args)
    path = "story/#{story_id}/user/#{username}/digg"
    Rdigg.fetch(path, @@type, args)
  end

end