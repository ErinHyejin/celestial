get '/' do
  erb :index
end

get '/meteorites' do
	@meteorites = Meteorite.where('id < ?', 3000)
	content_type :json
	{meteorites: @meteorites}.to_json
end
