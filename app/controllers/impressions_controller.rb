class ImpressionsController < ApplicationController
  before_action :set_impression, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]
  before_action :set_liquor, only: [:new, :create]

  def show
  end

  def edit
  end

  def new
    @impression = @liquor.impressions.build
  end

  def create
    @impression = @liquor.impressions.build(impression_params)
    @impression.user = current_user

    if @impression.save
      redirect_to home_path , notice: '感想を登録しました。'
    else
      render :new
    end
  end

  def update
    if @impression.update(impression_params)
      redirect_to home_path, notice: '感想を更新しました。'
    else
      render :edit
    end
  end

  def destroy
    @impression.destroy
    redirect_to home_path, notice: '感想を削除しました。'
  end

  private
    def set_impression
      @impression = Impression.find(params[:id])
    end

    def impression_params
      params.require(:impression).permit(:brewery_id, :brand_id, :total_score, :note, :updated_seq, :updated_by, :updated_at, :image, :image_cache)
    end


    def set_liquor
      @liquor = Liquor.find(params[:liquor_id])
    end
end
