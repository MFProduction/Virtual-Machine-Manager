class PresetsController < ApplicationController
  def index
    @presets = Preset.all
  end

  def new
    @preset = Preset.new
  end

  def create
    @preset = Preset.new(preset_params)
    if @preset.save
      flash[:positive] = "#{params[:name]} preset was created"
      redirect_to presets_path
    else
      render :new
    end
  end

  private
    def preset_params
      params.require(:preset).permit(:name, :image_id, :flavor_id)
    end
end
