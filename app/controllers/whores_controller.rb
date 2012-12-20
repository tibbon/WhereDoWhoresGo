class WhoresController < ApplicationController
  def index
    @whore = Whore.new
    @whores = Whore.order("id DESC").limit(5)
    @whore_count = Whore.count
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