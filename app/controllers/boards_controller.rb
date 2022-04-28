class BoardsController < InheritedResources::Base
  
  def index
    @boards = Board.all.page(params[:page])
    @layouts = Layout.all

    if(params[:layout] == "All")
      @boards = Board.search(params[:search]).page(params[:page])
    elsif(params[:search].present?)
      @boards = Board.where(layout_id: params[:layout]).search(params[:search]).page(params[:page])
    end

    if(params[:sort] == "new")
      @boards = Board.where("created_at > ?", 3.days.ago)
    end
  end

end
