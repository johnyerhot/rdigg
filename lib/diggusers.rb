require 'rdigg'

class DiggUsers
  
# /usera/usernames/comments
# list of comments from provided user_ids
  def find_users_comments(usernames, *args)
    path = "users/#{usernames}/comments"
     Rdigg.fetch(path, "comment", args)
  end

# /user/usernames/diggs
# list of diggs from a list of user ids
  def find_users_diggs(usernames, *args)
    path = "users/#{usernames}/diggs"
     Rdigg.fetch(path, "digg", args)
  end

end