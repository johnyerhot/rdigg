require 'rdigg'

class DiggUser < Rdigg
  
@@type = 'user'

# /users
# finds all users  
  def find_all(*args)
    path = "users"
    Rdigg.fetch(path, @@type, args)
  end
  
# /user/username
# privides information on specific user like icon uri, name, date registered, profile views
  def find(username, *args)
    path = "user/#{username}"
    Rdigg.fetch(path, @@type, args)
  end
  
# /user/username/popular
# list of all a user's popular stories
  def find_popular(username, *args)
    path = "user/#{username}/popular"
    Rdigg.fetch(path, @@type, args)
  end
  
# /user/username/submissions
# list of all a user's submissions
  def find_submissions(username, *args)
    path = "user/#{username}/submissions"
     Rdigg.fetch(path, "story", args)
  end
  
# /user/username/commented
# list of stories user has commented on
  def commented_on(username, *args)
    path = "user/#{username}/commented"
     Rdigg.fetch(path, "comment", args)
  end

# /user/username/commentes
# list of a user's comments
  def find_comments(username, *args)
    path = "user/#{username}/comments"
     Rdigg.fetch(path, "comment", args)
  end

# /user/username/diggs
# list of a user's diggs
  def find_diggs(username, *args)
    path = "user/#{username}/diggs"
     Rdigg.fetch(path, "digg", args)
  end
  
# /user/username/dugg
# list of stories the user has dugg
  def find_dugg(username, *args)
    path = "user/#{username}/dugg"
     Rdigg.fetch(path, "story", args)
  end
  
# /user/username/upcoming
# list of upcoming stories the user has submitted
  def find_upcoming(username, *args)
    path = "user/#{username}/upcoming"
     Rdigg.fetch(path, "story", args)
  end  

# /user/username/fan/fan_name
# true if the user is a fan of the provided fan's username
  def is_a_fan?(username, fan_name, *args)
    path = "user/#{username}/fan/#{fan_name}"
     Rdigg.fetch(path, @@type, args)
  end

# /user/username/fans
# list of a user's fanss
  def find_fans(username, *args)
    path = "user/#{username}/fans"
     Rdigg.fetch(path, @@type, args)
  end
  
# /user/username/friend/friend_name
# true if provided friend name is a fiend of the user
  def find_friend(username, friend_name, *args)
    path = "user/#{username}/friend/#{friend_name}"
     Rdigg.fetch(path, @@type, args)
  end

# /user/username/friends
# list of all a user's friends
  def find_friends(username, *args)
    path = "user/#{username}/friends"
     Rdigg.fetch(path, @@type, args)
  end
  
# /user/username/friends/commented
# list of all a user's friends comments
  def find_friends_comments(username, *args)
    path = "user/#{username}/friends/commented"
     Rdigg.fetch(path, @@type, args)
  end

# /user/username/friends/dugg
# list of all a user's friend's dugg stories
  def find_friends_dugg_stories(username, *args)
    path = "user/#{username}/friends/dugg"
     Rdigg.fetch(path, "story", args)
  end
  
# /user/username/friends/popular
# list of all a user's friends stories that are popular
  def find_friends_popular_stories(username, *args)
    path = "user/#{username}/popular"
     Rdigg.fetch(path, "story", args)
  end
  
# /user/username/friends/submissions
# list of all a user's friends submissions
  def find_friends_submissions(username, *args)
    path = "user/#{username}/friends/submissions"
     Rdigg.fetch(path, "story", args)
  end

# /user/username/friends/upcoming
# list of all a user's friends upcoming stories
  def find_friends(username, *args)
    path = "user/#{username}/friends/upcoming"
     Rdigg.fetch(path, "story", args)
  end

end