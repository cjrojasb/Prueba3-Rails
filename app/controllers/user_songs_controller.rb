class UserSongsController < ApplicationController
  def index
    @songs = current_user.songs
  end

  def create
    @song = Song.find(params[:song_id])
    current_user.songs << @song
    redirect_to root_path, notice: "La canción #{@song.name} se agregó correctamente!"
  end

  def destroy
    @song = UserSong.find(params[:id])
    @song.destroy
    redirect_to user_songs_index_path, notice: "La canción #{@song.name} se eliminó correctamente"
  end
end
