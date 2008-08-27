require 'rdigg'
require 'net/http'
require 'cgi'
require 'rexml/document'
require 'rexml/xpath'

# fix for DOS valunerability found in REXML.
require 'rexml-expansion-fix'

class Rdigg

# Remember that all dates sent to Digg must be Unix epoch format. Use to_i to get any date objects to epch.
#put your api key here.  currently, it can be almost anything
@api_key = "http://www.johnyerhot.com"

# If Digg ever changes it's api uri, you'd change it here
@api_url = "http://services.digg.com"

# shortcut to Stories Class
	def stories() @stories = Stories.new end
	  
# shortcut to Story Class
	def story() @story = Story.new end
	  
# shortcut to DiggUser Class
	def user() @user = DiggUser.new end
	  
# shortcut to DiggUsers Class
	def users() @users = DiggUsers.new end
	  
# shortcut to GalleryPhoto Class
	def galleryphoto() @galleryphoto = GalleryPhoto.new end
	  
# shortcut to GalleryPhotos Class
	def galleryphotos() @galleryphotos = GalleryPhotos.new end
	  
# shortcut to Media Class
	def media() @media = Media.new end
	
# shortcut to Info Class
  def info() @info = Info.new end

# Actually send out the request and grab the XML response.
  def self.fetch(path, type, args)
    path = path
    uri = URI.parse(@api_url + '/' + path)
    
    @complete_path = uri.path + self.app_key + self.set_arguments(args)
    
    response = Net::HTTP.start(uri.host, uri.port) do |http|
        http.get @complete_path , 'User-Agent' => @api_key, 'Accept' => 'text/xml'
    end
# returns the response converted from XML to a Ruby hash
    result = REXML::Document.new( response.body.to_s, {:raw => "all"})

    return self.create_array(result, type)
  end
  
private

  def self.app_key
    "?appkey=#{CGI::escape @settings[:api_key]}"
  end

# parse the xml adding attributes as hashes and adding node text as attr_accessors
  def self.create_array(xml, type)
    a = []
    REXML::XPath.each xml, "//#{type}" do |node|
      el  = {"#{type}".to_sym => node.text.to_s}
      node.attributes.each do |b, c|
        el.merge!({b.to_sym => c})
      end
      a << el
    end
    return a
  end
  
  def self.set_arguments(args)
    arguments = ""
     args.each do |p|
        p.each {|key, value| arguments << "&#{key.to_s}=#{CGI::escape value.to_s}"}
        end
    return arguments
  end
  
  
  def self.get_hash_from_response(xml)    
   x =  REXML::Document.new xml
    return x
  end

end