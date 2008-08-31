class TagsController < ApplicationController
		def index
			@tag = params[:id];
	  	@imagems = Imagem.find_tagged_with(@tag).paginate :page => params[:page], :per_page => 5
	  	@tags = Tag.tags(:limit => 100, :order => "name desc")
    	respond_to do |format|
      	format.html # index.html.erb
      	format.xml  { render :xml => @imagems }
    	end	  	
	  end
  def show
    @imagem = Imagem.find(params[:id])
    @evento = @imagem.evento
    @tag = params[:tag]
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @imagem }
    end
  end	    
end
