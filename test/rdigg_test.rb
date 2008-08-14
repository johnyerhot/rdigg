$:.unshift(File.dirname(__FILE__) + "/../lib/")
require 'test/unit'
require 'rdigg'

class RdiggTest < Test::Unit::TestCase
  
  def setup
    @rdigg = Rdigg.new
  end

# User Class Tests

# /users
# finds all users  
  def test_user_find_all
    assert_not_nil @rdigg.user.find_all(:count => 3)
  end
  
# /user/username
# privides information on specific user like icon uri, name, date registered, profile views
  def test_find
    assert_not_nil @rdigg.user.find("kevinrose")
  end

# /user/username/popular
# list of all a user's popular stories
  def test_user_find_popular
    assert_not_nil @rdigg.user.find_popular("kevinrose")
  end

# /user/username/submissions
# list of all a user's submissions
  def test_user_find_submissions
    assert_not_nil @rdigg.user.find_submissions("kevinrose")
  end

# /user/username/commented
# list of stories user has commented on
  def test_user_commented_on
    assert_not_nil @rdigg.user.commented_on("kevinrose")
  end

# /user/username/commentes
# list of a user's comments
  def test_user_find_comments
    assert_not_nil @rdigg.user.find_comments("kevinrose")
  end

# /user/username/diggs
# list of a user's diggs
  def test_user_find_diggs
    assert_not_nil @rdigg.user.find_diggs("kevinrose")
  end

# /user/username/dugg
# list of stories the user has dugg
  def test_user_find_dugg
    assert_not_nil @rdigg.user.find_dugg("kevinrose")
  end

# /user/username/upcoming
# list of upcoming stories the user has submitted
  def test_user_find_upcoming
    assert_not_nil @rdigg.user.find_upcoming("kevinrose")
  end  

# /user/username/fan/fan_name
# true if the user is a fan of the provided fan's username
  def test_user_is_a_fan?
    assert_not_nil @rdigg.user.is_a_fan?("kevinrose", "obamaforamerica")
  end

# /user/username/fans
# list of a user's fanss
  def test_user_find_fans
    assert_not_nil @rdigg.user.find_fans("kevinrose")
  end

# /user/username/friend/friend_name
# true if provided friend name is a fiend of the user
  def test_user_find_friend
    assert_not_nil @rdigg.user.find("kevinrose", "obamaforamerica")
  end

# /user/username/friends
# list of all a user's friends
  def test_user_find_friends
    assert_not_nil @rdigg.user.find_friends("kevinrose")
  end

# /user/username/friends/commented
# list of all a user's friends comments
  def test_user_find_friends_comments
    assert_not_nil @rdigg.user.find_friends_comments("kevinrose")
  end

# /user/username/friends/dugg
# list of all a user's friend's dugg stories
  def test_user_find_friends_dugg_stories
    assert_not_nil @rdigg.user.find_friends_dugg_stories("kevinrose")
  end

# /user/username/friends/popular
# list of all a user's friends stories that are popular
  def test_user_find_friends_popular_stories
    assert_not_nil @rdigg.user.find_friends_popular_stories("kevinrose")
  end

# /user/username/friends/submissions
# list of all a user's friends submissions
  def test_user_find_friends_submissions
    assert_not_nil @rdigg.user.find_friends_submissions("kevinrose")
  end

# /user/username/friends/upcoming
# list of all a user's friends upcoming stories
  def test_user_find_friends
    assert_not_nil @rdigg.user.find_friends("kevinrose")
  end  

# User Class Tests

# /usera/usernames/comments
# list of comments from provided user_ids
  def test_users_find_users_comments
    assert_not_nil @rdigg.users.find_users_comments("kevinrose,punkrockscks")
  end

# /user/usernames/diggs
# list of diggs from a list of user ids
  def test_users_find_users_diggs
    assert_not_nil @rdigg.users.find_users_diggs("kevinrose,punkrockscks")
  end
  
# GalleryPhoto Class Tests

# /galleryphoto/id
# photo from id
  def test_galleryphoto_find
    assert_not_nil @rdigg.galleryphoto.find("7987168")
  end
  
# /galleryphoto/id/comments
# comments belonging to photo from id
  def test_galleryphoto_find_comments
    assert_not_nil @rdigg.galleryphoto.find_comments("7987168")
  end  
  
# /galleryphoto/story_id/comment/comment_id
# specific comment belonging to photo from id
  def test_galleryphoto_find_comment
    assert_not_nil @rdigg.galleryphoto.find_comment("7987168", "5")
  end  
  
# /galleryphoto/story_id/comment/comment_id/replies
# replies to specific comment
  def test_galleryphoto_find_comment_replies
    assert_not_nil @rdigg.galleryphoto.find_comment_replies("7987168", "5")
  end
  
# GalleryPhotos Class Tests

# /galleryphotos  
# all gallery photos
  def test_galleryphotos_find
    assert_not_nil @rdigg.galleryphotos.find(:count => 3)
  end
  
# /galleryphotos/comments
# all comments from gallery photos
  def test_galleryphotos_find_comments
    assert_not_nil @rdigg.galleryphotos.find_comments
  end
  
# /galleryphotos/ids/comments
# all gallery photos with provide ids
  def test_galleryphotos_find_by_ids(ids, *args)
    assert_not_nil @rdigg.galleryphotos.find_by_ids("7987312,7987350,7987356")
  end
  
# /galleryphotos/ids/comments
# all comments from gallery photos with provide ids
  def test_galleryphotos_find_comments_by_ids
    assert_not_nil @rdigg.galleryphotos.find_comments_by_ids("7987312,7987350,7987356")
  end
  
# Media Class Tests

# /media
# all media
  def test_media_find_all
   assert_not_nil @rdigg.media.find_all
  end

# /media/media_short_name
# media from short name, like images, videos, news etc..
  def test_media_find_by_type
    assert_not_nil @rdigg.media.find_by_type("news")
  end
  
# Stories Class Tests

# /stories
# list of all stories.  Digg will only send back a partial list of stories  
  def test_stories_find_all
   assert_not_nil @rdigg.stories.find_all(:count => 3)
  end

# /stories/{comma-separated list of story ids}
# takes a list of story ids as parameters and those stories
  def test_stories_find_by_ids
    assert_not_nil @rdigg.stories.find_by_ids("7987660,7987659")
  end
  
# /stories/{comma-separated list of story ids}/comments
# list of comments from ids
  def test_stories_find_comments_by_ids
    assert_not_nil @rdigg.stories.find_comments_by_ids("7987660,7987659")
  end

# /stories/{comma-separated list of story ids}/diggs
# list of diggs from ids
  def test_stories_find_diggs_by_ids
    assert_not_nil @rdigg.stories.find_diggs_by_ids("7987660,7987659")
  end

# /stories/upcoming
# list of all upcoming stories
  def test_stories_find_upcoming
    assert_not_nil @rdigg.stories.find_upcoming(:count => 3)
  end

# /stories/upcoming
# list of all upcoming comments  
  def test_stories_find_upcoming_comments
    assert_not_nil @rdigg.stories.find_upcoming_comments(:count => 3)
  end

# /stories/upcoming
# list of all upcoming diggs
   def test_stories_find_upcoming_diggs
    assert_not_nil @rdigg.stories.find_upcoming_diggs(:count => 3)
   end

# /stories/popular
# list of all popular stories
  def test_stories_find_popular
    assert_not_nil @rdigg.stories.find_popular(:count => 3)
  end
  
# /stories/popular/comments
# list of all popular comments
  def test_stories_find_popular_comments
    assert_not_nil @rdigg.stories.find_popular_comments(:count => 3)
  end
  
# /stories/popular/diggs
# list of all popular diggs
  def test_stories_find_popular_diggs
     assert_not_nil @rdigg.stories.find_popular_diggs(:count => 3)
  end

# /stories/hot
# list of all hot stories
  def test_stories_find_hot
    assert_not_nil @rdigg.stories.find_hot(:count => 3)
  end
  
# /stories/top
# list of all top stories  
  def test_stories_find_top
    assert_not_nil @rdigg.stories.find_top(:count => 3)
  end

# /stories/diggs
# list of all diggs
  def test_stories_find_diggs
    assert_not_nil @rdigg.stories.find_diggs(:count => 3)
  end
  
# /stories/container/{container name}
# list of stories in specified container
  def test_stories_find_by_container
    assert_not_nil @rdigg.stories.find_by_container("technology")
  end

# /stories/container/container_name/popular
# list of popular stories inside a container
  def test_stories_find_popular_by_container
    assert_not_nil @rdigg.stories.find_popular_by_container("technology")
  end

# /stories/container/container_name/hot
# list of hot stories inside a container
  def test_stories_find_hot_by_container(container, *args)
    assert_not_nil @rdigg.stories.find_hot_by_container("technology")
  end

# /stories/container/container_name/top
# list of top stories inside a container
  def test_stories_find_top_by_container(container, *args)
    assert_not_nil @rdigg.stories.find_top_by_container("technology")
  end
  
# /stories/container/container_name/upcoming
# list of upcoming stories inside a container
  def test_stories_find_upcoming_by_container(container, *args)
    assert_not_nil @rdigg.stories.find_upcoming_by_container("technology")
  end

# /stories/topic/topic_name
# list of stories inside a topic
  def test_stories_find_by_topic   
    assert_not_nil @rdigg.stories.find_by_topic("apple")
  end
  
# /stories/topic/topic_name/popular
# list of popular stories inside a topic
  def test_stories_find_popular_by_topic
    assert_not_nil @rdigg.stories.find_popular_by_topic("apple")
  end
  
# /stories/topic/topic_name/hot
# list of hot stories inside a topic
  def test_stories_find_hot_by_topic
    assert_not_nil @rdigg.stories.find_hot_by_topic("apple")
  end

# /stories/topic/topic_name/top
# list of top stories insidea a topic
  def test_stories_find_top_by_topic   
    assert_not_nil @rdigg.stories.find_top_by_topic("apple")
  end
  
# /stories/topic/topic_name/upcoming
# list of upcoming stories inside a topic
  def test_stories_find_upcoming_by_topic
    assert_not_nil @rdigg.stories.find_upcoming_by_topic("apple")
  end

# /stories/comments
# list of comments
  def test_stories_find_comments
    assert_not_nil @rdigg.stories.find_comments
  end

# Story Class Tests

# /story/id
# story with specified id
  def find
    assert_not_nil @rdigg.stories.find("7987660")
  end
    
# /story/id/comments
# comments from story with specified id
  def find_comments
    assert_not_nil @rdigg.stories.find_comments("7987660")
  end 
     
# /story/id/diggs
# diggs from story with specified id
  def find_diggs
    assert_not_nil @rdigg.stories.find_diggs("7987660")
  end    
  
# /story/story_id/comments/comment_id
# a story's specific comment
  def find_comment
    assert_not_nil @rdigg.stories.find_comment("7987660", "65434")
  end
  
# /story/story_id/comments/comment_id/replies
# a comment's replies
  def find_comment_replies
    assert_not_nil @rdigg.stories.find_comment_replies("7987660", "65434")
  end  

# /story/story_id/user/user_name/digg
# true if the user has dugg the story
  def user_dugg?
    assert_not_nil @rdigg.stories.user_dugg?("7987660", "kevinrose")
  end
end
