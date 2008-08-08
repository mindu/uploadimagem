class Admin::ImagemsController < ApplicationController
	  before_filter :authenticate
  def authenticate
    authenticate_or_request_with_http_basic do |name, pass|
      name == 'demo' && pass == 'demo'      
    end
  end
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
	
	  # GET /imagems/new
  # GET /imagems/new.xml
  def new
    @imagem = Imagem.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @imagem }
    end
  end

  # GET /imagems/1/edit
  def edit
    @imagem = Imagem.find(params[:id])
  end

  # POST /imagems
  # POST /imagems.xml
  def create
    @imagem = Imagem.new(params[:imagem])

    respond_to do |format|
      if @imagem.save
        flash[:notice] = 'Imagem was successfully created.'
        format.html { redirect_to([:admin,@imagem]) }
        format.xml  { render :xml => @imagem, :status => :created, :location => @imagem }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @imagem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /imagems/1
  # PUT /imagems/1.xml
  def update
    @imagem = Imagem.find(params[:id])

    respond_to do |format|
      if @imagem.update_attributes(params[:imagem])
        flash[:notice] = 'Imagem was successfully updated.'
        format.html { redirect_to([:admin,@imagem]) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @imagem.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /imagems/1
  # DELETE /imagems/1.xml
  def destroy
    @imagem = Imagem.find(params[:id])
    @imagem.destroy

    respond_to do |format|
      format.html { redirect_to(admin_imagems_url) }
      format.xml  { head :ok }
    end
  end	
end
