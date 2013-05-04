class Application < Sinatra::Base
  get '/users/?' do
    User.all.to_json
  end

  get '/users/:id' do
    User.find_by_id(params[:id]).to_json
  end
end
