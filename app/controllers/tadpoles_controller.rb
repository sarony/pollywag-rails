class TadpolesController < ApplicationController
before_action :set_tadpole, only: [:show, :edit, :update, :destroy, :evolve]

  def index
    @tadpoles = Tadpole.all
  end

  def new
    @frog = Frog.find_by(:id => params[:id])
    @tadpole = Tadpole.new
  end

  def create
    @frog = Frog.find_by(:id => params[:id])
    @tadpole = Tadpole.new(tadpole_params)

    if @tadpole.save
      redirect_to @tadpole, notice: 'tadpole was successfully'
    else
      render action: 'new'
    end

  end

  def show
    @frog = Frog.find_by(:id => params[:id])
  end

  def edit
    @ponds = Pond.all
  end

  def update
    respond_to do |format|
      if @tadpole.update(tadpole_params)
        format.html { redirect_to @tadpole, notice: 'tadpole was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tadpole.errors, status: :unprocessable_entity }
      end    
    end
  end

  def destroy
    @tadpole.destroy
    respond_to do |format|
      format.html { redirect_to tadpoles_path }
      format.json { head :no_content }
    end
  end

  def evolve
    @frog = Frog.new(@tadpole.attributes.reject{|k, v| k == "id" || k == "frog_id" || k == "tadpoles"})
    @frog.pond = @tadpole.frog.pond
    @tadpole.destroy
        respond_to do |format|
      if @frog.save
        format.html { redirect_to @frog, notice: 'your tadpole has evolved.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @frog.errors, status: :unprocessable_entity }
      end    
    end
  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_tadpole
    @tadpole = Tadpole.find_by(id: params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def tadpole_params
    params.require(:tadpole).permit(:name, :frog_id, :color)
  end


end
