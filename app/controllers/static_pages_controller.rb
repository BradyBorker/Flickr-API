class StaticPagesController < ApplicationController
    def index
        @flickr = Flickr.new ENV['flickr_key'], ENV['flickr_secret']
        @photo_list = @flickr.photos.search user_id: params[:user_id]
    end
end
