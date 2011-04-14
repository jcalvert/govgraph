class MetropolisController < ApplicationController
  # GET /metropolis
  # GET /metropolis.xml
  def index
    @metropolis = Metropoli.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @metropolis }
    end
  end

  # GET /metropolis/1
  # GET /metropolis/1.xml
  def show
    @metropoli = Metropoli.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @metropoli }
    end
  end

  # GET /metropolis/new
  # GET /metropolis/new.xml
  def new
    @metropoli = Metropoli.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @metropoli }
    end
  end

  # GET /metropolis/1/edit
  def edit
    @metropoli = Metropoli.find(params[:id])
  end

  # POST /metropolis
  # POST /metropolis.xml
  def create
    @metropoli = Metropoli.new(params[:metropoli])

    respond_to do |format|
      if @metropoli.save
        format.html { redirect_to(@metropoli, :notice => 'Metropoli was successfully created.') }
        format.xml  { render :xml => @metropoli, :status => :created, :location => @metropoli }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @metropoli.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /metropolis/1
  # PUT /metropolis/1.xml
  def update
    @metropoli = Metropoli.find(params[:id])

    respond_to do |format|
      if @metropoli.update_attributes(params[:metropoli])
        format.html { redirect_to(@metropoli, :notice => 'Metropoli was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @metropoli.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /metropolis/1
  # DELETE /metropolis/1.xml
  def destroy
    @metropoli = Metropoli.find(params[:id])
    @metropoli.destroy

    respond_to do |format|
      format.html { redirect_to(metropolis_url) }
      format.xml  { head :ok }
    end
  end
end
