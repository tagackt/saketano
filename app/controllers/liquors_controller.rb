class LiquorsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_brand

  def index
    @liquors = @brand.liquors.with_category.order(:name)
  end

  def new
    @liquor = @brand.liquors.build
  end

  def create
    @liquor = @brand.liquors.build(liquor_params)

    if @liquor.save
      redirect_to brand_liquors_path, notice: 'お酒の名前（商品名）を登録しました。'
    else
      render :new
    end
  end

  private
    def liquor_params
      params.require(:liquor).permit(:name, :name_kana, :brewery_id, :brand_id, :category_id, :updated_seq, :updated_by, :updated_at)
    end

    def set_brand
      @brand = Brand.find(params[:brand_id])
    end
end
