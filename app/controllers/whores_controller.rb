class WhoresController < ApplicationController
  def index
    @whores = Whore.all
  end
  
  def create
    @whore = Whore.new(params[:whore])
    if @whore.save
      redirect :index
    else
      redirect :index
    end
  end
end