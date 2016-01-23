class OpinionsController < ApplicationController
  respond_to :html

  def create
    @opinion = Opinion.create(params_opinion)
    if @opinion.save
      redirect_to root_path, :notice => "Your post was saved"
    else
      redirect_to root, :alert => "Your post was not saved"
    end

  end

  def new
    @opinion = Opinion.new
  end

 private
  
  def params_opinion
    params.require(:opinion).permit(:name, :description)
  end

end
