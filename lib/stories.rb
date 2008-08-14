require 'rdigg'
class Stories < Rdigg
  
@@type = "story"

# /stories
# list of all stories.  Digg will only send back a partial list of stories  
  def find_all(*args)
    path = "stories"
     Rdigg.fetch(path, @@type, args)
  end

# /stories/{comma-separated list of story ids}
# takes a list of story ids as parameters and those stories
  def find_by_ids(ids, *args)
    path = "stories/#{ids.to_s}"
     Rdigg.fetch(path, @@type, args)
  end
  
# /stories/{comma-separated list of story ids}/comments
# list of comments from ids
  def find_comments_by_ids(ids,*args)
    path = "stories/#{ids.to_s}/comments"
     Rdigg.fetch(path, 'comment', args)
  end

# /stories/{comma-separated list of story ids}/diggs
# list of diggs from ids
  def find_diggs_by_ids(ids, *args)
    path = "stories/#{ids.to_s}/diggs"
     Rdigg.fetch(path, 'digg', args)
  end

# /stories/upcoming
# list of all upcoming stories
  def find_upcoming(*args)
    path = "stories/upcoming"
     Rdigg.fetch(path, @@type, args)
  end

# /stories/upcoming
# list of all upcoming comments  
  def find_upcoming_comments(*args)
    path = "stories/upcoming/comments"
     Rdigg.fetch(path, 'comments', args)
  end

# /stories/upcoming
# list of all upcoming diggs
   def find_upcoming_diggs(*args)
     path = "stories/upcoming/diggs"
     Rdigg.fetch(path, 'diggs', args)
   end

# /stories/popular
# list of all popular stories
  def find_popular(*args)
    path = "stories/popular"
    Rdigg.fetch(path, @@type, args)
  end
  
# /stories/popular/comments
# list of all popular comments
  def find_popular_comments(*args)
    path = "stories/popular/comments"
    Rdigg.fetch(path, 'comments', args)
  end
  
# /stories/popular/diggs
# list of all popular diggs
  def find_popular_diggs(*args)
    path = "stories/popular/diggs"
    Rdigg.fetch(path, 'diggs', args)
  end

# /stories/hot
# list of all hot stories
  def find_hot(*args)
    path = "stories/hot"
    Rdigg.fetch(path, @@type, args)
  end
  
# /stories/top
# list of all top stories  
  def find_top(*args)
    path = "stories/top"
    Rdigg.fetch(path, @@type, args)
  end

# /stories/diggs
# list of all diggs
  def find_diggs(*args)
    path = "stories/diggs"
    Rdigg.fetch(path, @@type, args)
  end
  
# /stories/container/{container name}
# list of stories in specified container
  def find_by_container(container, *args)
    path = "/stories/container/#{container}"
    Rdigg.fetch(path, @@type, args)
  end

# /stories/container/container_name/popular
# list of popular stories inside a container
  def find_popular_by_container(container, *args)
    path = "/stories/container/#{container}/popular"
    Rdigg.fetch(path, @@type, args)
  end

# /stories/container/container_name/hot
# list of hot stories inside a container
  def find_hot_by_container(container, *args)
    path = "/stories/container/#{container}/hot"
    Rdigg.fetch(path, @@type, args)
  end

# /stories/container/container_name/top
# list of top stories inside a container
  def find_top_by_container(container, *args)
    path = "/stories/container/#{container}/top"
    Rdigg.fetch(path, @@type, args)
  end
  
# /stories/container/container_name/upcoming
# list of upcoming stories inside a container
  def find_upcoming_by_container(container, *args)
    path = "/stories/container/#{container}/upcoming"
    Rdigg.fetch(path, @@type, args)
  end

# /stories/topic/topic_name
# list of stories inside a topic
  def find_by_topic(topic, *args)    
    path = "/stories/topic/#{topic}"
    Rdigg.fetch(path, @@type, args)
  end
  
# /stories/topic/topic_name/popular
# list of popular stories inside a topic
  def find_popular_by_topic(topic, *args)
    path = "/stories/topic/#{topic}/popular"
    Rdigg.fetch(path, @@type, args)
  end
  
# /stories/topic/topic_name/hot
# list of hot stories inside a topic
  def find_hot_by_topic(topic, *args)
    path = "/stories/topic/#{topic}/hot"
    Rdigg.fetch(path, @@type, args)
  end

# /stories/topic/topic_name/top
# list of top stories insidea a topic
  def find_top_by_topic(topic, *args)    
    path = "/stories/topic/#{topic}/top"
    Rdigg.fetch(path, @@type, args)
  end
  
# /stories/topic/topic_name/upcoming
# list of upcoming stories inside a topic
  def find_upcoming_by_topic(topic, *args)
   path = "/stories/topic/#{topic}/upcoming"
   Rdigg.fetch(path, @@type, args)
  end

# /stories/comments
# list of comments
  def find_comments(*args)
    path = "stories/comments"
    Rdigg.fetch(path, 'comment', args)
  end


end