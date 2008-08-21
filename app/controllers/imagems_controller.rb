class ImagemsController < ApplicationController
	before_filter :load_evento
  # GET /imagems/1
  # GET /imagems/1.xml
  def show
    @imagem = @evento.imagems.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @imagem }
    end
  end
  def load_evento
  	@evento = Evento.find(params[:evento_id])
  end   
  def rate
    @imagem = @evento.imagems.find(params[:id])
    @imagem.add_rating Rating.new(:rating => params[:rating])
    #respond_to do |format|
		#	format.html { render(:partial => 'imagems/rating', :layout => false, :object => @imagem) }
		#end
	end    
end
