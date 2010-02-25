
require 'sinatra/base'

module Sinatra
  module Cache
    VERSION = '0.3.0' unless const_defined?(:VERSION)
    def self.version; "Sinatra::Cache v#{VERSION}"; end
  end #/ Cache
end #/ Sinatra

%w(templates output cache/helpers).each do |lib| 
  require "sinatra/#{lib}" 
end
