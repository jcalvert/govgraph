class TenuresController < ApplicationController
  # GET /tenures
  # GET /tenures.xml
  def index
    @tenures = Tenure.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tenures }
    end
  end

  # GET /tenures/1
  # GET /tenures/1.xml
  def show
    @tenure = Tenure.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tenure }
    end
  end

  # GET /tenures/new
  # GET /tenures/new.xml
  def new
    @tenure = Tenure.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tenure }
    end
  end

  # GET /tenures/1/edit
  def edit
    @tenure = Tenure.find(params[:id])
  end

  # POST /tenures
  # POST /tenures.xml
  def create
    @tenure = Tenure.new(params[:tenure])

    respond_to do |format|
      if @tenure.save
        format.html { redirect_to(@tenure, :notice => 'Tenure was successfully created.') }
        format.xml  { render :xml => @tenure, :status => :created, :location => @tenure }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tenure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tenures/1
  # PUT /tenures/1.xml
  def update
    @tenure = Tenure.find(params[:id])

    respond_to do |format|
      if @tenure.update_attributes(params[:tenure])
        format.html { redirect_to(@tenure, :notice => 'Tenure was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tenure.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tenures/1
  # DELETE /tenures/1.xml
  def destroy
    @tenure = Tenure.find(params[:id])
    @tenure.destroy

    respond_to do |format|
      format.html { redirect_to(tenures_url) }
      format.xml  { head :ok }
    end
  end
end
