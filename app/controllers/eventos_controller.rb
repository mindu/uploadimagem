class EventosController < ApplicationController
  # GET /eventos
  # GET /eventos.xml
  def index
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
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @evento }
    end
  end
end
