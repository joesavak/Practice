class ClientSessionsController < ApplicationController
  # GET /client_sessions
  # GET /client_sessions.xml
  def index
    @client_sessions = ClientSession.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @client_sessions }
    end
  end

  # GET /client_sessions/1
  # GET /client_sessions/1.xml
  def show
    @client_session = ClientSession.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client_session }
    end
  end

  # GET /client_sessions/new
  # GET /client_sessions/new.xml
  def new
    @client_session = ClientSession.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client_session }
    end
  end

  # GET /client_sessions/1/edit
  def edit
    @client_session = ClientSession.find(params[:id])
  end

  # POST /client_sessions
  # POST /client_sessions.xml
  def create
    @client_session = ClientSession.new(params[:client_session])

    respond_to do |format|
      if @client_session.save
        format.html { redirect_to(@client_session, :notice => 'Client session was successfully created.') }
        format.xml  { render :xml => @client_session, :status => :created, :location => @client_session }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /client_sessions/1
  # PUT /client_sessions/1.xml
  def update
    @client_session = ClientSession.find(params[:id])

    respond_to do |format|
      if @client_session.update_attributes(params[:client_session])
        format.html { redirect_to(@client_session, :notice => 'Client session was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client_session.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /client_sessions/1
  # DELETE /client_sessions/1.xml
  def destroy
    @client_session = ClientSession.find(params[:id])
    @client_session.destroy

    respond_to do |format|
      format.html { redirect_to(client_sessions_url) }
      format.xml  { head :ok }
    end
  end
end
