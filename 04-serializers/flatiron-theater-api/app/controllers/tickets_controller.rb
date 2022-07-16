class TicketsController < ApplicationController

# this is for practice => in your projects, please only create actions that your front end is requesting!!

#Review: Index Action
def index
  render json: Ticket.all
end
#Review: Show Action 

def show
  ticket = Ticket.find(params[:id])
  render json: ticket, serializer:TicketShowSerializer
end
#Review: Create action 
#Review: Update action  
#Review: Destroy action  

#Review: Strong params

end
