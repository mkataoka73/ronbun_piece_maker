class ElementsController < ApplicationController
  def index
    @elements = Element.all
  end

  def new
    @element = Element.new
  end

  def create
    @element = Element.new(element_params)
    if @element.save
      flash[:success] = "Successfully created a new baby piece"
      redirect_to elements_url
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @element = Element.find(params[:id])
  end

  private
    def element_params
      params.require(:element).permit(
        :title, :citation, :source
      )
    end
end
