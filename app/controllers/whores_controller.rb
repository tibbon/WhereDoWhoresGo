class WhoresController < ApplicationController
  def index
    @whores = Whores.all
  end
end