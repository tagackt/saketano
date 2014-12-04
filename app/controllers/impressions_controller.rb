class ImpressionsController < ApplicationController
  before_action :set_impression, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show]

  def show
  end

  def new
    @liquor = Liquor.find(params[:liquor_id])
    @impression = @liquor.impressions.build()
  end

  def edit
  end

  def create
    @impression = Impression.new(impression_params)
    @impression.user_id = current_user.id
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
      params.require(:impression).permit(:brewery_id, :brand_id, :liquor_id, :user_id, :total_score, :note, :updated_seq, :updated_by, :updated_at, :image, :image_cache)
    end
end
