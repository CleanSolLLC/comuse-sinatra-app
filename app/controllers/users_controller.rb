class UsersController < ApplicationController

  get '/login' do 

  	erb :login
  end

  post '/login' do
  	#find the user
  	#if user is found and authenticated
  	#redirect to index or some other show page

  	#else redirect back to the login page

  	user = User.find_by(email: params[:email])

  	if user && user.authenticate(params[:password])
  		#add key /value pair to the sessions hash
  		session[:user_id] = user.id
  		redirect "/user/#{user.id}"
  	else
  		redirect '/login'
  	end

  end

  get '/user/:id' do
  	"User's show page"
  end

end