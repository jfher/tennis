require 'sinatra'

get '/' do
  erb :index

end

post '/score' do
 "0 - 0"
end

post '/anota' do
  @aux=15 + params[:puntaje1].to_i;
  @aux.to_s + " - " + "0";
end

post '/anota2' do
  @aux2=15 + params[:puntaje2].to_i;
  "0" + " - " + @aux2.to_s ;
end
