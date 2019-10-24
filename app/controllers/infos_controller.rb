class Api::V1::InfosController < ApiController
  before_action :set_info, only: [:show, :update, :destroy]

  # GET /infos
  def index
    @infos = Info.all

    render json: InfoSerializer.new(@infos)
  end

  # GET /infos/1
  def show
    render json: InfoSerializer.new(@info)
  end

  # POST /infos
  # def create
  #   @info = Info.new(info_params)

  #   if @info.save
  #     render json: @info, status: :created, location: @info
  #   else
  #     render json: @info.errors, status: :unprocessable_entity
  #   end
  # end

  # PATCH/PUT /infos/1
  # def update
  #   if @info.update(info_params)
  #     render json: @info
  #   else
  #     render json: @info.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /infos/1
  # def destroy
  #   @info.destroy
  # end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_info
      @info = Info.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def info_params
      params.require(:info).permit(:title, :content, :placement)
    end
end
