class EventosController < ApplicationController
  # GET /eventos
  # GET /eventos.xml
  def index
  	@tags = Tag.tags(:limit => 100, :order => "name desc")
    @eventos = Evento.find(:all)
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @eventos }
    end
  end

  # GET /eventos/1
  # GET /eventos/1.xml
  def show
    @evento = Evento.find(params[:id])
    @imagems = @evento.imagems.paginate :page => params[:page], :per_page => 5
    if params[:page] then
    	session[:page] = params[:page]
    else
    	session[:page] = 1
  	end
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @evento }
    end
  end
end
