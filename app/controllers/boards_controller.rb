class BoardsController < InheritedResources::Base
  
  def index
    @boards = Board.all
    if(params[:sort] == "new")
      @boards = Board.where("created_at > ?", 3.days.ago)
      # where(created_at != updated_at)
    end
  end

end
