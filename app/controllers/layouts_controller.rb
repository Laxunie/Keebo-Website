class LayoutsController < InheritedResources::Base

  def index
    @layouts = Layout.all
  end

  def show
    @layout = Layout.find(params[:id])
    @boards = @layout.boards
  end

end
