class FrogsController < ApplicationController
  before_action :set_frog, only: [:show, :edit, :update, :destroy]

  def index
    @frogs = Frog.all
  end

  def new
    @ponds = Pond.all
    @frog = Frog.new
  end

  def create
    @frog = Frog.new(frog_params)

    respond_to do |format|
      if @frog.save
        format.html { redirect_to @frog, notice: 'frog was successfully created.' }
        format.json { render action: 'show', status: :created, location: @frog }
      else
        format.html { render action: 'new' }
        format.json { render json: @frog.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @frog = Frog.find_by(:id => params[:id])
  end

  def edit
    @frog = Frog.find_by(:id => params[:id])
    @ponds = Pond.all
  end

  def update
    respond_to do |format|
      if @frog.update(frog_params)
        format.html { redirect_to @frog, notice: 'frog was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @frog.errors, status: :unprocessable_entity }
      end    
    end
  end

  def destroy
    @frog.destroy
       respond_to do |format|
      format.html { redirect_to frogs_url }
      format.json { head :no_content }
    end
  end

  private
      # Use callbacks to share common setup or constraints between actions.
    def set_frog
      @frog = Frog.find_by(id: params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def frog_params
      params.require(:frog).permit(:name, :pond_id, :color)
    end

end
