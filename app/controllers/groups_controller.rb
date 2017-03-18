class GroupsController < ApplicationController

  before_action :get_group_id, except: [:index, :new]


  def index
    @groups = Group.all
  end

  def show
    @drills = Drill.where(group: @group)
  end

  def new
    @group = Group.new
  end

  def create
    render plain: "Creation of Groups is Admin Only"
    # ***Uncomment once admin is defined***
    # group_params = params.require(:group).permit(:title)
    # @group = Group.new(group_params)
    # if @group.save
    #   redirect_to groups_path(@group), notice: "Group Created Successfully"
    # else
    #   render new_group_path, alert: "Group NOT Created Successfully"
    # end
  end

  def edit
    head :ok
  end

  def update
    render plain: "Editing of Groups is Admin Only"
    # ***Uncomment once admin is defined***
    # group_params = params.require(:group),permit(:title)
    # if @group.update(group_params)
    #   redirect_to groups_path(@group), notice: "Group Updated Successfully"
    # else
    #   render group_edit_path(@group), notice: "Group NOT Updated Successfully"
    # end
  end

  def destroy
    render plain: "Destroying Groups is Admin Only"
    # ***Uncomment once admin is defined***
    # if @group.destroy
    #   render groups_path, notice: "Group Successfully Destroyed"
    # else
    #   redirect_to groups_path(@group), alert: "Group NOT Destroyed Successfully"
    # end
  end


  private

  def get_group_id
    @group = Group.find params[:id]
  end
end