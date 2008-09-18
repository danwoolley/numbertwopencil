require 'rubygems'
require 'net/http'
require 'uri'
require 'json'    # gem install json

class NumberTwoPencil
  
  @@education_com_webservice_url = 'http://www.education.com/service/service.php'
   
  # foo = NumberTwoPencil.new('your-education_com-api-key)
  def initialize(apikey)
    @apikey = apikey
  end

  # Example: 
  # params = { "zip" => "33486" }
  # data = foo.education_com_getSchools params
  # p data
  def education_com_getSchools(params)
    # Allowed params:  zip, city, state, address, distance, latitude, longitude
    # Returns an array of school data in hashes, or nil, or raises an error

    url = "#{@@education_com_webservice_url}?sn=sf&f=schoolSearch&resf=json&key=#{@apikey}"
    params.each { |key, value| url << "&#{key}=#{value}" }
    
    # The entire JSON data structure
    data = fetch_result url
    if data == nil or data.empty?
      return nil
    elsif Hash === data and data.has_key?("faultCode")
      raise "#{data["faultType"].capitalize} #{data["faultCode"]}: #{data["faultString"].capitalize}"
    else
      # Just the school data as an array of hashes
      return data.map {|item| item["school"]} rescue nil
    end
  end

  # Example: 
  # data = foo.education_com_getStudentDiversity '41160'
  # p data
  def education_com_getStudentDiversity(schoolid)
    # Returns a hash of diversity data, or nil, or raises an error

    url = "#{@@education_com_webservice_url}?sn=sf&f=getStudentDiversity&resf=json&key=#{@apikey}&schoolid=#{schoolid}"
    
    # The entire JSON data structure
    data = fetch_result url
    if data == nil or data.empty?
      return nil
    elsif Hash === data and data.has_key?("faultCode")
      raise "#{data["faultType"].capitalize} #{data["faultCode"]}: #{data["faultString"].capitalize}"
    else
      return data
    end
  end

  # Example: 
  # data = foo.education_com_getTestScores '41160'
  # p data
  def education_com_getTestScores(schoolid)
    # Returns a hash of test score data, or nil, or raises an error

    url = "#{@@education_com_webservice_url}?sn=sf&f=getTestScores&resf=json&key=#{@apikey}&schoolid=#{schoolid}"
    
    # The entire JSON data structure
    data = fetch_result url
    if data == nil or data.empty?
      return nil
    elsif Hash === data and data.has_key?("faultCode")
      raise "#{data["faultType"].capitalize} #{data["faultCode"]}: #{data["faultString"].capitalize}"
    else
      return data
    end
  end

  # Example: 
  # data = foo.education_com_getTeacherStats '41160'
  # p data
  def education_com_getTeacherStats(schoolid)
    # Returns an array teacher stat hash data, or nil, or raises an error

    url = "#{@@education_com_webservice_url}?sn=sf&f=getTeacherStats&resf=json&key=#{@apikey}&schoolid=#{schoolid}"
    
    # The entire JSON data structure
    data = fetch_result url
    if data == nil or data.empty?
      return nil
    elsif Hash === data and data.has_key?("faultCode")
      raise "#{data["faultType"].capitalize} #{data["faultCode"]}: #{data["faultString"].capitalize}"
    else
      return data
    end
  end

  # Example: 
  # data = foo.education_com_getSchoolReviews '41160'
  # p data
  def education_com_getSchoolReviews(schoolid)
    # Returns a hash of review data, or nil, or raises an error

    url = "#{@@education_com_webservice_url}?sn=sf&f=getReviews&resf=json&key=#{@apikey}&schoolid=#{schoolid}"
    
    # The entire JSON data structure
    data = fetch_result url
    if data == nil or data.empty?
      return nil
    elsif Hash === data and data.has_key?("faultCode")
      raise "#{data["faultType"].capitalize} #{data["faultCode"]}: #{data["faultString"].capitalize}"
    else
      return data
    end
  end

private

  def fetch_result(url)
    puts url
    #data = File.read("sample_data/schoolSearch.json")
    data = Net::HTTP.get_response(URI.parse(URI.escape(url))).body
    return JSON.parse(data) rescue nil
  end
   
end
