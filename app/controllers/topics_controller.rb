class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end

  def new
   @topic = Topic.new
  end

  def create
    @topic = current_user.topics.new(topic_params)

    if @topic.save
      redirect_to topics_path, success ="投稿に成功しました"
    else
      flash.now[:danger] = '投稿に失敗しました'
      render :new
    end
  end

  private
    def topics_params
      params.require(:topics).permit(:image,:description)
    end
end
