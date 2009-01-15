require 'lib/numbertwopencil'

foo = NumberTwoPencil.new('0837bf9b58dad3f1d3d64c5a3bfb7e10')

# education_com_getSchools
begin
  #params = { "zip" => "33486" }
  #data = foo.education_com_getSchools params
  #p data
  data = foo.education_com_getSchools "zip" => "33486"
  p data
  #data.each {|item| puts "#{item["schoolname"]}\t#{item["gradelevel"]}\t#{item["schoolid"]}"}
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

begin
  data = foo.education_com_getBrandingData "city" => "Boca Raton", "state" => "FL"
  p data
rescue Exception => e
  p e.message
end

