class UsCodeTitlesController < ApplicationController
  # GET /us_code_titles
  # GET /us_code_titles.xml
  def index
    @us_code_titles = UsCodeTitle.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @us_code_titles }
    end
  end

  # GET /us_code_titles/1
  # GET /us_code_titles/1.xml
  def show
    @us_code_title = UsCodeTitle.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @us_code_title }
    end
  end

  # GET /us_code_titles/new
  # GET /us_code_titles/new.xml
  def new
    @us_code_title = UsCodeTitle.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @us_code_title }
    end
  end

  # GET /us_code_titles/1/edit
  def edit
    @us_code_title = UsCodeTitle.find(params[:id])
  end

  # POST /us_code_titles
  # POST /us_code_titles.xml
  def create
    @us_code_title = UsCodeTitle.new(params[:us_code_title])

    respond_to do |format|
      if @us_code_title.save
        format.html { redirect_to(@us_code_title, :notice => 'Us code title was successfully created.') }
        format.xml  { render :xml => @us_code_title, :status => :created, :location => @us_code_title }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @us_code_title.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /us_code_titles/1
  # PUT /us_code_titles/1.xml
  def update
    @us_code_title = UsCodeTitle.find(params[:id])

    respond_to do |format|
      if @us_code_title.update_attributes(params[:us_code_title])
        format.html { redirect_to(@us_code_title, :notice => 'Us code title was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @us_code_title.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /us_code_titles/1
  # DELETE /us_code_titles/1.xml
  def destroy
    @us_code_title = UsCodeTitle.find(params[:id])
    @us_code_title.destroy

    respond_to do |format|
      format.html { redirect_to(us_code_titles_url) }
      format.xml  { head :ok }
    end
  end
end
