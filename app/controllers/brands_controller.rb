class BrandsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def ajax_brand_list
    @brands = Brand.with_brewery.where("name_kana like '#{params[:search_text]}%'").order(:name_kana)
  end

  def new
    @brand = Brand.new
  end

  def create
    @brand = Brand.new(brand_params)
    if @brand.save
      redirect_to brands_url, notice: 'お酒の銘柄（ブランド）を登録しました。'
    else
      render :new
    end
  end

  private
    def brand_params
      params.require(:brand).permit(:name, :name_kana, :brewery_id, :updated_seq, :updated_by, :updated_at)
    end
end
