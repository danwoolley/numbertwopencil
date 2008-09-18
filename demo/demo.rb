require 'lib/numbertwopencil'

foo = NumberTwoPencil.new('your_education_com_api_key')

# education_com_getSchools
begin
  params = { "zip" => "33486" }
  data = foo.education_com_getSchools params
  #p data
  data.each {|item| puts "#{item["schoolname"]}\t#{item["gradelevel"]}\t#{item["schoolid"]}"}
rescue Exception => e
  p e.message
end

# education_com_getStudentDiversity
begin
  data = foo.education_com_getStudentDiversity '41160'
  p data
rescue Exception => e
  p e.message
end

# education_com_getTestScores
begin
  data = foo.education_com_getTestScores '41160'
  p data
rescue Exception => e
  p e.message
end

# education_com_getTeacherStats
begin
  data = foo.education_com_getTeacherStats '41160'
  p data
rescue Exception => e
  p e.message
end

# education_com_getSchoolReviews
begin
  data = foo.education_com_getSchoolReviews '41160'
  p data
rescue Exception => e
  p e.message
end

