require 'rubygems'
require 'sinatra'
require 'haml'

set :haml, :format => :html5
get '/' do	
 t0=Time.now
 t1=Time.local(2012,10,01)
 sec0=t1-t0
 sec1=sec0.round
 @dni=(((sec1/60)/60))/24
 haml :index
end
