require 'rubygems'
Gem::manage_gems
require 'rake/gempackagetask'

Gem::Specification.new do |s|
    s.name              =   "NumberTwoPencil"
    s.version           =   "0.1.0"
    s.date              =   "2008-09-18"
    s.author            =   "Dan Woolley"
    s.email             =   "danwoolley@gmail.com"
    s.summary           =   "Ruby library for accessing school data using the education.com web services."
    s.files             =   FileList['lib/*.rb', 'test/*', 'sample_data/*', 'demo/demo.rb'].to_a
    s.test_files        =   Dir.glob('test/*.rb')
    s.require_path      =   "lib"
    s.has_rdoc          =   false
    s.extra_rdoc_files  =   ["README"]
end
