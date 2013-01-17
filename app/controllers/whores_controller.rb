class WhoresController < ApplicationController
  caches_action :index
  
  def index
    @whore = Whore.new
    @whores = Whore.order("id DESC").page params[:page]
    @whore_count = Whore.count
  end
  
  def create
    @whore = Whore.new(params[:whore])
    if @whore.save
      expire_action :action => :index
      redirect_to :root
    else
      redirect_to :root
    end
  end
end