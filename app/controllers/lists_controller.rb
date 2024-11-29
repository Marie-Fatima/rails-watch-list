class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list =List.new
  end

  def create
    @list =List.create(list_params)
  end


  def show
    @list = List.find_by(id: params[:id])
    @bookmarks = Bookmark.select { |bookmark| bookmark.list_id == @list.id}
    if !@bookmarks.empty?
      @movies = []
      @bookmarks.each do |b|
        @movies << Movie.select { |movie| movie.id == b.movie_id}
      end
    else
      @movies = []
      @bookmarks.each do |b|
        @movies << Movie.select { |movie| movie.id == b.movie_id}
      end
    end
  end
  private

  def list_params
    params.require(:list).permit(:name, :photo)

  end
end
