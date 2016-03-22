class DocsController < ApplicationController
  before_action :find_doc, only: [:show, :edit, :update, :destroy]

  def index
    @docs = Doc.all
  end

  def show

  end

  def new
    @doc = Doc.new
  end

  def create
    @doc = Doc.new(doc_params)
    #if the doc or doc.save, we want the doc to redirect us to the doc itself, else we want to render a new file
    if @doc.save
      redirect_to @doc
    else
      render 'new'
    end

  end

  def edit
  end

  def upated
  end

  def destroy
  end

  private

    def find_doc
      @doc = Doc.find(params[:id])
    end

    def doc_params
      params.require(:doc).permit(:title, :content)
    end

end
