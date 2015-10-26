class VideosController < ApplicationController
  before_action :set_video, only: [:show, :edit, :update, :destroy]
  before_action :set_producers, only: [:new, :edit]
  before_action :set_actors, only: [:new, :edit]

  def index
    if params[:title_filter]
      @videos = Video.where("title LIKE ? ", "#{params[:title_filter]}")
    else
      @videos = Video.all
    end
  end

  def show
  end

  def new
    @video = Video.new
    @producer = Producer.new
  end

  def edit
    @video_actors_ids = @video.actors.map { |actor| actor.id }
    @producer = @video.producer
  end

  def create
    @video = Video.new(video_params)
    @video.actors = params[:actors] ? Actor.find(params[:actors]) : []

    respond_to do |format|
      if @video.save
        format.html { redirect_to @video, notice: 'Video was successfully created.' }
        format.json { render :show, status: :created, location: @video }
      else
        format.html { render :new }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @video.actors = params[:actors] ? Actor.find(params[:actors]) : []
    respond_to do |format|
      if @video.update(video_params)
        format.html { redirect_to @video, notice: 'Video was successfully updated.' }
        format.json { render :show, status: :ok, location: @video }
      else
        format.html { render :edit }
        format.json { render json: @video.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @video.performances.delete_all
    @video.destroy
    respond_to do |format|
      format.html { redirect_to videos_url, notice: 'Video was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_video
      @video = Video.find(params[:id])
    end

    def set_producers
      @producers = Producer.all
    end

    def set_actors
      @actors = Actor.all
    end

    def video_params
      params.require(:video).permit(:title, :description, :producer_id, :actors)
    end
end
