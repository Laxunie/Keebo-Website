class BoardsController < InheritedResources::Base
  
  def index
    @boards = Board.all
  end

end
