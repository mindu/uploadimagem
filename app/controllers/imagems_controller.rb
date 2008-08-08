class ImagemsController < ApplicationController
  # GET /imagems
  # GET /imagems.xml
  def index
    @imagems = Imagem.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @imagems }
    end
  end

  # GET /imagems/1
  # GET /imagems/1.xml
  def show
    @imagem = Imagem.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @imagem }
    end
  end
end
