class HelpController < ApplicationController

  def index
    # Nothing here right now ... just gonna be a splash/entry page
  end
  
  def new
    @ticket = Ticket.new
    if request.post?
      @ticket.update_attributes(params[:ticket])
      if @ticket.save
        # TODO: Loop through all users and send emails 
        redirect_to :action => :show, :key => @ticket.token
      end
    end
  end
  
  def create
    
  end
  
  def show
    @ticket = Ticket.find_by_token(params[:key])
  end

end
