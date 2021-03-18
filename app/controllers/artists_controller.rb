class ArtistsController < ApplicationController


    get '/artists' do #index action
        @artists = Artist.all
        erb :index
    end

    get '/artists/new' do # new action displays form
        erb :new
      end
      
    post '/artists' do # create action
        @artist = Artist.create(name: params[:name])
        redirect to "/artists/#{@artist.id}"
    end 

    get 'artists/:id' do #show action
        @artist = Artist.find(params[:id])
        erb :show
    end

end
