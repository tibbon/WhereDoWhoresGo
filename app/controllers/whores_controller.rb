class WhoresController < ApplicationController
  def index
    @whore = Whore.new
    @whores = Whore.order("id DESC").limit(5)
  end
  
  def create
    @whore = Whore.new(params[:whore])
    if @whore.save
      redirect_to :root
    else
      redirect_to :root
    end
  end
end