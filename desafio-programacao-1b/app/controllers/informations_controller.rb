class InformationsController < ApplicationController
  def index
    @information = Information.new
    @informations = Information.all.paginate(page: params[:page], per_page: 5).order('created_at DESC')
  end

  def create
    @information = Information.new(information_params)
    respond_to do |format|
      if @information.save
        format.html { redirect_to information_path(@information), notice: "Arquivo Gravado com sucesso" }
        format.json { render :show, status: :created, location: @information }
      else
        format.html { render :index }
        format.json { render json: @information.errors, status: :unprocessable_entity }
      end
    end
  end

  def show
    @information = Information.find(params[:id])
  end

  private

  def information_params
    params.require(:information).permit(:document)
  end
end
